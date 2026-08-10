<?php

namespace App\Http\Controllers;

use Illuminate\Support\Str;
use Symfony\Component\HttpFoundation\BinaryFileResponse;

class DocumentationController extends Controller
{
    public function __invoke(?string $path = null): BinaryFileResponse
    {
        $docsRoot = realpath(public_path('docs'));

        abort_unless($docsRoot !== false, 404, 'La documentación todavía no ha sido compilada.');

        $relativePath = trim($path ?? 'index', '/');
        $relativePath = $relativePath === '' ? 'index' : $relativePath;

        $candidates = [
            $relativePath,
            "{$relativePath}.html",
            "{$relativePath}/index.html",
        ];

        foreach ($candidates as $relativeCandidate) {
            $candidate = realpath($docsRoot.DIRECTORY_SEPARATOR.str_replace('/', DIRECTORY_SEPARATOR, $relativeCandidate));

            if ($candidate !== false
                && Str::startsWith($candidate, $docsRoot.DIRECTORY_SEPARATOR)
                && is_file($candidate)) {
                return response()->file($candidate);
            }
        }

        abort(404);
    }
}
