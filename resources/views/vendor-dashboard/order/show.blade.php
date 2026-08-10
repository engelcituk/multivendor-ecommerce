@extends('vendor-dashboard.layouts.app')

@section('contents')
    <div class="container-xl">
        <div class="card">
            <div class="card-header d-print-none">
                <h3 class="card-title">Detalles del pedido</h3>
                <div class="card-actions">
                    <a href="{{ route('vendor.orders.index') }}" class="btn btn-primary">Volver</a>
                </div>
            </div>
            <div class="card-body p-0">
                <div class="page-wrapper">
                    <!-- BEGIN PAGE HEADER -->
                    <div class="page-header d-print-none" aria-label="Encabezado de página">
                        <div class="container-xl">
                            <div class="row g-2 align-items-center">
                                <div class="col">
                                    <h2 class="page-title">Factura</h2>
                                </div>
                                <!-- Page title actions -->
                                <div class="col-auto ms-auto d-print-none">
                                    <button type="button" class="btn btn-primary" onclick="javascript:window.print();">
                                        <!-- Download SVG icon from http://tabler.io/icons/icon/printer -->
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                            viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                            stroke-linecap="round" stroke-linejoin="round" class="icon icon-1">
                                            <path
                                                d="M17 17h2a2 2 0 0 0 2 -2v-4a2 2 0 0 0 -2 -2h-14a2 2 0 0 0 -2 2v4a2 2 0 0 0 2 2h2">
                                            </path>
                                            <path d="M17 9v-4a2 2 0 0 0 -2 -2h-6a2 2 0 0 0 -2 2v4"></path>
                                            <path
                                                d="M7 13m0 2a2 2 0 0 1 2 -2h6a2 2 0 0 1 2 2v4a2 2 0 0 1 -2 2h-6a2 2 0 0 1 -2 -2z">
                                            </path>
                                        </svg>
                                        Imprimir factura
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- END PAGE HEADER -->
                    <!-- BEGIN PAGE BODY -->
                    <div class="page-body">
                        <div class="container-xl">
                            <div class="card card-lg">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-6">
                                            <p class="h3">Información de facturación</p>
                                            <address>
                                                @php
                                                    $billingInfo = $order->billing_info;
                                                    $shippingInfo = $order->shipping_info;
                                                @endphp
                                                {{ $billingInfo['first_name'] }} {{ $billingInfo['last_name'] }}
                                                <br>
                                                {{ $billingInfo['address'] }}, {{ $billingInfo['city'] }},
                                                {{ $billingInfo['state'] }} <br> {{ $billingInfo['country'] }}
                                                <br>
                                                {{ $billingInfo['email'] }}
                                                <br>
                                                {{ $billingInfo['phone'] }}
                                            </address>
                                        </div>
                                        <div class="col-6 text-end">
                                            <p class="h3">Información de envío</p>
                                            <address>
                                                @if ($shippingInfo)
                                                    {{ $shippingInfo['first_name'] }} {{ $shippingInfo['last_name'] }}
                                                    <br>
                                                    {{ $shippingInfo['address'] }}, {{ $shippingInfo['city'] }},
                                                    {{ $shippingInfo['state'] }} <br> {{ $shippingInfo['country'] }}
                                                    <br>
                                                    {{ $shippingInfo['email'] }}
                                                    <br>
                                                    {{ $shippingInfo['phone'] }}
                                                @else
                                                    {{ $billingInfo['first_name'] }} {{ $billingInfo['last_name'] }}
                                                    <br>
                                                    {{ $billingInfo['address'] }}, {{ $billingInfo['city'] }},
                                                    {{ $billingInfo['state'] }} <br> {{ $billingInfo['country'] }}
                                                    <br>
                                                    {{ $billingInfo['email'] }}
                                                    <br>
                                                    {{ $billingInfo['phone'] }}
                                                @endif  
                                            </address>
                                        </div>
                                        <div class="col-12 my-5">
                                            <h1>Factura #{{ $order->id }}</h1>
                                            <div class="d-flex gap-2 flex-column">
                                                <span>ID de transacción: {{ $order->transaction_id }}</span>
                                            <span>Método de pago: {{ $order->payment_method }}</span>
                                            <span>Fecha del pedido: {{ date('Y-m-d', strtotime($order->created_at)) }}</span>
                                            </div>
                                        </div>
                                    </div>
                                    <table class="table table-transparent table-responsive">
                                        <thead>
                                            <tr>
                                                <th class="text-center" style="width: 1%"></th>
                                                <th>Producto</th>
                                                <th class="text-center" style="width: 5%">Cant.</th>
                                                <th class="text-end" style="width: 10%">Unidad ({{ $order->currency }})</th>
                                                <th class="text-end" style="width: 10%">Importe ({{ $order->currency }})</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @php
                                                $subtotal = 0;
                                            @endphp
                                            @foreach($order->orderProducts as $orderProduct)
                                            @php
                                                $subtotal += $orderProduct->unit_price * $orderProduct->quantity;
                                            @endphp
                                            <tr>
                                                <td class="text-center">{{ $loop->iteration }}</td>
                                                <td>
                                                    <p class="strong mb-1">{{ $orderProduct->product->name }}</p>
                                                    <div class="text-secondary w-50 ">{{ $orderProduct?->variant['name'] ?? '' }}</div>
                                                </td>
                                                <td class="text-center">{{ $orderProduct->quantity }}</td>
                                                <td class="text-end">{{ $orderProduct->unit_price }}</td>
                                                <td class="text-end">{{ $orderProduct->unit_price * $orderProduct->quantity }}</td>
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
                                                <td colspan="4" class="font-weight-bold text-uppercase text-end">Importe total</td>
                                                <td class="font-weight-bold text-end">{{ $order->currency }} {{ $order->total }}</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <p class="text-secondary text-center mt-5">Gracias por comprar en Plazora.
                                        ¡Esperamos verte de nuevo!</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- END PAGE BODY -->


                    @if($order->order_status != 'shipped')
                    <div class="container-xl d-print-none">
                        <div class="card col-md-4 mb-5  ">
                        <div class="card-body">
                            <form action="{{ route('admin.orders.update', $order) }}" method="POST">
                                @csrf
                                <div class="form-group mb-2">
                                    <label for="">Estado del pedido</label>
                                    <select name="order_status" id="" class="form-control">
                                        @foreach(config('order_status') as $key => $status)
                                        @if(in_array($key, ['pending', 'processing', 'packed', 'shipped']))
                                        <option @selected($order->order_status == $key) value="{{ $key }}">{{ __('statuses.' . $key) }}</option>
                                        @endif
                                        @endforeach
                                    </select>
                                </div>
                                <button class="btn btn-primary" type="submit">Guardar </button>
                            </form>
                        </div>
                    </div>
                    </div>
                    @endif

                </div>
            </div>
        </div>
    </div>
@endsection
