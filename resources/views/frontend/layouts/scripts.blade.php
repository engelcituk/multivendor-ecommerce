<script>
    // notyf init
    var notyf = new Notyf({
        duration: 3000
    });

    function announce(message) {
        $('#ui-status').text(message || '');
    }

        $(function() {

            function handleErrors(errors) {
                if (errors?.message) {
                    notyf.error(errors.message);
                    announce(errors.message);
                } else if (errors?.errors) {
                    Object.values(errors.errors).forEach((err) => notyf.error(err[0]));
                } else {
                    notyf.error('Ocurrió un error. Inténtalo de nuevo.');
                    announce('Ocurrió un error. Inténtalo de nuevo.');
                }
            }


            $(document).on('click', '.add_to_cart', function(e) {
                e.preventDefault();
                var self = $(this);
                const productId = $(this).data('id');
                const quantity = $('.qty-val').val();
                const variantId = $(this).attr('data-variant');
                const modal = $(this).data('modal');
                const originalContent = self.html();


                $.ajax({
                    url: "{{ route('cart.add') }}",
                    method: "POST",
                    data: {
                        _token: "{{ csrf_token() }}",
                        product_id: productId,
                        quantity: quantity ?? 1,
                        variant_id: variantId,
                        modal: modal
                    },
                    beforeSend: function() {
                        self.attr({ 'aria-busy': 'true', 'aria-disabled': 'true' });
                        self.html(
                            '<span class="spinner-border spinner-border-sm" aria-hidden="true"></span><span class="visually-hidden">Agregando al carrito</span>'
                        );
                    },
                    success: function(response) {
                        if (response.show_modal) {
                            $('#quickViewModal').html(response.modal);
                            initVariantJs();

                            $('#quickViewModal').modal('show');
                        }

                        if (response.status == 'success' && !response.show_modal) {
                            $('.cart-count').html(response.cart_count);
                            notyf.success(response.message);
                            announce(response.message);
                        }
                    },
                    error: (errors) => handleErrors(errors.responseJSON),
                    complete: function() {
                        self.removeAttr('aria-busy aria-disabled').html(originalContent);
                    }
                })
            })


            function initVariantJs() {

                const variantsData = JSON.parse($('#variants-data').val());
                let selectedValues = new Set();


                $('.list-filter').each(function() {
                    $(this).find('a').on('click', function(event) {
                        event.preventDefault();
                        $(this).parent().siblings().removeClass('active');
                        $(this).parent().addClass('active');
                        $(this).parents('.attr-detail').find('.current-size').text($(this).text());
                        $(this).parents('.attr-detail').find('.current-color').text($(this).attr(
                            'data-color'));
                    });
                });

                $('.detail-qty').each(function() {
                    var qtyval = parseInt($(this).find(".qty-val").val(), 10);
                    var $qtyInput = $(this).find(".qty-val");

                    $(this).find('.qty-up').on('click', function(event) {
                        event.preventDefault();
                        qtyval = qtyval + 1;
                        $qtyInput.val(qtyval);
                    });

                    $(this).find(".qty-down").on("click", function(event) {
                        event.preventDefault(); /*  */
                        qtyval = Math.max(1, qtyval - 1);
                        $qtyInput.val(qtyval);
                    });
                });

                function selectDefaultVariant() {
                    if (variantsData.length > 0) {
                        const defaultVariant = variantsData[0];

                        defaultVariant.attribute_values.forEach(valueId => {
                            const $badge = $(`.attribute-badge[data-value="${valueId}"]`);
                            $badge.addClass('active');
                            selectedValues.add(valueId);
                        })
                    }

                    updatePrice();
                }

                //  $('.attribute-badge').on('click', function() {

                //  })

                $(document).on('click', '.attribute-badge', function() {
                    const $attributeGroup = $(this).closest('.attribute-group');

                    selectedValues = new Set(
                        $('.attribute-badge.active').map(function() {
                            return parseInt($(this).attr('data-value'));
                        }).get()
                    );

                    updatePrice();
                })

                function updatePrice() {
                    const selectedValuesArray = Array.from(selectedValues);

                    const matchingVariant = variantsData.find(variant => {
                        const variantValues = new Set(variant.attribute_values);
                        return selectedValuesArray.length === variantValues.size && selectedValuesArray
                            .every(
                                value => variantValues.has(value));
                    })

                    if (matchingVariant) {

                        $('.button-add-to-cart').attr('data-variant', matchingVariant.id);


                        if (matchingVariant.quantity > 0 && matchingVariant.manage_stock == 1) {
                            $('.stock-qty').text(matchingVariant.quantity);
                        } else if (matchingVariant.manage_stock == 0 && matchingVariant.in_stock == 1) {
                            $('.stock-qty').text('Ilimitado');
                        } else {
                            $('.stock-qty').text('0');
                        }

                        $('.sku').text(matchingVariant.sku);


                        if (matchingVariant.in_stock == 0 || matchingVariant.in_stock == null || matchingVariant
                            .quantity < 1 && matchingVariant.manage_stock == 1) {
                            html = `<div class="product-price modal-price primary-color float-left">
                            <span class="current-price text-brand">Agotado</span>
                        </div>`

                            $('.modal-price').replaceWith(html);

                            return;
                        }

                        if (matchingVariant.special_price > 0) {
                            var html = `
                        <div class="product-price modal-price primary-color float-left">
                                <span class="current-price text-brand">$${matchingVariant.special_price}</span>
                                    <span>
                                        <span class="old-price font-md ml-15">$${matchingVariant.price}</span>
                                    </span>
                        </div>
                        `
                        } else {
                            var html = `
                        <div class="product-price modal-price primary-color float-left">
                            <span class="current-price text-brand">$${matchingVariant.price}</span>
                        </div>
                        `
                        }

                        $('.modal-price').replaceWith(html);
                    }

                }

                selectDefaultVariant();
            }
        })

    $(function() {
        $('.wishlist-btn').on('click', function(e) {
            e.preventDefault();
            let productId = $(this).data('id');
            let element = $(this);
            const originalLabel = element.attr('aria-label');

            $.ajax({
                url: "{{ route('wishlist.store') }}",
                method: "POST",
                data: {
                    _token: "{{ csrf_token() }}",
                    product_id: productId
                },
                beforeSend: function() {
                    element.attr({ 'aria-busy': 'true', 'aria-disabled': 'true' });
                    element.html(
                        `<span class="spinner-border spinner-border-sm" aria-hidden="true"></span><span class="visually-hidden">Actualizando favoritos</span>`
                    );
                },
                success: function(response) {
                    if (response.type && response.type === 'add') {
                        element.html(`<i class="fi fi-ss-heart"></i>`);
                    } else {
                        element.html(`<i class="fi-rs-heart"></i>`);
                    }

                    notyf.success(response.message);
                    announce(response.message);
                    element.removeAttr('aria-busy aria-disabled').attr('aria-label', originalLabel);
                },
                error: function(xhr, status, error) {
                    let errors = xhr.responseJSON;
                    if (errors) {
                        Object.values(errors).forEach(function(message) {

                            notyf.error(message);
                        });
                    } else {
                        notyf.error("Ocurrió un error. Inténtalo de nuevo.");
                    }
                    element.html(`<i class="fi fi-rs-heart"></i>`);
                    element.removeAttr('aria-busy aria-disabled').attr('aria-label', originalLabel);
                }
            })
        })


        // subscribe form
        $('.form-subcriber').on('submit', function(e) {
            e.preventDefault();
            const form = $(this);
            const button = form.find('button[type="submit"]');
            const originalText = button.text();
            let data = form.serialize();

            $.ajax({
                url: "{{ route('newsletter.subscribe') }}",
                method: "POST",
                data: data,
                beforeSend: function() {
                    button.prop('disabled', true).attr('aria-busy', 'true').text('Enviando...');
                },
                success: function(response) {
                    notyf.success(response.message);
                    announce(response.message);
                    form[0].reset();
                },
                error: function(xhr, status, error) {
                    let errors = xhr.responseJSON.errors;
                    if (errors) {
                        Object.values(errors).forEach(function(message) {

                            notyf.error(message[0]);
                        });
                    } else {
                        notyf.error("Ocurrió un error. Inténtalo de nuevo.");
                    }
                },
                complete: function() {
                    button.prop('disabled', false).removeAttr('aria-busy').text(originalText);
                }
            })
        })
    })
</script>
