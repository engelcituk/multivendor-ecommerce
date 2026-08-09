@extends('admin.layouts.app')

@section('contents')
    <div class="container-xl">
        <div class="card">
            <div class="card-header">
                <h3 class="card-title">Todas las páginas personalizadas</h3>
                <div class="card-actions">
                    <a href="{{ route('admin.custom-pages.create') }}" class="btn btn-primary">Crear página</a>
                </div>
            </div>
            <div class="card-body p-0">
                <div class="table-responsive">
                    <table class="table table-vcenter card-table">
                        <thead>
                            <tr>
                                <th>N.º</th>
                                <th>Nombre</th>
                                <th>Slug</th>
                                <th>Estado</th>
                                <th class="w-8"></th>
                            </tr>
                        </thead>
                        <tbody>
                            @forelse($pages as $page)
                                <tr>
                                    <td>{{ $loop->iteration }}</td>
                                    <td>{{ $page->title }}</td>
                                    <td>{{ $page->slug }}</td>
                                    @if ($page->is_active)
                                        <td class="text-secondary"><span class="badge bg-success-lt">Activo</span></td>
                                    @else
                                        <td class="text-secondary"><span class="badge bg-danger-lt">Inactivo</span></td>
                                    @endif
                                    <td>
                                        <a href="{{ route('admin.custom-pages.edit', $page) }}"><i class="ti ti-edit"></i></a>
                                        <a class="text-danger delete-item"
                                            href="{{ route('admin.custom-pages.destroy', $page) }}"><i
                                                class="ti ti-trash"></i></a>
                                    </td>
                                </tr>
                            @empty
                                <tr>
                                    <td colspan="9" class="text-center">No se encontraron páginas</td>
                                </tr>
                            @endforelse

                        </tbody>
                    </table>
                </div>
                <div class="card-footer">
                    {{ $pages->links() }}
                </div>
            </div>
        </div>
    </div>
@endsection
