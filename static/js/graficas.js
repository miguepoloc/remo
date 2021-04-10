// Almacena los datos
var sensores;
// Objeto que almacena las variables
var objeto_variable = new Object();
// Objeto que almacena las unidades
var objeto_unidades = new Object();
// Objeto que almacena las fechas
var objeto_fecha = new Object();
// Objeto que almacena las fechas UNIX
var objeto_fecha_UNIX = new Object();
// Almacena el html que se le anexará al código de las gráficas
var html = "";



// Función de inicio
$(document).ready(function () {
    //Obtiene los datos de la CTD de la API
    $.get('/api/Data/', function (result) {
        // Guarda en la variable ctd los resultados de la API
        sensores = result;
        // Llama a la función gráfica
        console.log(sensores);
        control();
    });
});

// Función que controla los datos obtenidos
function control() {
    // Se crean los vectores de control
    vector_valor = [];
    vector_variable_cod = [];
    vector_variable = [];
    vector_unidad = [];
    vector_fecha = [];
    // Se recorren todas las posiciones del vector de datos
    for (i = 0; i < sensores.length; i++) {
        // Guarda el código de la variable muestra de la posicón i del vector
        codigo = String(sensores[i]["variable"]);
        // En esta parte se va a llenar el vector con los códigos de las variables
        // Para saber cuántos variables se tomaron y relacionar los datos
        // A partir de este identificador
        // Si aún no se ha añadido el código de la variable de la posición i
        // En el vector de códigos de la variable
        if (vector_variable_cod.includes(codigo) == false) {
            // Se añade el código de la variable
            vector_variable_cod.push(codigo);
        }

        // Se realiza el mismo proceso anterior pero con el nombre de la variable
        variable = String(sensores[i]["variable"]);
        unidad = String(sensores[i]["variable"]);
        if (vector_variable.includes(variable) == false) {
            vector_variable.push(variable);
            vector_unidad.push(unidad);
        }

        // Se realiza el mismo proceso anterior pero con la unidad de la variable
        // unidad = String(sensores[i]["unidad"]);
        // if (vector_unidad.includes(unidad) == false) {
        //     vector_unidad.push(unidad);
        // }

        // Se realiza el mismo proceso anterior pero con la fecha
        fecha = String(sensores[i]["fecha"]);
        if (vector_fecha.includes(fecha) == false) {
            vector_fecha.push(fecha);
        }
    }

    console.log(vector_variable);
    console.log(vector_unidad);
    console.log(vector_fecha);

    // Se recorren todas las posiciones del vector que contiene a las variables
    for (i = 0; i < vector_variable.length; i++) {
        // Se crea el contenedor de las gráficas
        html += '<div class="col-sm-6">';
        html += '<div class="card card-primary">';
        html += '<div class="card-header">';
        html += '<h2 class="card-title"><b>' + vector_variable[i] + '</b></h2>';
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
        html += '<div id="container-' + vector_variable[i] + '" class="chart-container"></div>';
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
        html += '<h2 class="card-title"><b>' + vector_variable[i] + '</b></h2>';
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
        html += '<div id="container-h-' + vector_variable[i] + '" class="chart-container"></div>';
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
        // // html += '<a onclick="descargar_' + vector_variable[i] + '" class="btn btn-block btn-success" id="descarga_boton" style=" display: flex; align-items: center; justify-content: center;color: white;margin-bottom: 16px;">';
        // html += '<i class="nav-icon fa fa-download"></i> Descargar datos';
        // html += '</a>';

        // Se añade un atributo al objeto de las variables que será una lista vacía
        // que tendrá como nombre la variable de la posición i
        objeto_variable[vector_variable[i]] = [];

        // Se añade un atributo al objeto de las unidades que será la unidad
        // de la misma posición i que tendrá como nombre la variable de la posición i
        objeto_unidades[vector_variable[i]] = vector_unidad[i];

        // Igualmente con la fecha
        objeto_fecha[vector_variable[i]] = [];
        // Igualmente con la fecha UNIX
        objeto_fecha_UNIX[vector_variable[i]] = [];
    }

    console.log(objeto_variable);
    console.log(objeto_unidades);
    console.log(objeto_fecha);
    console.log(objeto_fecha_UNIX);
    // Se anexa el contenedor de las gráficas al html
    $("#graficando").html(html);

    // Se recorren todas las posiciones del vector de datos de la lista de sensores
    for (i = 0; i < sensores.length; i++) {
        // Se recorren todas las posiciones del vector de datos de la lista de variables
        for (j = 0; j < vector_variable.length; j++) {
            // Si el la variable de la lista sensores en la posición i es la misma que
            // La variable del vector variable en la posición j
            if (sensores[i].variable == vector_variable[j]) {
                // Se añade el valor de la lista del sensor en la posición i al objeto variable en su 
                // posición correspondiente a vector variable j
                objeto_variable[vector_variable[j]].push(sensores[i]["valor"]);

                // Se añade el valor de la fecha del sensor en la posición i al objeto fecha en su
                // posición correspondiente al vector variable j
                // ESTO CON EL FIN DE TENER UN VECTOR DEL MISMO TAMAÑO PARA CADA VALOR Y FECHA SEGÚN SU VARIABLE
                objeto_fecha[vector_variable[j]].push(sensores[i]["fecha"]);

                //Pero para poder graficar se usa la fecha UNIX
                // Convertir fecha a UNIX new Date('2020-6-8 18:9:32').getTime() / 1000
                // Fecha actual 2017-03-09T23:40:00-05:00

                anio = sensores[i]["fecha"].slice(0, 4);
                mes = sensores[i]["fecha"].slice(5, 7);
                mes = mes - 1;
                dia = sensores[i]["fecha"].slice(8, 10);
                hora = sensores[i]["fecha"].slice(11, 13);
                minuto = sensores[i]["fecha"].slice(14, 16);
                segundo = sensores[i]["fecha"].slice(17, 19);
                objeto_fecha_UNIX[vector_variable[j]].push(Date.UTC(anio, mes, dia, hora, minuto, segundo));
            }
        }
    }

    iq = 0;
    while (iq < vector_variable.length) {
        grafica(vector_variable[iq]);
        iq = iq + 1;
    }
}

