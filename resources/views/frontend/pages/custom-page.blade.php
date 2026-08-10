@extends('frontend.layouts.app')

@section('title', $page->title . ' | ' . config('settings.site_name'))
@section('meta_description', \Illuminate\Support\Str::limit(strip_tags($page->content), 155))
@section('canonical', route('custom-page.index', $page->slug))

@section('contents')
    <x-frontend.breadcrumb :items="[['label' => 'Home', 'url' => '/'], ['label' => $page->title]]" />

    <div class="page-content pt-70">
        <div class="container">
            <div class="row mb-50">
                <h1>{{ $page->title }}</h1>
                <div>{!! $page->content !!}</div>
            </div>
        </div>
    </div>
@endsection
