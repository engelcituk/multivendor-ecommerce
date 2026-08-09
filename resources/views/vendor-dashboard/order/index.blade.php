@extends('vendor-dashboard.layouts.app')

@section('contents')
    <div class="container-xl">
        <div class="card">
            <div class="card-header">
                <h3 class="card-title">Todos los pedidos</h3>
            </div>
            <div class="card-body p-0">
                <div class="table-responsive">
                    <table class="table table-vcenter card-table">
                        <thead>
                            <tr>
                                <th>ID del pedido</th>
                                <th>Usuario</th>
                                <th>Importe</th>
                                <th>Estado del pago</th>
                                <th>Estado</th>
                                <th>Fecha de creación</th>
                                <th class="w-8"></th>
                            </tr>
                        </thead>
                        <tbody>
                            @forelse($orders as $order)
                                <tr>
                                    <td>#{{ $order->id }}</td>
                                    <td>
                                        <div>
                                            {{ $order->user?->name }}
                                        </div>
                                        <div>
                                            {{ $order->user?->email }}
                                        </div>
                                        <div>
                                            {{ $order->user?->phone }}
                                        </div>
                                    </td>

                                    <td>
                                        {{ $order->currency }} {{ $order->total }}
                                    </td>
                                    <td>
                                        @if ($order->payment_status == 'paid')
                                            <span class="badge bg-success-lt">Pagado</span>
                                        @elseif($order->payment_status == 'pending')
                                            <span class="badge bg-warning-lt">Pendiente</span>
                                        @else
                                            <span class="badge bg-danger-lt">Fallido</span>
                                        @endif
                                    </td>
                                    <td>
                                        <span class="badge bg-info-lt">{{ __('statuses.' . $order->order_status) }}</span>
                                    </td>
                                    <td>
                                        {{ date('Y-m-d', strtotime($order->created_at)) }}
                                    </td>
                                    <td>
                                        <a href="{{ route('vendor.orders.show', $order) }}"
                                            class="btn btn-sm btn-primary"><i class="ti ti-eye"></i></a>
                                    </td>
                                </tr>
                            @empty
                                <tr>
                                    <td colspan="9" class="text-center">No hay pedidos</td>
                                </tr>
                            @endforelse

                        </tbody>
                    </table>
                </div>
                <div class="card-footer">
                    {{ $orders->links() }}
                </div>
            </div>
        </div>
    </div>
@endsection
