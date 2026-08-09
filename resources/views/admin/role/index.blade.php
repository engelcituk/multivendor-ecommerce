@extends('admin.layouts.app')

@section('contents')
    <div class="container-xl">
        <div class="card">
            <div class="card-header">
                <h3 class="card-title">Todos los roles</h3>
                <div class="card-actions">
                    <a href="{{ route('admin.role.create') }}" class="btn btn-primary">Crear rol</a>
                </div>
            </div>
            <div class="card-body p-0">
                <div class="table-responsive">
                    <table class="table table-vcenter card-table">
                        <thead>
                            <tr>
                                <th>N.º</th>
                                <th>Nombre del rol</th>
                                <th>Permisos</th>
                                <th class="w-1"></th>
                            </tr>
                        </thead>
                        <tbody>
                            @forelse ($roles as $role)
                                <tr>
                                    <td>{{ $loop->iteration }}</td>
                                    <td>{{ $role->name }}</td>
                                    <td><span class="badge bg-primary-lt">{{ $role->permissions_count }}</span></td>
                                    <td>
                                        @if($role->name != 'Super Admin')
                                        <a href="{{ route('admin.role.edit', $role) }}">Editar</a>
                                        <a class="text-danger delete-item" href="{{ route('admin.role.destroy', $role) }}">Eliminar</a>
                                        @endif
                                    </td>
                                </tr>
                            @empty
                                <tr>
                                    <td colspan="4" class="text-center">No hay roles</td>
                                </tr>
                            @endforelse

                        </tbody>
                    </table>
                </div>
                <div class="card-footer">
                  </div>
            </div>
        </div>
    </div>
@endsection
