@extends('admin.layouts.app')

@section('contents')
    <div class="container-xl">
        <div class="card">
            <div class="card-header">
                <h3 class="card-title">Crear cupón</h3>
                <div class="card-actions">
                    <a href="{{ route('admin.coupons.index') }}" class="btn btn-primary">Volver</a>
                </div>
            </div>
            <div class="card-body">
                <form action="{{ route('admin.coupons.store') }}" method="POST" class="coupon-form">
                    @csrf
                    <div class="row">
                        <div class="col-md-4">
                            <div class="mb-3">
                                <label class="form-label required">Código</label>
                                <input type="text" class="form-control" name="code" placeholder="" value="">
                                <x-input-error :messages="$errors->get('code')" class="mt-2" />
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="mb-3">
                                <label class="form-label required">Valor</label>
                                <input type="text" class="form-control" name="value" placeholder="" value="">
                                <x-input-error :messages="$errors->get('value')" class="mt-2" />
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="mb-3">
                                <label class="form-label required">Es porcentaje</label>
                                <select name="is_percent" id="" class="form-control">
                                    <option value="0">No</option>
                                    <option value="1">Sí</option>
                                </select>
                                <x-input-error :messages="$errors->get('is_percent')" class="mt-2" />
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="mb-3">
                                <label class="form-label required">Compra mínima</label>
                                <input type="text" class="form-control" name="minimum_spend" placeholder=""
                                    value="">
                                <x-input-error :messages="$errors->get('minimum_spend')" class="mt-2" />
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="mb-3">
                                <label class="form-label required">Compra máxima</label>
                                <input type="text" class="form-control" name="maximum_spend" placeholder=""
                                    value="">
                                <x-input-error :messages="$errors->get('maximum_spend')" class="mt-2" />
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="mb-3">
                                <label class="form-label required">Límite de uso por cupón</label>
                                <input type="text" class="form-control" name="usage_limit_per_coupon" placeholder=""
                                    value="">
                                <x-input-error :messages="$errors->get('usage_limit_per_coupon')" class="mt-2" />
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="mb-3">
                                <label class="form-label required">Límite de uso por cliente</label>
                                <input type="text" class="form-control" name="usage_limit_per_customer" placeholder=""
                                    value="">
                                <x-input-error :messages="$errors->get('usage_limit_per_customer')" class="mt-2" />
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="mb-3">
                                <label class="form-label required">Fecha de inicio</label>
                                <input type="text" class="form-control datepicker" name="start_date" placeholder=""
                                    value="">
                                <x-input-error :messages="$errors->get('start_date')" class="mt-2" />
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="mb-3">
                                <label class="form-label required">Fecha de finalización</label>
                                <input type="text" class="form-control datepicker" name="end_date" placeholder=""
                                    value="">
                                <x-input-error :messages="$errors->get('end_date')" class="mt-2" />
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="mb-2">
                                <label class="form-check form-switch form-switch-3">
                                    <input class="form-check-input" type="checkbox" checked="" name="is_active"
                                        id="status" value="1">
                                    <span class="form-check-label">Activo</span>
                                </label>
                            </div>
                        </div>
                    </div>


                </form>
            </div>
            <div class="card-footer text-end">
                <button class="btn btn-primary mt-3" onclick="$('.coupon-form').submit()">Crear</button>
            </div>
        </div>
    </div>
    </div>
@endsection