// Función encargada de graficar los datos
function grafica(sx) {
    // Vector que almacena los datos a graficar
    vector_grafica = [];

    var maxValue = objeto_variable[sx][0];
    var minValue = objeto_variable[sx][0];
    var promedio = 0;
    for (i = 0; i < objeto_variable[sx].length; i++) {
        vector_grafica.push([objeto_fecha_UNIX[sx][i], objeto_variable[sx][i]]);

        var valor_menor = objeto_variable[sx][i];
        if (valor_menor > maxValue) {
            maxValue = valor_menor;
        }

        var valor_mayor = objeto_variable[sx][i];
        if (valor_mayor < minValue) {
            minValue = valor_mayor;
        }

        promedio = promedio + parseInt(objeto_variable[sx][i]);
    }
    console.log(vector_grafica);

    promedio = promedio / objeto_variable[sx].length;

    ultimo = [];
    ultimo.push(objeto_variable[sx][objeto_variable[sx].length - 1]);

    // Gráfica de datos históricos
    Highcharts.chart('container-h-' + sx, {
        chart: {
            // type: 'spline',
            zoomType: 'x',
        },
        title: {
            text: 'Histórico de datos'
        },
        xAxis: {
            type: 'datetime'
        },
        yAxis: {
            title: {
                text: sx
            }
        },
        legend: {
            enabled: false
        },
        plotOptions: {
            area: {
                fillColor: {
                    linearGradient: {
                        x1: 0,
                        y1: 0,
                        x2: 0,
                        y2: 1
                    },
                    stops: [
                        [0, Highcharts.getOptions().colors[0]],
                        [1, Highcharts.color(Highcharts.getOptions().colors[0]).setOpacity(0).get('rgba')]
                    ]
                },
                marker: {
                    radius: 2
                },
                lineWidth: 1,
                states: {
                    hover: {
                        lineWidth: 1
                    }
                },
                threshold: null
            }
        },

        series: [{
            type: 'spline',
            name: sx,
            data: vector_grafica,
        }]
    });


    // GAUGE
    // var gaugeOptions = {
    //     chart: {
    //         type: 'solidgauge'
    //     },

    //     title: sx,

    //     pane: {
    //         center: ['50%', '75%'],
    //         size: '140%',
    //         startAngle: -90,
    //         endAngle: 90,
    //         background: {
    //             backgroundColor: Highcharts.defaultOptions.legend.backgroundColor || '#EEE',
    //             innerRadius: '60%',
    //             outerRadius: '100%',
    //             shape: 'arc'
    //         }
    //     },

    //     exporting: {
    //         enabled: true
    //     },

    //     tooltip: {
    //         enabled: false
    //     },

    //     // the value axis
    //     yAxis: {
    //         stops: [
    //             [0.1, '#3b83bd'], // green
    //             [0.5, '#55BF3B'], // yellow
    //             [0.9, '#DF5353'] // red
    //         ],
    //         lineWidth: 0,
    //         tickWidth: 0,
    //         minorTickInterval: null,
    //         tickAmount: 2,
    //         title: {
    //             y: -70
    //         },
    //         labels: {
    //             y: 16
    //         }
    //     },

    //     plotOptions: {
    //         solidgauge: {
    //             dataLabels: {
    //                 y: 5,
    //                 borderWidth: 0,
    //                 useHTML: true
    //             }
    //         }
    //     }
    // };


    // // Gauge
    // var chartTemp = Highcharts.chart('container' + sx, Highcharts.merge(gaugeOptions, {
    //     yAxis: {
    //         min: minValue - promedio / 2,
    //         max: maxValue + promedio / 2,
    //         title: {
    //             text: sx
    //         }
    //     },

    //     credits: {
    //         enabled: false
    //     },

    //     series: [{
    //         name: sx,
    //         data: ultimo,
    //         dataLabels: {
    //             format: '<div style="text-align:center">' +
    //                 '<span style="font-size:25px">' + trunc(objeto_variable[sx][objeto_variable[sx].length - 1], 2) + '</span><br/>' +
    //                 '<span style="font-size:12px;opacity:0.4">' + objeto_unidades[sx] + '</span>' +
    //                 '</div>'
    //         },
    //     }]

    // }));


    // SPEED
    Highcharts.chart('container-' + sx, {

        chart: {
            type: 'gauge',
            plotBackgroundColor: null,
            plotBackgroundImage: null,
            plotBorderWidth: 0,
            plotShadow: false
        },

        title: {
            text: sx
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
            min: 0,
            max: 100,

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
                text: '%'
            },
            plotBands: [{
                from: 0,
                to: 20,
                color: '#DF5353' // green
            },
            {
                from: 20,
                to: 40,
                color: '#DDDF0D' // yellow
            },
            {
                from: 40,
                to: 60,
                color: '#55BF3B' // green
            },
            {
                from: 60,
                to: 80,
                color: '#DDDF0D' // yellow
            }, {
                from: 80,
                to: 100,
                color: '#DF5353' // red
            }]
        },

        series: [{
            name: sx,
            data: ultimo,
            tooltip: {
                valueSuffix: " " + sx
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

    console.log(trunc(objeto_variable[sx][objeto_variable[sx].length - 1], 2));
}

function trunc(x, posiciones = 0) {
    console.log(x);
    var s = x.toString()
    var l = s.length
    var decimalLength = s.indexOf('.') + 1
    var numStr = s.substr(0, decimalLength + posiciones)
    return Number(numStr)
}