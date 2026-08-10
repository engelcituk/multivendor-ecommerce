@extends('frontend.layouts.app')

@section('contents')

    <x-frontend.breadcrumb :items="[['label' => 'Inicio', 'url' => '/'], ['label' => 'Pago completado']]" />
    <div class="container mb-60 mt-55">
        <div class="text-center mt-100 mb-100">
            <i class="fa-solid fa-circle-check fa-10x text-success"></i>
            <h1>Pago completado</h1>
            <p>Tu pago se completó correctamente.</p>
            <a href="{{ route('dashboard') }}" class="btn btn-success mt-10">Ir al panel</a>
        </div>
    </div>
@endsection
