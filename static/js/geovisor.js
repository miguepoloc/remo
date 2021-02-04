var latitud;
var longitud;
$(document).ready(function () {
    id_estacion = document.getElementById("id_estacion")
    //Obtiene los datos de la estacion de la API
    console.log(id_estacion.text);
    $.get('/api/Estacion/', function (result) {
        // Guarda en la variable estacion los resultados de la API
        estacion = result;
        console.log(estacion);
        for (let index = 0; index < estacion.length; index++) {
            console.log(estacion[index].id);

            if (estacion[index].id == parseInt(id_estacion.text)) {
                latitud = estacion[index].latitud;
                longitud = estacion[index].longitud;
            }
        }
        console.log(latitud);
        console.log(longitud);
    });
    require([
        "esri/Map",
        "esri/views/MapView",
        "esri/Graphic"
    ],
        function (
            Map,
            MapView,
            Graphic
        ) {
            var map = new Map({
                basemap: "topo-vector"
            });

            var view = new MapView({
                center: [longitud, latitud],
                container: "geovisor",
                map: map,
                zoom: 16
            });

            /*************************
             * Create a point graphic
             *************************/

            // First create a point geometry (this is the location of the Titanic)

            var point = {
                type: "point", // autocasts as new Point()
                longitude: longitud,
                latitude: latitud
            };
            // Create a symbol for drawing the point
            var markerSymbol = {
                type: "simple-marker", // autocasts as new SimpleMarkerSymbol()
                color: [226, 119, 40],
                outline: {
                    // autocasts as new SimpleLineSymbol()
                    color: [255, 255, 255],
                    width: 1
                }
            };

            // Se crean los atributos
            var puntoAtributo = {
                id: "1",
                nombre: "Boya",
            };

            // Create a graphic and add the geometry and symbol to it
            var pointGraphic = new Graphic({
                geometry: point,
                symbol: markerSymbol,
                attributes: puntoAtributo,
                popupTemplate: {
                    id: "{id}",
                    content: [{
                        type: "fields",
                        fieldInfos: [{
                            fieldName: "id"
                        },
                        {
                            fieldName: "nombre"
                        },
                        ]
                    }]
                }

            });

            // Add the graphics to the view's graphics layer
            view.graphics.addMany([pointGraphic]);


        }
    );
});

