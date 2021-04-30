// Almacena los datos de la API
var api_cod_sensor;
var api_estacion;
var api_sensor;
var api_componente;
var api_sensor_estacion;
var api_componente_estacion;
var api_data;
var api_data2;
var api_data_n = [];

// Objeto que almacena las sensors
var objeto_sensor = new Object();
// Objeto que almacena las unidades
var objeto_unidades = new Object();
// Objeto que almacena las fechas
var objeto_fecha = new Object();
// Objeto que almacena las fechas UNIX
var objeto_fecha_UNIX = new Object();
// Almacena el html que se le anexará al código de las gráficas
var html = "";

var next;
var sensor;
var objeto_rango_valor = new Object();


// 9000;12;1;0;15

// # codvar; promedio; std; min; max 
objeto_rango_valor["388850400"] = ["Clorofila", 1, 0.2, 0, 10];
objeto_rango_valor["388850405"] = ["Conductividad", 45, 5, 0, 60];
objeto_rango_valor["388850104"] = ["Dirección del viento", 340, 20, 0, 360];
objeto_rango_valor["388850027"] = ["Humedad Relativa", 85, 5, 0, 100];
objeto_rango_valor["388850407"] = ["Nivel del mar", 85, 5, 0, 100];
objeto_rango_valor["388850402"] = ["Oxígeno disuelto", 0.1, 0.02, 0, 1];
objeto_rango_valor["388850403"] = ["pH", 7.2, 0.2, 1, 14];
objeto_rango_valor["388850240"] = ["Precipitación", 10, 1, 0, 20];
objeto_rango_valor["388850255"] = ["Presión atmosférica", 1000, 5, 980, 1020];
objeto_rango_valor["388850239"] = ["Radiación solar", 500, 200, 0, 1000];
objeto_rango_valor["388850406"] = ["Salinidad", 34, 2, 10, 40];
objeto_rango_valor["388850068"] = ["Temperatura del aire", 28, 3, 15, 40];
objeto_rango_valor["388850404"] = ["Temperatura del agua", 28, 2, 20, 40];
objeto_rango_valor["388850401"] = ["Turbidéz", 35, 10, 0, 60];
objeto_rango_valor["388850103"] = ["Velocidad del viento", 5, 1, 0, 10];
objeto_rango_valor["388859000"] = ["Voltaje", 12, 1, 0, 15];


// Función de inicio
$(document).ready(function () {
    //Obtiene los datos de la API
    $.get('/api/Codigo_Sensor/', function (result) {
        api_cod_sensor = result.results;
        // console.log("API Código Sensor");
        // console.log(api_cod_sensor);
    });
    $.get('/api/Estacion/', function (result) {
        api_estacion = result.results;
        // console.log("API Estación");
        // console.log(api_estacion);
    });
    $.get('/api/Sensor/', function (result) {
        api_sensor = result.results;
        // console.log("API Sensor");
        // console.log(api_sensor);
    });
    $.get('/api/Componente/', function (result) {
        api_componente = result.results;
        // console.log("API Componente");
        // console.log(api_componente);
    });
    $.get('/api/Sensor_Estacion/', function (result) {
        api_sensor_estacion = result.results;
        // console.log("API Sensor Estación");
        // console.log(api_sensor_estacion);
    });
    $.get('/api/Componente_Estacion/', function (result) {
        api_componente_estacion = result.results;
        // console.log("API Componente Estación");
        // console.log(api_componente_estacion);
    });

    $.get('/api/Data/', function (result) {
        api_data = result.results;
        console.log("API Data");
        console.log(api_data);
        control(api_data);
    });

    var next = '/api/Data/';
    var start = +new Date();
    async function fetchDataJSON() {
        while (next) {
            const response = await fetch(next);
            data = await response.json();
            api_data2 = data.results;
            for (j = 0; j < api_data2.length; j++) {
                api_data_n.push(api_data2[j]);
            }
            next = data.next;
            console.log(data.next)
        }
        console.log(api_data_n)
        texto = 'Tardó ' + (new Date() - start) + 'ms'
        console.log(texto)
        control(api_data_n);
        texto2 = 'Tardó ' + (new Date() - start) + 'ms'
        console.log(texto2)

        // $("#graficando").html(texto);
        return data;
    }

    fetchDataJSON().then(data => {
        data;
    });

});

