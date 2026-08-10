<?php

namespace App\Traits;

use Illuminate\Http\UploadedFile;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\File;

trait FileUploadTrait
{
    public function uploadFile(UploadedFile $file, ?string $oldPath = null, ?string $path = 'uploads'): ?string
    {
        if (!$file->isValid()) {
            return null;
        }

        $ignorePaths = ['default/avatar.png', 'defaults/banner.png', 'defaults/shop.png'];
        $filepath = $this->storeOptimizedPublicImage($file, $path)
            ?? $file->storeAs($path, Str::uuid() . '.' . $file->getClientOriginalExtension(), 'public');

        if (!$filepath) {
            return null;
        }

        $normalizedOldPath = $oldPath ? ltrim($oldPath, '/') : null;
        if ($normalizedOldPath
            && File::exists(public_path($normalizedOldPath))
            && !in_array($normalizedOldPath, $ignorePaths, true)
            && $normalizedOldPath !== $filepath) {
            File::delete(public_path($normalizedOldPath));
        }

        return $filepath;
    }

    private function storeOptimizedPublicImage(UploadedFile $file, string $path): ?string
    {
        if (!function_exists('imagewebp')
            || !in_array($file->getMimeType(), ['image/jpeg', 'image/png', 'image/webp'], true)) {
            return null;
        }

        $source = @imagecreatefromstring((string) file_get_contents($file->getRealPath()));
        if (!$source) {
            return null;
        }

        $sourceWidth = imagesx($source);
        $sourceHeight = imagesy($source);
        $scale = min(1, 1920 / max($sourceWidth, $sourceHeight));
        $targetWidth = max(1, (int) round($sourceWidth * $scale));
        $targetHeight = max(1, (int) round($sourceHeight * $scale));

        $target = imagecreatetruecolor($targetWidth, $targetHeight);
        imagealphablending($target, false);
        imagesavealpha($target, true);
        $transparent = imagecolorallocatealpha($target, 0, 0, 0, 127);
        imagefilledrectangle($target, 0, 0, $targetWidth, $targetHeight, $transparent);
        imagecopyresampled(
            $target,
            $source,
            0,
            0,
            0,
            0,
            $targetWidth,
            $targetHeight,
            $sourceWidth,
            $sourceHeight
        );

        $directory = public_path($path);
        File::ensureDirectoryExists($directory);
        $filename = Str::uuid() . '.webp';
        $stored = imagewebp($target, $directory . DIRECTORY_SEPARATOR . $filename, 82);

        imagedestroy($target);
        imagedestroy($source);

        return $stored ? trim($path, '/') . '/' . $filename : null;
    }

    public function uploadPrivateFile(UploadedFile $file, ?string $oldPath = null, ?string $path = 'uploads'): ?string
    {
        if (!$file->isValid()) {
            return null;
        }

        // $ignorePath = ['/default/avatar.png'];

        // if ($oldPath && File::exists(public_path($oldPath)) && !in_array($oldPath, $ignorePath)) {
        //     File::delete(public_path($oldPath));
        // }

        $filename = Str::uuid() . '.' . $file->getClientOriginalExtension();

        $path = $file->storeAs($path, $filename, 'local');

        return $path;
    }


    function deleteFile(string $path) : bool
    {
        if (File::exists(public_path($path))) {
            File::delete(public_path($path));

            return true;
        }

        return false;

    }
}
