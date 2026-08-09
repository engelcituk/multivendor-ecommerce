@extends('frontend.layouts.app')

@section('contents')
    <div class="container mb-60 mt-65">
        <div class="wsus__payment_area">
            <div class="row">
                <div class="col-12 col-xl-8 wow fadeInUp">
                    <h4>Seleccionar forma de pago </h4>
                    <div class="row mt-10">
                        <div class="col-6 col-md-4 col-lg-3 col-xl-3 wow fadeInUp">
                            <a href="{{ route('paypal.payment') }}" class="wsus__payment_method">
                                <img src="{{ asset('assets/frontend/dist/imgs/paypal.png') }}" alt="payment"
                                    class="img-fluid w-100">
                            </a>
                        </div>
                        <div class="col-6 col-md-4 col-lg-3 col-xl-3 wow fadeInUp">
                            <a href="{{ route('stripe.payment') }}" class="wsus__payment_method">
                                <img src="{{ asset('assets/frontend/dist/imgs/stripe.png') }}" alt="payment"
                                    class="img-fluid w-100">
                            </a>
                        </div>
                        <div class="col-6 col-md-4 col-lg-3 col-xl-3 wow fadeInUp">
                            <a href="{{ route('razorpay.redirect') }}" class="wsus__payment_method">
                                <img src="{{ asset('assets/frontend/dist/imgs/razorpay.png') }}" alt="payment"
                                    class="img-fluid w-100">
                            </a>
                        </div>

                    </div>
                </div>
                <div class="col-xl-4">
                    <div class="wsus__billing_summary">
                        <h4>Resumen de facturación</h4>
                        @foreach ($groupedCartItems as $key => $cartItems)
                            <h5 class="vendor_name">{{ $cartItems['store']->name }}</h5>
                            <ul class="wsus__billing_product">
                                @foreach ($cartItems['items'] as $cartItem)
                                    @php
                                        $price = $cartItem->product->getVariantOrProductPriceAndStock(
                                            $cartItem->variant_id,
                                        );
                                    @endphp
                                    <li>
                                        <a href="{{ route('products.show', $cartItem->product->slug) }}" class="img">
                                            <img src="{{ asset($cartItem->product?->primaryImage?->path) }}" alt="product"
                                                class="img-fluid w-100">
                                        </a>
                                        <div class="text cart-item-title">
                                            <a style="font-size: 16px; font-weight: 700;"
                                                href="{{ route('products.show', $cartItem->product->slug) }}">{{ truncate($cartItem->product->name) }}</a>

                                            <span>{{ $cartItem->product?->variants()->where('id', $cartItem->variant_id)->first()->name ?? '' }}</span>
                                            <h6>${{ $price['price'] }} x {{ $cartItem->quantity }}</h6>
                                        </div>
                                    </li>
                                @endforeach

                            </ul>
                        @endforeach

                        <div class="wsus__total_price">
                            @php
                                $cartSubTotal = cartTotal();
                                $cartDiscount = cartDiscount();
                            @endphp

                            <h3>Subtotal <span>$ {{ $cartSubTotal }}</span></h3>
                            <p>Costo de envío <span class="">$ <span
                                        class="shipping_charge">{{ $shippingCharge }}</span></span>
                            </p>
                            <p>Descuento <span>$ {{ $cartDiscount }}</span></p>
                        </div>
                        <h5>Total <span>$ <span
                                    class="grand_total">{{ $cartSubTotal + $shippingCharge - $cartDiscount }}</span></span>
                        </h5>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content rounded-0">
                    <div class="modal_payment_popup">
                        <p>From sleek racing flats to burly hiking boots, there are plenty of options to keep your
                            feet
                            comfortable during any activity. Read on to learn how to determine the right athletic
                            shoes
                            to
                            wear for whatever athletic pursuit you're embarking on.</p>

                        <ul class="modal_iteam">
                            <li>Contrario a la creencia popular, Lorem Ipsum no es un texto aleatorio.</li>
                            <li>Encuentra productos de calidad para cada momento.</li>
                            <li>Contrario a la creencia popular, Lorem Ipsum no es un texto aleatorio.</li>
                        </ul>
                        <form class="modal_form">
                            <div class="single_form">
                                <label>Escribe algo</label>
                                <input type="text" placeholder="Escribe algo">
                            </div>
                            <div class="single_form">
                                <label>Escribe algo</label>
                                <textarea rows="3" placeholder="Escribe algo"></textarea>
                            </div>
                        </form>
                        <div class="modal-footer">
                            <button type="button" class="modal_closs_btn btn hover-up"
                                data-bs-dismiss="modal">Cerrar</button>
                            <button type="button" class="btn hover-up">Enviar</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
