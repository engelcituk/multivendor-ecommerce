@extends('admin.layouts.app')

@section('contents')
    <div class="container-xl">
        <div class="card">
            <div class="card-header">
                <h3 class="card-title">Crear método</h3>
                <div class="card-actions">
                    <a href="{{ route('admin.withdraw-methods.index') }}" class="btn btn-primary">Volver</a>
                </div>
            </div>
            <div class="card-body">
                <form action="{{ route('admin.withdraw-methods.update', $withdrawMethod) }}" method="POST" class="withdraw-method-form">
                    @csrf
                    @method('PUT')
                    <div class="row">
                        <div class="col-md-12">
                            <div class="mb-3">
                                <label class="form-label required">Nombre</label>
                                <input type="text" class="form-control" name="name" placeholder="" value="{{ $withdrawMethod->name }}">
                                <x-input-error :messages="$errors->get('name')" class="mt-2" />
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="mb-3">
                                <label class="form-label required">Importe mínimo</label>
                                <input type="text" class="form-control" name="minimum_amount" placeholder="" value="{{ $withdrawMethod->minimum_amount }}">
                                <x-input-error :messages="$errors->get('minimum_amount')" class="mt-2" />
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="mb-3">
                                <label class="form-label required">Importe máximo</label>
                                <input type="text" class="form-control" name="maximum_amount" placeholder="" value="{{ $withdrawMethod->maximum_amount }}">
                                <x-input-error :messages="$errors->get('maximum_amount')" class="mt-2" />
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="mb-3">
                                <label class="form-label required">Instrucciones</label>
                                <textarea name="instruction" id="editor">{!! $withdrawMethod->instruction !!}</textarea>
                                <x-input-error :messages="$errors->get('instruction')" class="mt-2" />
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="mb-2">
                                <label class="form-check form-switch form-switch-3">
                                    <input class="form-check-input" type="checkbox" @checked($withdrawMethod->is_active) name="is_active"
                                        id="is_active" value="1">
                                    <span class="form-check-label">Activo</span>
                                </label>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="card-footer text-end">
                <button class="btn btn-primary mt-3" onclick="$('.withdraw-method-form').submit()">Actualizar</button>
            </div>
        </div>
    </div>
    </div>
@endsection
