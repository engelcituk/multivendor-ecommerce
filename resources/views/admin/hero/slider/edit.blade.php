@extends('admin.layouts.app')

@section('contents')
    <div class="container-xl">
        <div class="card">
            <div class="card-header">
                <h3 class="card-title">Actualizar carrusel</h3>
                <div class="card-actions">
                    <a href="{{ route('admin.sliders.index') }}" class="btn btn-primary">Volver</a>
                </div>
            </div>
            <div class="card-body">
                <form action="{{ route('admin.sliders.update', $slider) }}" method="POST" class="coupon-form" enctype="multipart/form-data">
                    @csrf
                    @method('PUT')
                    <div class="row">

                        <div class="col-md-12">
                            <div class="mb-3">
                                <x-input-image imageUploadId="image-upload" imagePreviewId="image-preview"
                                    imageLabelId="image-label" name="image" :image="asset($slider->image)" />
                                <x-input-error :messages="$errors->get('image')" class="mt-2" />
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="mb-3">
                                <label class="form-label required">Título</label>
                                <input type="text" class="form-control" name="title" placeholder="" value="{{ $slider->title }}">
                                <x-input-error :messages="$errors->get('title')" class="mt-2" />
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="mb-3">
                                <label class="form-label required">Subtítulo</label>
                                <input type="text" class="form-control" name="sub_title" placeholder="" value="{{ $slider->sub_title }}">
                                <x-input-error :messages="$errors->get('sub_title')" class="mt-2" />
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="mb-3">
                                <label class="form-label required">URL del botón de acción</label>
                                <input type="text" class="form-control" name="btn_url" placeholder="" value="{{ $slider->btn_url }}">
                                <x-input-error :messages="$errors->get('btn_url')" class="mt-2" />
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="mb-2">
                                <label class="form-check form-switch form-switch-3">
                                    <input class="form-check-input" type="checkbox" @checked($slider->is_active) name="status"
                                        id="status">
                                    <span class="form-check-label">Activo</span>
                                </label>
                            </div>
                        </div>

                    </div>


                </form>
            </div>
            <div class="card-footer text-end">
                <button class="btn btn-primary mt-3" onclick="$('.coupon-form').submit()">Actualizar</button>
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
