<?php

return $orderStatuses = [
    'pending'          => 'El pedido está pendiente de confirmación',
    'processing'       => 'El pedido fue confirmado y se están preparando los productos',
    'packed'           => 'Los productos fueron empacados y etiquetados',
    'shipped'          => 'El pedido fue entregado al servicio de paquetería',
    'in_transit'       => 'El pedido está en tránsito por la red de distribución',
    'out_for_delivery' => 'El repartidor va camino a la dirección de entrega',
    'delivered'        => 'El pedido fue entregado correctamente al cliente',
    'canceled'         => 'El pedido fue cancelado por el responsable',
];
