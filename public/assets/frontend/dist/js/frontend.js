
// Datepicker init
if ($.fn.datepicker && $('.datepicker').length) {
    $('.datepicker').datepicker();
}

// notif init
// notyf init
var notyf = new Notyf({
    duration: 3000
});


$(function () {
    $('.delete-item').on('click', function (e) {
        e.preventDefault();
        const url = $(this).attr('href');

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
                    method: "DELETE",
                    url: url,
                    data: {
                        _token: $('meta[name="csrf_token"]').attr('content')
                    },
                    success: function (response) {
                        if (response.status == 'success') {
                            window.location.reload();
                        }
                    },
                    error: function (xhr, status, error) {
                        console.log(error);
                    }
                })

            }
        });
    });
})
