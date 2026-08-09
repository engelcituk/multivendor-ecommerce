@extends('admin.layouts.app')

@section('contents')
    <div class="container-xl">
        <div class="card">
            <div class="card-header">
                <h3 class="card-title">Crear característica</h3>
                <div class="card-actions">
                    <a href="{{ route('admin.our-features.index') }}" class="btn btn-primary">Volver</a>
                </div>
            </div>
            <div class="card-body">
                <form action="{{ route('admin.our-features.update', $our_feature) }}" method="POST" enctype="multipart/form-data" class="brand-form">
                    @csrf
                    @method('PUT')
                    <div class="row">
                        <div class="col-md-3">
                            <div class="mb-3">
                                <label for="" class="mb-2 form-label">Ícono</label>
                                <x-input-image imageUploadId="image-upload" imagePreviewId="image-preview"
                                    imageLabelId="image-label" name="icon" :image="asset($our_feature->icon)" />
                                <x-input-error :messages="$errors->get('icon')" class="mt-2" />
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="mb-3">
                                <label class="form-label required">Título</label>
                                <input type="text" class="form-control" name="title" placeholder="" value="{{ $our_feature->title }}">
                                <x-input-error :messages="$errors->get('title')" class="mt-2" />
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="mb-3">
                                <label class="form-label required">Subtítulo</label>
                                <input type="text" class="form-control" name="subtitle" placeholder="" value="{{ $our_feature->subtitle }}">
                                <x-input-error :messages="$errors->get('subtitle')" class="mt-2" />
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="mb-2">
                                <label class="form-check form-switch form-switch-3">
                                    <input class="form-check-input" type="checkbox" value="1" @checked($our_feature->status) name="status"
                                        id="status">
                                    <span class="form-check-label">Activo</span>
                                </label>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="card-footer text-end">
                <button class="btn btn-primary mt-3" onclick="$('.brand-form').submit()">Actualizar</button>
            </div>
        </div>
    </div>
    </div>
@endsection

@push('scripts')
    <script>
        $(document).ready(function() {
            $.uploadPreview({
                input_field: "#image-upload", // Default: .image-upload
                preview_box: "#image-preview", // Default: .image-preview
                label_field: "#image-label", // Default: .image-label
                label_default: "Elegir archivo", // Default: Elegir archivo
                label_selected: "Cambiar archivo", // Default: Cambiar archivo
                no_label: false // Default: false
            });
        });
    </script>
@endpush
