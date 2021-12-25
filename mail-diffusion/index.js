function init() {
    $("#usuario_form").on("submit", function(e) {
        guardar(e);
    });
}

$(document).ready(function() {

});

function guardar(e) {
    e.preventDefault(); // Para evitar que se guarde 2 veces
    console.log("usuario_form es :", $("#usuario_form"));
    var formData = new FormData($("#usuario_form")[0]);
    console.log("formData es :", formData);

    $.ajax({
        url: "controller/usuario.php?op=guardarcorreo",
        type: "POST",
        data: formData,
        contentType: false,
        processData: false,
        success: function(data) {

            $("#modalsuscribete").modal('hide');

            console.log("Data es :", data);

            if (data == 1) {
                console.log("Data 1 es :", data);
                $.post("controller/usuario.php?op=emailBienvenida", { usu_correo: $("#usu_correo").val() }, function(data) {
                    console.log(data);
                });

                Swal.fire({
                    icon: 'success',
                    title: 'MailDiffusion',
                    text: 'Gracias por suscribirte!',
                    showConfirmButton: false,
                    timer: 2000
                })

                $("#usu_correo").val('');
            } else {
                console.log("Error");
                Swal.fire({
                    icon: 'error',
                    title: 'Error',
                    text: 'Correo ya suscrito!',
                    showConfirmButton: false,
                    timer: 2000
                })

            }

        }
    });
}

init();