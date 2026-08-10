<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;

class Category extends Model
{
    protected $fillable = [
        'name',
        'slug',
        'parent_id',
        'position',
        'is_active',
        'image',
        'icon',
        'is_featured'
    ];


    public function parent()
    {
        return $this->belongsTo(Category::class, 'parent_id');
    }

    public function children()
    {
        return $this->hasMany(Category::class, 'parent_id');
    }


    function allChildrenIds() : array
    {
        $ids = [];

        foreach($this->children as $child) {
            $ids[] = $child->id;

            $ids = array_merge($ids, $child->allChildrenIds());
        }

        return $ids;
    }



    static function getNested($parentId = null, $depth = 0, $maxDepth = 3)
    {
        if ($depth >= $maxDepth) {
            return collect();
        }

        $categoriesByParent = once(fn () => self::query()
            ->orderBy('position')
            ->get()
            ->groupBy(fn (Category $category) => $category->parent_id === null ? 'root' : (string) $category->parent_id));

        $buildTree = function ($currentParentId, $currentDepth) use (&$buildTree, $categoriesByParent, $maxDepth) {
            if ($currentDepth >= $maxDepth) {
                return collect();
            }

            $key = $currentParentId === null ? 'root' : (string) $currentParentId;

            return $categoriesByParent->get($key, collect())->map(function (Category $category) use (&$buildTree, $currentDepth) {
                $category->setAttribute('children_nested', $buildTree($category->id, $currentDepth + 1));

                return $category;
            });
        };

        return $buildTree($parentId, $depth);

    }

    function products() : BelongsToMany
    {
        return $this->belongsToMany(Product::class);
    }
}
