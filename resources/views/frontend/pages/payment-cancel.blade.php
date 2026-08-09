@extends('frontend.layouts.app')

@section('contents')

    <x-frontend.breadcrumb :items="[['label' => 'Home', 'url' => '/'], ['label' => 'Pago completado']]" />
    <div class="container mb-60 mt-55">
        <div class="text-center mt-100 mb-100">
            <i class="fa-solid fa-circle-xmark fa-10x text-danger"></i>
            <h1>Pago cancelado</h1>
            <p>Tu pago fue cancelado. Inténtalo de nuevo.</p>
            <a href="{{ route('cart.index') }}" class="btn btn-success mt-10">Ir al carrito</a>
        </div>
    </div>
@endsection

