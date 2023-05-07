<!DOCTYPE html>

<head>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <title>Using MySQL and PHP with Google Maps</title>
    <style>
        #map {
            height: 80%;
            width: 80%;
            margin: 0 auto 0 auto;
        }

        html,
        body {
            height: 100%;
        }
    </style>
</head>

<html>

<body>
    <h2 align="center">Pendakian Gunung</h2>
    <div id="map"></div>
    <div align="center">
        <a href="#" target="_blank">Kelompok Asik</a>
    </div>

    <script>
        var customLabel = {
            gunung: {
                label: 'G'
            },
            pos: {
                label: 'P'
            }
        };

        function initMap() {
            var map = new google.maps.Map(document.getElementById('map'), {
                center: new google.maps.LatLng(-7.687287378535824, 112.67264116272604),
                zoom: 10
            });
            var infoWindow = new google.maps.InfoWindow;

            // Change this depending on the name of your PHP or XML file
            downloadUrl('http://localhost/sig/data-xml.php', function(data) {
                var xml = data.responseXML;
                var markers = xml.documentElement.getElementsByTagName('marker');
                Array.prototype.forEach.call(markers, function(markerElem) {
                    var id = markerElem.getAttribute('id');
                    var nama = markerElem.getAttribute('nama');
                    var alamat = markerElem.getAttribute('alamat');
                    var type = markerElem.getAttribute('type');
                    var point = new google.maps.LatLng(
                        parseFloat(markerElem.getAttribute('lat')),
                        parseFloat(markerElem.getAttribute('long')));

                    var infowincontent = document.createElement('div');
                    var strong = document.createElement('strong');
                    strong.textContent = nama
                    infowincontent.appendChild(strong);
                    infowincontent.appendChild(document.createElement('br'));

                    var text = document.createElement('text');
                    text.textContent = alamat
                    infowincontent.appendChild(text);
                    var icon = customLabel[type] || {};
                    var marker = new google.maps.Marker({
                        map: map,
                        position: point,
                        label: icon.label
                    });
                    marker.addListener('click', function() {
                        infoWindow.setContent(infowincontent);
                        infoWindow.open(map, marker);
                    });
                });
            });
        }



        function downloadUrl(url, callback) {
            var request = window.ActiveXObject ?
                new ActiveXObject('Microsoft.XMLHTTP') :
                new XMLHttpRequest;

            request.onreadystatechange = function() {
                if (request.readyState == 4) {
                    request.onreadystatechange = doNothing;
                    callback(request, request.status);
                }
            };

            request.open('GET', url, true);
            request.send(null);
        }

        function doNothing() {}
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDrMB_B5LP4_WVpTA174pqlc4EofMxMf6M&callback=initMap" defer></script>
</body>

</html>