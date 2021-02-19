// --------------- PARA EL MÉTODO POST -----------
// Token necesario para que funcione el método POST
var csrftoken = Cookies.get('csrftoken');
function csrfSafeMethod(method) {
    // these HTTP methods do not require CSRF protection
    return (/^(GET|HEAD|OPTIONS|TRACE)$/.test(method));
}
$.ajaxSetup({
    beforeSend: function (xhr, settings) {
        if (!csrfSafeMethod(settings.type) && !this.crossDomain) {
            xhr.setRequestHeader("X-CSRFToken", csrftoken);
        }
    }
});


// Adquiere el listado de los componentes, sensores y estaciones
var lista_componentes_estacion = "";

$.get('/api/Componente_Estacion/', function (result) {
    lista_componentes_estacion = result;
});

var lista_componentes = "";

$.get('/api/Componente/', function (result) {
    lista_componentes = result;
});

var lista_sensores_estacion = "";

$.get('/api/Sensor_Estacion/', function (result) {
    lista_sensores_estacion = result;
    console.log(lista_sensores_estacion);

});

var lista_sensores = "";

$.get('/api/Sensor/', function (result) {
    lista_sensores = result;
    console.log(lista_sensores);
});

// ----------- Select de estación -------------------
var estacion_selecta = "";
$('#select_estacion').on('select2:select', function (e) {
    document.getElementById("select_componente").innerHTML = "<option selected='selected' disabled='disabled'>Selecciona un componente</option>";
    document.getElementById('nombre_componente').innerHTML = '<i class="fas fa-tools"></i> Componente';
    document.getElementById("select_sensor").innerHTML = "<option selected='selected' disabled='disabled'>Selecciona un sensor</option>";
    document.getElementById('nombre_sensor').innerHTML = '<i class="fas fa-cloud-sun-rain"></i> Sensor';
    var data_estacion = e.params.data;
    estacion_selecta = data_estacion.id;
    document.getElementById('nombre_estacion').innerHTML = '<i class="fas fa-broadcast-tower"></i> ' + data_estacion.text;
    // Se recorren todas las posiciones del vector que contiene a los componente
    for (i = 0; i < lista_componentes_estacion.length; i++) {
        if (lista_componentes_estacion[i].ubicacion == estacion_selecta) {
            for (j = 0; j < lista_componentes.length; j++) {
                if (lista_componentes[j].id == lista_componentes_estacion[i].componente) {
                    // Se crea un elemento tipo option
                    let z = document.createElement("option");
                    // Al cual se le asigna el valor de la variable
                    z.setAttribute("value", lista_componentes[j].id);
                    // Y se le asigna al valor a mostrar
                    let t = document.createTextNode(lista_componentes[j].nombre + " (" + lista_componentes[j].referencia + ")");
                    z.appendChild(t);
                    // Luego se añade al html
                    document.getElementById("select_componente").appendChild(z);
                }
            }
        }
    }
    for (i = 0; i < lista_sensores_estacion.length; i++) {
        if (lista_sensores_estacion[i].ubicacion == estacion_selecta) {
            for (j = 0; j < lista_sensores.length; j++) {
                if (lista_sensores[j].id == lista_sensores_estacion[i].sensor) {
                    // Se crea un elemento tipo option
                    let z = document.createElement("option");
                    // Al cual se le asigna el valor de la variable
                    z.setAttribute("value", lista_sensores[j].id);
                    // Y se le asigna al valor a mostrar
                    let t = document.createTextNode(lista_sensores[j].nombre + " (" + lista_sensores[j].unidad + ")");
                    z.appendChild(t);
                    // Luego se añade al html
                    document.getElementById("select_sensor").appendChild(z);
                }
            }
        }
    }
});

var data_tipo_estacion;
$('#select_estacion_tipo').on('select2:select', function (e) {
    data_tipo_estacion = e.params.data.id;
});

var operarios = [];
var data_operarios_add;
$('#select_operario').on('select2:select', function (e) {
    data_operarios_add = e.params.data;
    operarios.push(data_operarios_add.id);
    console.log(data_operarios_add);
    console.log(operarios);
});

var data_operarios_delete;
$('#select_operario').on('select2:unselect', function (e) {
    data_operarios_delete = e.params.data.id;
    pos = operarios.indexOf(data_operarios_delete);
    let elementoEliminado = operarios.splice(pos, 1)
});

// ----------------- Cuando selecciona un componente ----------------------
var data_componente;
$('#select_componente').on('select2:select', function (e) {
    data_componente = e.params.data;
    document.getElementById('nombre_componente').innerHTML = '<i class="fas fa-tools"></i> ' + data_componente.text;
});

var data_tipo_componente;
$('#select_componente_tipo').on('select2:select', function (e) {
    data_tipo_componente = e.params.data.id;
});

// ----------------- Cuando selecciona un sensor ----------------------
var data_sensor;
$('#select_sensor').on('select2:select', function (e) {
    data_sensor = e.params.data;
    document.getElementById('nombre_sensor').innerHTML = '<i class="fas fa-cloud-sun-rain"></i> ' + data_sensor.text;
});

var data_tipo_sensor;
$('#select_sensor_tipo').on('select2:select', function (e) {
    data_tipo_sensor = e.params.data.id;
});

// Botón de agregar a la base de datos
$("#agregar").click(function () {
    var fecha = document.getElementById('fecha_salida').value;
    fecha = convertir_fecha(fecha);
    console.log(operarios);

    var observaciones_estacion = document.getElementById('observaciones_estacion').value;
    var observaciones_componente = document.getElementById('observaciones_componente').value;
    var observaciones_sensor = document.getElementById('observaciones_sensor').value;

    // Estación
    $.ajax({
        type: "POST",
        url: "/api/Salida_De_Campo/",
        data: {
            "fecha": fecha,
            "observaciones": observaciones_estacion,
            "estacion": estacion_selecta,
            "tipo_de_salida": data_tipo_estacion,
            "operarios": operarios,
        }
    });

    // Sensor
    $.ajax({
        type: "POST",
        url: "/api/Sensor_Salida_De_Campo/",
        data: {
            "fecha": fecha,
            "observaciones": observaciones_sensor,
            "sensor": data_sensor.id,
            "tipo_de_salida": data_tipo_sensor,
            "operarios": operarios,
        }
    });

    // Componente
    $.ajax({
        type: "POST",
        url: "/api/Componente_Salida_De_Campo/",
        data: {
            "fecha": fecha,
            "observaciones": observaciones_componente,
            "componente": data_componente.id,
            "tipo_de_salida": data_tipo_componente,
            "operarios": operarios,
        }
    });
});

function convertir_fecha(fecha) {
    anio = fecha.slice(0, 4);
    mes = fecha.slice(5, 7);
    dia = fecha.slice(8, 10);
    return (nueva_fecha = anio + "-" + mes + "-" + dia);
}



// var d1 = document.getElementById('Prueba');
// $("#addSensor").click(function () {
//     let htmlx = "";
//     htmlx += '<div id="vidas" class="row">';
//     htmlx += '<button type="button" class="btn btn-dark swalOK"><i class="fas fa-plus-circle"></i> Agregar sensor</button>';
//     htmlx += '</div>';

//     // document.getElementById("Prueba").innerHTML = htmlx;
//     d1.insertAdjacentHTML('afterend', htmlx);

//     // $("#Prueba").innerHTML(htmlx);
// });