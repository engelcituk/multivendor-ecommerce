@extends('admin.layouts.app')

@section('contents')
    <div class="container-xl">
        <div class="card">
            <div class="card-header">
                <h3 class="card-title">Limpieza de la base de datos</h3>
            </div>
            <div class="card-body p-0">
                <div class="alert alert-important alert-warning" role="alert">
                    <div class="alert-icon">
                        <!-- Download SVG icon from http://tabler.io/icons/icon/alert-circle -->
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                            fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                            stroke-linejoin="round" class="icon alert-icon icon-2">
                            <path d="M3 12a9 9 0 1 0 18 0a9 9 0 0 0 -18 0"></path>
                            <path d="M12 8v4"></path>
                            <path d="M12 16h.01"></path>
                        </svg>
                    </div>
                    <div>
                        <h4 class="alert-heading">Advertencia:</h4>
                        <div class="alert-description">
                            <p>Esta acción borrará el contenido de la base de datos. Procede con precaución.</p>
                            <div>
                                <a href="" class="btn btn-danger wipe-database">Vaciar base de datos</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@push('scripts')
    <script>
        $(function() {
            $('.wipe-database').on('click', function(e) {
                e.preventDefault();
                Swal.fire({
                    title: "¿Estás seguro?",
                    text: "No podrás revertir esta acción.",
                    icon: "warning",
                    showCancelButton: true,
                    confirmButtonColor: "#3085d6",
                    cancelButtonColor: "#d33",
                    confirmButtonText: "Sí, eliminar"
                }).then((result) => {
                    if (result.isConfirmed) {
                        $.ajax({
                            url: "{{ route('admin.database-clear') }}",
                            method: 'POST',
                            data: {
                                _token: '{{ csrf_token() }}',
                            },
                            success: function(response) {
                                if (response.success) {
                                    notyf.success(response.message);
                                    location.reload();
                                }
                            },
                            error: function(xhr, status, error) {
                                if (xhr.responseJSON.error) {
                                    notyf.error(xhr.responseJSON.message);
                                }
                            }
                        })
                    }
                });
            })
        })
    </script>
@endpush