// Función que controla los datos obtenidos
function control(datax) {
    // Se crean los vectores de control
    vector_valor = [];
    vector_sensor_cod = [];
    vector_sensor_remocod = [];
    vector_sensor = [];
    vector_unidad = [];
    vector_fecha = [];
    // Se recorren todas las posiciones del vector de datos
    for (i = 0; i < datax.length; i++) {
        // Guarda el código de la sensor muestra de la posicón i del vector
        codigo = String(datax[i]["sensor"]);
        // En esta parte se va a llenar el vector con los códigos de las sensors
        // Para saber cuántos sensors se tomaron y relacionar los datos
        // A partir de este identificador
        // Si aún no se ha añadido el código de la sensor de la posición i
        // En el vector de códigos de la sensor
        if (vector_sensor_cod.includes(codigo) == false) {
            // Se añade el código de la sensor
            vector_sensor_cod.push(codigo);
        }

        // Se realiza el mismo proceso anterior pero con el nombre de la sensor
        for (j = 0; j < api_cod_sensor.length; j++) {
            if (api_cod_sensor[j]["id"] == datax[i]["sensor"]) {
                sensor_remocod = String(api_cod_sensor[j]["sensor"]);
                for (q = 0; q < api_sensor_estacion.length; q++) {
                    if (api_sensor_estacion[q]["id"] == api_cod_sensor[j]["sensor"]) {
                        for (w = 0; w < api_sensor.length; w++) {
                            if (api_sensor[w]["id"] == api_sensor_estacion[q]["sensor"]) {
                                sensor = String(api_sensor[w]["nombre"]);
                                unidad = String(api_sensor[w]["unidad"]);
                            }
                        }
                    }
                }
            }
        }
        if (vector_sensor.includes(sensor) == false) {
            vector_sensor_remocod.push(sensor_remocod);
            vector_sensor.push(sensor);
            vector_unidad.push(unidad);
        }

    }

    for (i = (datax.length - 1); i > -1; i--) {
        // Se realiza el mismo proceso anterior pero con la fecha al revés para poder graficarla
        fecha = String(datax[i]["fecha"]);
        if (vector_fecha.includes(fecha) == false) {
            vector_fecha.push(fecha);
        }
    }


    console.log("Vector Sensor Código");
    console.log(vector_sensor_cod);
    console.log("Vector Sensor Código Remo");
    console.log(vector_sensor_remocod);
    console.log("Vector Sensor");
    console.log(vector_sensor);
    console.log("Vector Unidad");
    console.log(vector_unidad);

    // Se recorren todas las posiciones del vector que contiene a las sensors
    for (i = 0; i < vector_sensor_cod.length; i++) {
        // Se crea el contenedor de las gráficas
        html += '<div class="col-sm-6">';
        html += '<div class="card card-primary">';
        html += '<div class="card-header">';
        html += '<h2 class="card-title"><b>' + vector_sensor[i] + '</b></h2>';
        html += '<div class="card-tools">';
        html += '<button type="button" class="btn btn-primary btn-sm" data-card-widget="collapse">';
        html += '<i class="fas fa-minus"></i>';
        html += '</button>';
        html += '<button type="button" class="btn btn-primary btn-sm" data-card-widget="remove">';
        html += '<i class="fas fa-times"></i>';
        html += '</button>';
        html += '</div>';
        html += '</div>';
        html += '<div class="card-body">';
        html += '<figure class="highcharts-figure tm-flex-center tm-flex-col">';
        html += '<div id="container-' + vector_sensor_cod[i] + '" class="chart-container"></div>';
        html += '</figure>';
        html += '</div>';
        html += '<div class="card-footer">';
        html += '<div class="text-right">';
        html += '<a href="" class="btn btn-sm btn-primary">';
        html += '<i class="fas fa-info-circle"></i> Ver más';
        html += '</a>';
        html += '</div>';
        html += '</div>';
        html += '</div>';
        html += '</div>';

        // La gráfica 2
        html += '<div class="col-sm-6">';
        html += '<div class="card card-primary">';
        html += '<div class="card-header">';
        html += '<h2 class="card-title"><b>' + vector_sensor[i] + '</b></h2>';
        html += '<div class="card-tools">';
        html += '<button type="button" class="btn btn-primary btn-sm" data-card-widget="collapse">';
        html += '<i class="fas fa-minus"></i>';
        html += '</button>';
        html += '<button type="button" class="btn btn-primary btn-sm" data-card-widget="remove">';
        html += '<i class="fas fa-times"></i>';
        html += '</button>';
        html += '</div>';
        html += '</div>';
        html += '<div class="card-body">';
        html += '<figure class="highcharts-figure tm-flex-center tm-flex-col">';
        html += '<div id="container-h-' + vector_sensor_cod[i] + '" class="chart-container"></div>';
        html += '</figure>';
        html += '</div>';
        html += '<div class="card-footer">';
        html += '<div class="text-right">';
        html += '<a href="" class="btn btn-sm btn-primary">';
        html += '<i class="fas fa-info-circle"></i> Ver más';
        html += '</a>';
        html += '</div>';
        html += '</div>';
        html += '</div>';
        html += '</div>';


        // html += '<a onclick="descargar()" class="btn btn-block btn-success" id="descarga_boton" style=" display: flex; align-items: center; justify-content: center;color: white;margin-bottom: 16px;">';
        // // html += '<a onclick="descargar_' + vector_sensor[i] + '" class="btn btn-block btn-success" id="descarga_boton" style=" display: flex; align-items: center; justify-content: center;color: white;margin-bottom: 16px;">';
        // html += '<i class="nav-icon fa fa-download"></i> Descargar datos';
        // html += '</a>';

        // Se añade un atributo al objeto de las sensors que será una lista vacía
        // que tendrá como nombre la sensor de la posición i
        objeto_sensor[vector_sensor_cod[i]] = [];

        // Se añade un atributo al objeto de las unidades que será la unidad
        // de la misma posición i que tendrá como nombre la sensor de la posición i
        objeto_unidades[vector_sensor_cod[i]] = vector_unidad[i];

        // Igualmente con la fecha
        objeto_fecha[vector_sensor_cod[i]] = [];
        // Igualmente con la fecha UNIX
        objeto_fecha_UNIX[vector_sensor_cod[i]] = [];
    }

    console.log("Objeto Sensor");
    console.log(objeto_sensor);
    console.log("Objeto Unidades");
    console.log(objeto_unidades);
    console.log("Objeto fecha");
    console.log(objeto_fecha);
    console.log("Objeto fecha UNIX");
    console.log(objeto_fecha_UNIX);
    // Se anexa el contenedor de las gráficas al html
    $("#graficando").html(html);

    // Se recorren todas las posiciones del vector de datos de la lista de datax
    for (i = (datax.length - 1); i > -1; i--) {
        // Se recorren todas las posiciones del vector de datos de la lista de sensors
        for (j = 0; j < vector_sensor_cod.length; j++) {
            // Si el la sensor de la lista datax en la posición i es la misma que
            // La sensor del vector sensor en la posición j
            if (datax[i].sensor == vector_sensor_cod[j]) {
                // Se añade el valor de la lista del sensor en la posición i al objeto sensor en su 
                // posición correspondiente a vector sensor j
                objeto_sensor[vector_sensor_cod[j]].push(datax[i]["valor"]);

                // Se añade el valor de la fecha del sensor en la posición i al objeto fecha en su
                // posición correspondiente al vector sensor j
                // ESTO CON EL FIN DE TENER UN VECTOR DEL MISMO TAMAÑO PARA CADA VALOR Y FECHA SEGÚN SU sensor
                objeto_fecha[vector_sensor_cod[j]].push(datax[i]["fecha"]);

                //Pero para poder graficar se usa la fecha UNIX
                // Convertir fecha a UNIX new Date('2020-6-8 18:9:32').getTime() / 1000
                // Fecha actual 2017-03-09T23:40:00-05:00

                anio = datax[i]["fecha"].slice(0, 4);
                mes = datax[i]["fecha"].slice(5, 7);
                mes = mes - 1;
                dia = datax[i]["fecha"].slice(8, 10);
                hora = datax[i]["fecha"].slice(11, 13);
                minuto = datax[i]["fecha"].slice(14, 16);
                segundo = datax[i]["fecha"].slice(17, 19);
                objeto_fecha_UNIX[vector_sensor_cod[j]].push(Date.UTC(anio, mes, dia, hora, minuto, segundo));
            }
        }
    }

    iq = 0;
    while (iq < vector_sensor_cod.length) {
        grafica(vector_sensor[iq], vector_sensor_cod[iq]);
        iq = iq + 1;
    }
}

