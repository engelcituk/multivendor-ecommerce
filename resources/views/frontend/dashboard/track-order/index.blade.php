@extends('frontend.dashboard.dashboard-app')

@section('dashboard_contents')

    <div class="tab-pane fade active show" id="track-orders" role="tabpanel" aria-labelledby="track-orders-tab">
        <div class="card">
            <div class="card-header p-0">
                <h3 class="mb-0">Seguimiento de pedidos</h3>
            </div>
            <div class="card-body p-0 contact-from-area">
                <p>To track your order please enter your PedidoID in the box below y
                    press "Track" button. This was given to you on your receipt y in
                    the confirmation email you should have received.</p>
                <div class="row">
                    <div class="col-lg-8">
                        <form class="contact-form-style mt-30 mb-50" action="{{ route('track.order.index') }}"
                            method="GET">
                            <div class="input-style mb-20">
                                <label>ID del pedido</label>
                                <input name="order-id" placeholder="ID del pedido" type="text" />
                            </div>
                            <button class="btn" type="submit">Rastrear</button>
                        </form>
                    </div>
                </div>
                @if ($order)
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="wsus__track_header">
                                <div class="wsus__track_header_text">
                                    <div class="row">
                                        <div class="col-xl-3 col-sm-6 col-lg-3">
                                            <div class="wsus__track_header_single">
                                                <h5>Comprado por:</h5>
                                                <p>{{ $order->user->name }}</p>
                                            </div>
                                        </div>
                                        <div class="col-xl-3 col-sm-6 col-lg-3">
                                            <div class="wsus__track_header_single">
                                                <h5>Tienda:</h5>
                                                <p>{{ $order->store->name }}</p>
                                            </div>
                                        </div>
                                        <div class="col-xl-3 col-sm-6 col-lg-3">
                                            <div class="wsus__track_header_single">
                                                <h5>Estado:</h5>
                                                <p>{{ __('statuses.' . $order->order_status) }}</p>
                                            </div>
                                        </div>
                                        <div class="col-xl-3 col-sm-6 col-lg-3">
                                            <div class="wsus__track_header_single">
                                                <h5>seguimiento:</h5>
                                                <p>#{{ $order->id }}</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-12">
                            <ul class="pro_trckr">
                                @forelse($order->orderHistory as $orderHistory)
                                    <li class="check_mark">{{ __('statuses.' . $orderHistory->status) }}</li>
                                @empty
                                    <li class="check_mark">Pedido pendiente</li>
                                @endforelse
                            </ul>
                        </div>
                        <div class="col-12">
                            <div class="col-12">
                                <div class="track_pro_table">
                                    <div class="table-responsive">
                                        <table class="table table-transparent table-responsive">
                                            <thead>
                                                <tr>
                                                    <th class="text-center" style="width: 1%"></th>
                                                    <th>Producto</th>
                                                    <th class="text-center" style="width: 5%">Cant.</th>
                                                    <th class="text-end" style="width: 10%">Unit ({{ $order->currency }})
                                                    </th>
                                                    <th class="text-end" style="width: 10%">Importe ({{ $order->currency }})
                                                    </th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @php
                                                    $subtotal = 0;
                                                @endphp
                                                @foreach ($order->orderProducts as $orderProduct)
                                                    @php
                                                        $subtotal +=
                                                            $orderProduct->unit_price * $orderProduct->quantity;
                                                    @endphp
                                                    <tr>
                                                        <td class="text-center">{{ $loop->iteration }}</td>
                                                        <td>
                                                            <p class="strong mb-1">{{ $orderProduct->product->name }}</p>
                                                            <div class="text-secondary w-50 ">
                                                                {{ $orderProduct?->variant['name'] ?? '' }}</div>
                                                        </td>
                                                        <td class="text-center">{{ $orderProduct->quantity }}</td>
                                                        <td class="text-end">{{ $orderProduct->unit_price }}</td>
                                                        <td class="text-end">
                                                            {{ $orderProduct->unit_price * $orderProduct->quantity }}</td>
                                                    </tr>
                                                @endforeach

                                                <tr>
                                                    <td colspan="4" class="strong text-end">Subtotal</td>
                                                    <td class="text-end">{{ $subtotal }}</td>
                                                </tr>
                                                <tr>
                                                    <td colspan="4" class="strong text-end">Descuento</td>
                                                    <td class="text-end">{{ $order?->discount ?? 0 }}</td>
                                                </tr>
                                                <tr>
                                                    <td colspan="4" class="strong text-end">Envío</td>
                                                    <td class="text-end">{{ $order->shipping_charge ?? 0 }}</td>
                                                </tr>
                                                <tr>
                                                    <td colspan="4" class="font-weight-bold text-uppercase text-end">
                                                        Total
                                                        Importe</td>
                                                    <td class="font-weight-bold text-end">{{ $order->currency }}
                                                        {{ $order->total }}</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                @endif

            </div>
        </div>
    </div>
@endsection
