$("#addSensor").click(function () {
    let htmlx = "";
    htmlx += '<div id="vidas" class="row">';
    htmlx += '<button type="button" class="btn btn-dark swalOK"><i class="fas fa-plus-circle"></i> Agregar sensor</button>';
    htmlx += '</div>';
    htmlx += '<div id="Prueba"></div>';

    document.getElementById("Prueba").innerHTML = htmlx;
    // $("#Prueba").innerHTML(htmlx);
});