// Función encargada de graficar los datos
function grafica(sx, codigox) {
    // Vector que almacena los datos a graficar
    console.log("Trabajando con el sensor: " + sx);
    console.log("Trabajando con el codigo: " + codigox);

    vector_grafica = [];

    for (i = 0; i < objeto_sensor[codigox].length; i++) {
        vector_grafica.push([objeto_fecha_UNIX[codigox][i], objeto_sensor[codigox][i]]);
    }
    console.log(vector_grafica);

    ultimo = [];
    ultimo.push(objeto_sensor[codigox][objeto_sensor[codigox].length - 1]);

    ultima_fecha = [];
    fechax = objeto_fecha[codigox][objeto_fecha[codigox].length - 1].split("T");
    horax = fechax[1].split("-");
    horax = horax[0]
    fechax = fechax[0]
    ultima_fecha.push(fechax + " " + horax);

    // Gráfica de datos históricos

    // Create a timer
    var start = +new Date();
    Highcharts.stockChart('container-h-' + codigox, {
        chart: {
            events: {
                load: function () {
                    if (!window.TestController) {
                        this.setTitle(null, {
                            text: 'Built chart in ' + (new Date() - start) + 'ms'
                        });
                    }
                }
            },
            zoomType: 'x'
        },

        rangeSelector: {

            buttons: [{
                type: 'day',
                count: 3,
                text: '3d'
            }, {
                type: 'week',
                count: 1,
                text: '1w'
            }, {
                type: 'month',
                count: 1,
                text: '1m'
            }, {
                type: 'month',
                count: 6,
                text: '6m'
            }, {
                type: 'year',
                count: 1,
                text: '1y'
            }, {
                type: 'all',
                text: 'All'
            }],
            selected: 3
        },

        yAxis: {
            title: {
                text: sx + " (" + objeto_unidades[codigox] + ")"
            }
        },

        title: {
            text: 'Histórico de datos ' + sx
        },

        subtitle: {
            text: 'Built chart in ...' // dummy text to reserve space for dynamic subtitle
        },

        series: [{
            name: sx,
            data: vector_grafica,
            type: 'spline',
            // pointStart: data.pointStart,
            // pointInterval: data.pointInterval,
            tooltip: {
                valueDecimals: 2,
                valueSuffix: objeto_unidades[codigox]
            }
        }]

    });

    // SPEED
    promedio = objeto_rango_valor[codigox][1];
    std = objeto_rango_valor[codigox][2];
    min = objeto_rango_valor[codigox][3];
    max = objeto_rango_valor[codigox][4];

    Highcharts.chart('container-' + codigox, {

        chart: {
            type: 'gauge',
            plotBackgroundColor: null,
            plotBackgroundImage: null,
            plotBorderWidth: 0,
            plotShadow: false
        },

        title: {
            text: sx + " " + ultima_fecha
        },

        pane: {
            startAngle: -150,
            endAngle: 150,
            background: [{
                backgroundColor: {
                    linearGradient: { x1: 0, y1: 0, x2: 0, y2: 1 },
                    stops: [
                        [0, '#FFF'],
                        [1, '#333']
                    ]
                },
                borderWidth: 0,
                outerRadius: '109%'
            }, {
                backgroundColor: {
                    linearGradient: { x1: 0, y1: 0, x2: 0, y2: 1 },
                    stops: [
                        [0, '#333'],
                        [1, '#FFF']
                    ]
                },
                borderWidth: 1,
                outerRadius: '107%'
            }, {
                // default background
            }, {
                backgroundColor: '#DDD',
                borderWidth: 0,
                outerRadius: '105%',
                innerRadius: '103%'
            }]
        },

        // the value axis
        yAxis: {
            min: min,
            max: max,

            minorTickInterval: 'auto',
            minorTickWidth: 1,
            minorTickLength: 10,
            minorTickPosition: 'inside',
            minorTickColor: '#666',

            tickPixelInterval: 30,
            tickWidth: 2,
            tickPosition: 'inside',
            tickLength: 10,
            tickColor: '#666',
            labels: {
                step: 2,
                rotation: 'auto'
            },
            title: {
                text: objeto_unidades[codigox]
            },
            plotBands: [{
                from: min,
                to: promedio - std * 2,
                color: '#DF5353' // green
            },
            {
                from: promedio - std * 2,
                to: promedio - std,
                color: '#DDDF0D' // yellow
            },
            {
                from: promedio - std,
                to: promedio + std,
                color: '#55BF3B' // green
            },
            {
                from: promedio + std,
                to: promedio + std * 2,
                color: '#DDDF0D' // yellow
            }, {
                from: promedio + std * 2,
                to: max,
                color: '#DF5353' // red
            }]
        },

        series: [{
            name: sx + " " + ultima_fecha,
            data: ultimo,
            tooltip: {
                valueSuffix: " " + objeto_unidades[codigox]
            }
        }]

    },
        // Add some life
        // function (chart) {
        //     if (!chart.renderer.forExport) {
        //         setInterval(function () {
        //             var point = chart.series[0].points[0],
        //                 newVal,
        //                 inc = Math.round((Math.random() - 0.5) * 20);

        //             newVal = point.y + inc;
        //             if (newVal < 0 || newVal > 50) {
        //                 newVal = point.y - inc;
        //             }

        //             point.update(newVal);

        //         }, 3000);
        //     }
        // }
    );

}

function trunc(x, posiciones = 0) {
    var s = x.toString()
    var l = s.length
    var decimalLength = s.indexOf('.') + 1
    var numStr = s.substr(0, decimalLength + posiciones)
    return Number(numStr)
}