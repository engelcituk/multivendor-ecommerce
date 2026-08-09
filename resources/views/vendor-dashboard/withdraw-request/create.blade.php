@extends('vendor-dashboard.layouts.app')

@section('contents')
    <div class="container-xl">
        <div class="row mb-4">
            <div class="col-sm-6 col-lg-4">
                <div class="card card-sm">
                    <div class="card-body">
                        <div class="row align-items-center">
                            <div class="col-auto">
                                <span
                                    class="bg-success text-white avatar"><!-- Download SVG icon from http://tabler.io/icons/icon/currency-dollar -->
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                                        fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                        stroke-linejoin="round" class="icon icon-1">
                                        <path
                                            d="M16.7 8a3 3 0 0 0 -2.7 -2h-4a3 3 0 0 0 0 6h4a3 3 0 0 1 0 6h-4a3 3 0 0 1 -2.7 -2">
                                        </path>
                                        <path d="M12 3v3m0 12v3"></path>
                                    </svg></span>
                            </div>
                            <div class="col">
                                <div class="font-weight-medium">{{ config('settings.site_currency') }} {{ $currentBalance }}
                                </div>
                                <div class="text-secondary">Saldo actual</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-lg-4">
                <div class="card card-sm">
                    <div class="card-body">
                        <div class="row align-items-center">
                            <div class="col-auto">
                                <span
                                    class="bg-warning text-white avatar"><!-- Download SVG icon from http://tabler.io/icons/icon/currency-dollar -->
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                        viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                        stroke-linecap="round" stroke-linejoin="round" class="icon icon-1">
                                        <path
                                            d="M16.7 8a3 3 0 0 0 -2.7 -2h-4a3 3 0 0 0 0 6h4a3 3 0 0 1 0 6h-4a3 3 0 0 1 -2.7 -2">
                                        </path>
                                        <path d="M12 3v3m0 12v3"></path>
                                    </svg></span>
                            </div>
                            <div class="col">
                                <div class="font-weight-medium">{{ config('settings.site_currency') }} {{ $pendingBalance }}
                                </div>
                                <div class="text-secondary">Saldo pendiente</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-lg-4">
                <div class="card card-sm">
                    <div class="card-body">
                        <div class="row align-items-center">
                            <div class="col-auto">
                                <span
                                    class="bg-primary text-white avatar"><!-- Download SVG icon from http://tabler.io/icons/icon/currency-dollar -->
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                        viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                        stroke-linecap="round" stroke-linejoin="round" class="icon icon-1">
                                        <path
                                            d="M16.7 8a3 3 0 0 0 -2.7 -2h-4a3 3 0 0 0 0 6h4a3 3 0 0 1 0 6h-4a3 3 0 0 1 -2.7 -2">
                                        </path>
                                        <path d="M12 3v3m0 12v3"></path>
                                    </svg></span>
                            </div>
                            <div class="col">
                                <div class="font-weight-medium">{{ config('settings.site_currency') }} {{ $totalWithdraw }}
                                </div>
                                <div class="text-secondary">Total retirado</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="card">
            <div class="card-header">
                <h3 class="card-title">Crear solicitud de retiro</h3>
                <div class="card-actions">
                    <a href="{{ route('vendor.withdraw-requests.index') }}" class="btn btn-primary">Volver</a>
                </div>
            </div>
            <div class="card-body">
                <form action="{{ route('vendor.withdraw-requests.store') }}" method="POST" class="withdraw-method-form">
                    @csrf
                    <div class="row">
                        <div class="col-md-12">
                            <div class="mb-3">
                                <label class="form-label required">Importe del retiro</label>
                                <input type="text" class="form-control" name="amount" value="">
                                <x-input-error :messages="$errors->get('amount')" class="mt-2" />
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="mb-3">
                                <label class="form-label required">Método de retiro</label>
                                <select name="method" class="form-control">
                                    <option value="">Seleccionar pasarela</option>
                                    @foreach ($withdrawMethods as $method)
                                        <option value="{{ $method->id }}">{{ $method->withdrawMethod->name }}</option>
                                    @endforeach
                                </select>
                                <x-input-error :messages="$errors->get('method')" class="mt-2" />
                            </div>
                        </div>

                    </div>


                </form>
            </div>
            <div class="card-footer text-end">
                <button class="btn btn-primary mt-3" onclick="$('.withdraw-method-form').submit()">Crear</button>
            </div>
        </div>
    </div>
    </div>
@endsection
