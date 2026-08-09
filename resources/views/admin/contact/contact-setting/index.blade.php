@extends('admin.layouts.app')

@section('contents')

    <div class="container-xl">
        <div class="card">
            <div class="card-header">
                <h3 class="card-title">Crear etiqueta</h3>
                <div class="card-actions">
                    <a href="{{ route('admin.tags.index') }}" class="btn btn-primary">Volver</a>
                </div>
            </div>
            <div class="card-body">
                <form action="{{ route('admin.contact-settings.store') }}" method="POST" class="tag-form">
                    @csrf
                    <div class="row">
                        <div class="col-md-12">
                            <div class="mb-3">
                                <label class="form-label">URL del mapa</label>
                                <input type="text" class="form-control" name="map_url" placeholder="" value="{{ $section?->map_url }}">
                                <x-input-error :messages="$errors->get('map_url')" class="mt-2" />
                            </div>
                        </div>
                        <hr>


                        <div class="col-md-12">
                            <div class="mb-3">
                                <label class="form-label">Título uno</label>
                                <input type="text" class="form-control" name="title_one" placeholder="" value="{{ $section?->title_one }}">
                                <x-input-error :messages="$errors->get('title_one')" class="mt-2" />
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="mb-3">
                                <label class="form-label">Dirección principal</label>
                                <input type="text" class="form-control" name="address_one" placeholder="" value="{{ $section?->address_one }}">
                                <x-input-error :messages="$errors->get('address_one')" class="mt-2" />
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="mb-3">
                                <label class="form-label">Correo electrónico principal</label>
                                <input type="text" class="form-control" name="email_one" placeholder="" value="{{ $section?->email_one }}">
                                <x-input-error :messages="$errors->get('email_one')" class="mt-2" />
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="mb-3">
                                <label class="form-label">Teléfono principal</label>
                                <input type="text" class="form-control" name="phone_one" placeholder="" value="{{ $section?->phone_one }}">
                                <x-input-error :messages="$errors->get('phone_one')" class="mt-2" />
                            </div>
                        </div>


                        <hr>

                        <div class="col-md-12">
                            <div class="mb-3">
                                <label class="form-label">Título dos</label>
                                <input type="text" class="form-control" name="title_two" placeholder="" value="{{ $section?->title_two }}">
                                <x-input-error :messages="$errors->get('title_two')" class="mt-2" />
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="mb-3">
                                <label class="form-label">Dirección secundaria</label>
                                <input type="text" class="form-control" name="address_two" placeholder="" value="{{ $section?->address_two }}">
                                <x-input-error :messages="$errors->get('address_two')" class="mt-2" />
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="mb-3">
                                <label class="form-label">Correo electrónico secundario</label>
                                <input type="text" class="form-control" name="email_two" placeholder="" value="{{ $section?->email_two }}">
                                <x-input-error :messages="$errors->get('email_two')" class="mt-2" />
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="mb-3">
                                <label class="form-label">Teléfono secundario</label>
                                <input type="text" class="form-control" name="phone_two" placeholder="" value="{{ $section?->phone_two }}">
                                <x-input-error :messages="$errors->get('phone_two')" class="mt-2" />
                            </div>
                        </div>


                        <hr>
                        <div class="col-md-12">
                            <div class="mb-3">
                                <label class="form-label">Título tres</label>
                                <input type="text" class="form-control" name="title_three" placeholder="" value="{{ $section?->title_three }}">
                                <x-input-error :messages="$errors->get('title_three')" class="mt-2" />
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="mb-3">
                                <label class="form-label">Dirección adicional</label>
                                <input type="text" class="form-control" name="address_three" placeholder=""
                                    value="{{ $section?->address_three }}">
                                <x-input-error :messages="$errors->get('address_three')" class="mt-2" />
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="mb-3">
                                <label class="form-label">Correo electrónico adicional</label>
                                <input type="text" class="form-control" name="email_three" placeholder=""
                                    value="{{ $section?->email_three }}">
                                <x-input-error :messages="$errors->get('email_three')" class="mt-2" />
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="mb-3">
                                <label class="form-label">Teléfono adicional</label>
                                <input type="text" class="form-control" name="phone_three" placeholder=""
                                    value="{{ $section?->phone_three }}">
                                <x-input-error :messages="$errors->get('phone_three')" class="mt-2" />
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="card-footer text-end">
                <button class="btn btn-primary mt-3" onclick="$('.tag-form').submit()">Actualizar</button>
            </div>
        </div>
    </div>
    </div>
@endsection
