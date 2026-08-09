@extends('admin.layouts.app')

@section('contents')
    <div class="container-xl">
        <div class="card">
            <div class="card-header">
                <h3 class="card-title">Todas las solicitudes KYC</h3>
                <div class="card-actions">
                    <a href="{{ url()->previous() }}" class="btn btn-primary btn-3">
                        <!-- Download SVG icon from http://tabler.io/icons/icon/plus -->
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                            fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                            stroke-linejoin="round" class="icon icon-2">
                            <path d="M12 5l0 14"></path>
                            <path d="M5 12l14 0"></path>
                        </svg>
                        Volver
                    </a>
                </div>
            </div>
            <div class="card-body p-0">
                <div class="table-responsive">
                    <table class="table table-vcenter card-table">
                        <tbody>
                            <tr>
                                <td>Nombre completo</td>
                                <td>{{ $kyc_request->full_name }}</td>
                            </tr>
                            <tr>
                                <td>Fecha de nacimiento</td>
                                <td>{{ $kyc_request->date_of_birth }}</td>
                            </tr>

                            <tr>
                                <td>Género</td>
                                <td>{{ $kyc_request->gender }}</td>
                            </tr>

                            <tr>
                                <td>Dirección completa</td>
                                <td>{{ $kyc_request->full_address }}</td>
                            </tr>

                            <tr>
                                <td>Tipo de documento</td>
                                <td>{{ $kyc_request->document_type }}</td>
                            </tr>

                            <tr>
                                <td>Copia digital del documento</td>
                                <td>
                                    <a class="btn btn-primary"
                                        href="{{ route('admin.kyc.download', $kyc_request) }}">Descargar</a>
                                </td>
                            </tr>

                            <tr>
                                <td>Estado</td>
                                @if ($kyc_request->status == 'pending')
                                    <td class="text-secondary"><span class="badge bg-warning-lt">Pendiente</span></td>
                                @elseif($kyc_request->status == 'approved')
                                    <td class="text-secondary"><span class="badge bg-success-lt">Aprobado</span></td>
                                @else
                                    <td class="text-secondary"><span class="badge bg-danger-lt">Rechazado</span></td>
                                @endif
                            </tr>

                            <tr>
                                <td>Cambiar estado</td>
                                <td>
                                   <form action="{{ route('admin.kyc.update', $kyc_request) }}" method="POST">
                                    @csrf
                                    @method('PUT')
                                     <div class="input-group">
                                        <select name="status" id="" class="form-control">
                                            <option value="pending">Pendiente</option>
                                            <option value="approved">Aprobado</option>
                                            <option value="rejected">Rechazado</option>
                                        </select>
                                        <button class="btn btn-primary" type="submit">Actualizar</button>
                                    </div>
                                   </form>
                                </td>
                            </tr>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
@endsection
