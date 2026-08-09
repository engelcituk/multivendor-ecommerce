@extends('frontend.layouts.app')

@section('contents')
    <x-frontend.breadcrumb :items="[['label' => 'Home', 'url' => '/'], ['label' => 'Iniciar sesión']]" />

    <div class="page-content pt-150 pb-135">
        <div class="container">
            <div class="row">
                <div class="col-xl-8 col-lg-10 col-md-12 m-auto">
                    <div class="row">
                        <div class="col-lg-6 col-md-8 offset-lg-3">
                            <x-auth-session-status class="mb-4" :status="session('status')" />

                            <div class="login_wrap widget-taber-content background-white">
                                <div class="padding_eight_all bg-white">
                                    <div class="heading_s1 mb-4">
                                        <h4 class="mb-5">Verificación KYC</h4>
                                    </div>
                                    <form method="post" action="{{ route('kyc.store') }}" enctype="multipart/form-data">
                                        @csrf
                                        <div class="form-group">
                                            <label for="" class="font-weight-bold">Nombre completo <span
                                                    class="text-danger">*</span></label>
                                            <input type="text" required="" name="full_name"
                                                placeholder="" />
                                            <x-input-error :messages="$errors->get('full_name')" class="mt-2" />
                                        </div>


                                        <div class="form-group">
                                            <label for="" class="font-weight-bold">Fecha de nacimiento <span
                                                    class="text-danger">*</span></label>
                                            <input type="text" required="" name="date_of_birth"
                                                placeholder="1990/7/9" class="datepicker" />
                                            <x-input-error :messages="$errors->get('date_of_birth')" class="mt-2" />
                                        </div>

                                        <div class="form-group">
                                            <label for="" class="font-weight-bold">Género <span
                                                    class="text-danger">*</span></label>
                                            <select name="gender" id="" class="form-control">
                                                <option value="">Seleccionar</option>
                                                <option value="male">Hombre</option>
                                                <option value="female">Mujer</option>
                                            </select>
                                            <x-input-error :messages="$errors->get('gender')" class="mt-2" />
                                        </div>

                                        <div class="form-group">
                                            <label for="" class="font-weight-bold">Dirección completa <span
                                                    class="text-danger">*</span></label>
                                            <input type="text" required="" name="full_address"
                                                placeholder="" />
                                            <x-input-error :messages="$errors->get('full_address')" class="mt-2" />
                                        </div>

                                        <div class="form-group">
                                            <label for="" class="font-weight-bold">Tipo de documento <span
                                                    class="text-danger">*</span></label>
                                            <select name="document_type" id="" class="form-control">
                                                <option value="">Seleccionar</option>
                                                <option value="id_card">Identificación oficial</option>
                                                <option value="passport">Pasaporte</option>
                                                <option value="driving_license">Licencia de conducir</option>
                                            </select>
                                            <x-input-error :messages="$errors->get('document_type')" class="mt-2" />
                                        </div>

                                        <div class="form-group">
                                            <label for="" class="font-weight-bold">Copia digital del documento <span
                                                    class="text-danger">*</span></label>

                                            <input type="file" required="" name="document_scan_copy" />
                                            <x-input-error :messages="$errors->get('document_scan_copy')" class="mt-2" />
                                        </div>

                                        <div class="form-group">
                                            <button type="submit" class="btn btn-heading btn-block hover-up"
                                                name="">Enviar</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
