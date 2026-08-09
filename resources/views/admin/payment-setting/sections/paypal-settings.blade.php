@extends('admin.payment-setting.index')

@section('settings_contents')
    <div class="card-body">
        <h2 class="mb-4">Configuración de PayPal</h2>

        <form action="{{ route('admin.paypal-settings.store') }}" method="POST">
            @csrf
            @method('PUT')
            <div class="row g-3">
                <div class="col-md-6">
                    <div class="form-label">Estado de PayPal</div>
                     <select name="paypal_status" class="form-control" id="">
                        <option @selected(config('settings.paypal_status') == 'active') value="active">Activo</option>
                        <option @selected(config('settings.paypal_status') == 'inactive') value="inactive">Inactivo</option>
                    </select>
                    <x-input-error :messages="$errors->get('paypal_status')" class="mt-2" />
                </div>

                <div class="col-md-6">
                    <div class="form-label">Modo de PayPal</div>
                    <select name="paypal_mode" class="form-control" id="">
                        <option @selected(config('settings.paypal_mode') == 'sandbox') value="sandbox">Sybox</option>
                        <option @selected(config('settings.paypal_mode') == 'live') value="live">Publicado</option>
                    </select>
                    <x-input-error :messages="$errors->get('paypal_mode')" class="mt-2" />
                </div>

                <div class="col-md-6">
                    <div class="form-label">Moneda de PayPal</div>
                    <select name="paypal_currency" class="form-control select2" id="">
                        @foreach(config('currencies') as $key => $currency)
                        <option @selected(config('settings.paypal_currency') == $key) value="{{ $key }}">{{ $currency }}</option>
                        @endforeach
                    </select>
                    <x-input-error :messages="$errors->get('paypal_currency')" class="mt-2" />
                </div>


                <div class="col-md-6">
                    <div class="form-label">Tipo de cambio de PayPal</div>
                    <input type="text" class="form-control" value="{{ config('settings.paypal_rate') }}"
                        name="paypal_rate">
                    <x-input-error :messages="$errors->get('paypal_rate')" class="mt-2" />
                </div>

                <div class="col-md-6">
                    <div class="form-label">ID de cliente de PayPal</div>
                    <input type="text" class="form-control" value="{{ config('settings.paypal_client_id') }}"
                        name="paypal_client_id">
                    <x-input-error :messages="$errors->get('paypal_client_id')" class="mt-2" />
                </div>

                <div class="col-md-6">
                    <div class="form-label">Clave secreta de PayPal</div>
                    <input type="text" class="form-control" value="{{ config('settings.paypal_secret') }}"
                        name="paypal_secret">
                    <x-input-error :messages="$errors->get('paypal_secret')" class="mt-2" />
                </div>


            </div>
            <div class="btn-list justify-content-end mt-5">
                <button type="submit" class="btn btn-primary btn-2"> Enviar </button>
            </div>
        </form>

    </div>
@endsection
