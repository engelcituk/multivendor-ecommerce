@extends('frontend.dashboard.dashboard-app')

@section('dashboard_contents')
    <div class="wsus__shipping_address mb_40">
        <h4>Actualizar Dirección
            <a href="{{ route('address.index') }}" class="btn btn-primary">Volver</a>
        </h4>

        <div class=" login_form" id="loginform">
            <div class="panel-body">
                <form action="{{ route('address.update', $address) }}" method="POST">
                    @csrf
                    @method('PUT')
                    <div class="row mt-20">
                        <div class="col-md-6">
                            <div class="form-group">
                                <input type="text" placeholder="Nombre" name="first_name" value="{{ $address->first_name }}">
                                <x-input-error :messages="$errors->get('first_name')" class="mt-2" />
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <input type="text" placeholder="Apellidos" name="last_name" value="{{ $address->last_name }}">

                                <x-input-error :messages="$errors->get('last_name')" class="mt-2" />
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <input type="text" placeholder="Teléfono" name="phone" value="{{ $address->phone }}">
                                <x-input-error :messages="$errors->get('phone')" class="mt-2" />
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                <input type="text" placeholder="Correo electrónico" name="email" value="{{ $address->email }}">
                                <x-input-error :messages="$errors->get('email')" class="mt-2" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <input type="text" placeholder="Ciudad" name="city" value="{{ $address->city }}">
                                <x-input-error :messages="$errors->get('city')" class="mt-2" />
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <input type="text" placeholder="Estado" name="state" value="{{ $address->state }}">
                                <x-input-error :messages="$errors->get('state')" class="mt-2" />
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <input type="text" placeholder="Código postal" name="zip" value="{{ $address->zip }}">
                                <x-input-error :messages="$errors->get('zip')" class="mt-2" />
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <select name="country" class="form-control select-active" id="">
                                    <option value="">País</option>
                                    @foreach (config('countries') as $country)
                                        <option @selected($address->country == $country) value="{{ $country }}">{{ $country }}</option>
                                    @endforeach
                                </select>
                                <x-input-error :messages="$errors->get('country')" class="mt-2" />
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <input type="text" placeholder="Dirección" name="address" value="{{ $address->address }}">
                                <x-input-error :messages="$errors->get('address')" class="mt-2" />
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <select name="is_default" class="form-control">
                                    <option value="">Es predeterminada</option>
                                    <option @selected($address->is_default == 0) value="0">No</option>
                                    <option @selected($address->is_default == 1) value="1">Sí</option>
                                </select>
                                <x-input-error :messages="$errors->get('is_default')" class="mt-2" />
                            </div>
                        </div>

                    </div>
                    <div class="form-group mb-0">
                        <button class="btn btn-md">Guardar</button>
                    </div>
                </form>
            </div>
        </div>

    </div>
@endsection
