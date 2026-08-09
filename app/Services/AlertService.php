<?php
namespace App\Services;

class AlertService
{
    public static function updated($message = null)
    {
        notyf()->success($message ? $message : 'Actualizado correctamente.');
    }

    public static function created($message = null)
    {
        notyf()->success($message ? $message : 'Creado correctamente.');
    }

    public static function deleted() : void
    {
        notyf()->success('Eliminado correctamente.');
    }

    public static function error($message) : void
    {
        notyf()->error($message ? $message : 'Ocurrió un error.');
    }

}
