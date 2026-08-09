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
                                <div class="font-weight-medium">{{ config('settings.site_currency') }} {{ $currentBalance }}</div>
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
                                <div class="font-weight-medium">{{ config('settings.site_currency') }} {{ $pendingBalance }}</div>
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
                                <div class="font-weight-medium">{{ config('settings.site_currency') }} {{ $totalWithdraw }}</div>
                                <div class="text-secondary">Total retirado</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="card">
            <div class="card-header">
                <h3 class="card-title">Todas las solicitudes de retiro</h3>
                <div class="card-actions">
                    <a href="{{ route('vendor.withdraw-requests.create') }}" class="btn btn-primary">Agregar Withdraw
                        Request</a>
                </div>
            </div>

            <div class="card-body p-0">
                <div class="table-responsive">
                    <table class="table table-vcenter card-table">
                        <thead>
                            <tr>
                                <th>N.º</th>
                                <th>Importe</th>
                                <th>Método de pago</th>
                                <th>Detalles</th>
                                <th>Estado</th>
                                <th class="w-8"></th>
                            </tr>
                        </thead>
                        <tbody>
                            @forelse($withdrawRequests as $withdrawRequest)
                                <tr>
                                    <td>{{ $loop->iteration }}</td>
                                    <td>{{ config('settings.site_currency') }} {{ $withdrawRequest->amount }}</td>
                                    <td>{{ $withdrawRequest->payment_method }}</td>
                                    <td>
                                        @if ($withdrawRequest->status == 'pending')
                                            <span class="badge bg-warning-lt">Pendiente</span>
                                        @elseif($withdrawRequest->status == 'paid')
                                            <span class="badge bg-success-lt">Pagado</span>
                                        @else
                                            <span class="badge bg-danger-lt">Rechazado</span>
                                        @endif
                                    </td>
                                    <td>{{ date('Y-m-d', strtotime($withdrawRequest->created_at)) }}</td>
                                    <td>
                                        @if ($withdrawRequest->status == 'pending')
                                            <a class="text-danger delete-item"
                                                href="{{ route('vendor.withdraw-requests.destroy', $withdrawRequest) }}"><i
                                                    class="ti ti-trash"></i></a>
                                        @endif
                                    </td>
                                </tr>

                            @empty
                                <tr>
                                    <td colspan="9" class="text-center">No hay solicitudes de retiro</td>
                                </tr>
                            @endforelse

                        </tbody>
                    </table>
                </div>
                <div class="card-footer">
                    {{-- {{ $orders->links() }} --}}
                </div>
            </div>
        </div>
    </div>
@endsection
