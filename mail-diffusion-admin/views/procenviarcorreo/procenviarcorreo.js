function enviarCorreo() {
    console.log("pasa enviarCorreo");
    $.post("../../controller/email.php?op=enviarCorreo", function(data) {

    });
}