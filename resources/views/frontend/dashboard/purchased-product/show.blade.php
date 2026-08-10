@extends('frontend.dashboard.dashboard-app')

@section('dashboard_contents')
    <div class="tab-pane fade active show" id="orders" role="tabpanel" aria-labelledby="orders-tab">
        <div class="card">
            <div class="card-header p-0 d-print-none">
                <h3 class="mb-0">Tu producto comprado</h3>
            </div>
            <div class="card-body p-0">
                <div class="page-wrapper">
                    <!-- BEGIN PAGE HEADER -->
                    <div class="page-header d-print-none" aria-label="Encabezado de página">
                        <div class="container-xl">
                            <div class="row g-2 align-items-center">
                                <div class="col">

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
                                        <table class="order_table table m-0 mt-20">
                                            <tr>
                                                <td>Nombre del producto</td>
                                                <td>{{ $product->name }}</td>
                                            </tr>
                                            <tr>
                                                <td>Nombre de la tienda</td>
                                                <td>{{ $product->store->name }}</td>
                                            </tr>
                                        </table>

                                        <table class="order_table table m-0 mt-20">
                                            <thead>
                                                <tr>
                                                    <th>Nombre del archivo</th>
                                                    <th>Extensión</th>
                                                    <th>Tamaño</th>
                                                    <th>Acción</th>
                                                </tr>
                                            </thead>
                                            <tbody>

                                                    @foreach ($product->files as $file)
                                                        <tr>
                                                            <td>{{ $file->filename }}</td>
                                                            <td>{{ $file->extension }}</td>
                                                            <td>{{ calculateFileSize($file->size) }}</td>
                                                            <td><a href="{{ route('purchased.products.download', ['product' => $product->id, 'file' => $file->id]) }}">Descargar</a></td>

                                                        </tr>
                                                    @endforeach

                                            </tbody>

                                        </table>


                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- END PAGE BODY -->

                </div>
            </div>
        </div>
    </div>
@endsection
