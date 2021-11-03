<?php
/* Template Name: Dealers */
?>

<?php get_header(); ?>

    <style>
        @import url(<?= get_stylesheet_directory_uri() . '/css/about.css'?>);
        @import url(<?= get_stylesheet_directory_uri() . '/css/dealers.css'?>);
    </style>

    <section class="title">
        <div class="dealers-block_title">
            <h1 class="dealers-title">OUR PARTNERS</h1>
            <hr class="dealers-title_bg">
        </div>
    </section>

    <section class="dealers-country">
        <h2 class="dealers-country_title">Select country from the list:</h2>
        <div class="dealers-listCountry">
            <a href="#" id="uk" class="listCountry-btn"
               data-marker="Ukraine">Ukraine</a>
            <a href="#" id="ru" class="listCountry-btn">Russia</a>
            <a href="http://localhost/countries/belarus/" class="listCountry-btn">Belarus</a>
        </div>
    </section>

    <section class="dealers-block" style="display: none;">
        <div class="dealers-selected">
            <h2 class="selected-title">Select country and city:</h2>
        </div>
        <form action="dealers.php" mothod="post" name="selectedCountry" class="form-dealers_selected">
            <p class="pr form-selected_p">
                <label for="formCountry-selected" class="formCountry-label">
                    <span>Country</span>
                    <svg width="12" height="10" viewBox="0 0 10 10" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M0 4.75H12M5.7 10L5.7 0" stroke="#929292"/>
                    </svg>
                </label>
                <input type="text" name="form-country" id="formCountry-selected">
            </p>
            <p class="pr form-selected_p">
                <label for="formCountry-selected" class="formCountry-label">
                    <span>City</span>
                    <svg width="12" height="10" viewBox="0 0 10 10" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M0 4.75H12M5.7 10L5.7 0" stroke="#929292"/>
                    </svg>
                </label>
                <input type="text" name="form-country" id="formCountry-selected">
            </p>
        </form>

        <div class="dealers-line"></div>

        <div class="dealers-list">
            <dis class="container-list cities-list">
                <ul>
                    <li>Chernigov</li>
                    <li>Kyiv</li>
                    <li>Sumy</li>
                </ul>
                <ul>
                    <li>Odessa</li>
                    <li>Lviv</li>
                    <li>Kharkiv</li>
                </ul>
            </dis>
        </div>

        <div id="map" class="map"></div>

    </section>

    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAEGT1m3rS0e7uwvz4zm2uTLBq425VB8hQ"></script>
    <script src="<?php echo get_stylesheet_directory_uri(); ?>/js/countries.js"></script>

    <script type="text/javascript">

        let map;
        let markers = [];

        // Sets the map on all markers in the array.
        function setMapOnAll(map) {
            for (let i = 0; i < markers.length; i++) {
                markers[i].setMap(map);
            }
        }

        // Removes the markers from the map, but keeps them in the array.
        function hideMarkers() {
            setMapOnAll(null);
        }

        // Shows any markers currently in the array.
        function showMarkers() {
            setMapOnAll(map);
        }

        // Deletes all markers in the array by removing references to them.
        function deleteMarkers() {
            hideMarkers();
            markers = [];
        }


        $(".listCountry-btn").click(function (event) {
            event.preventDefault();

            $('.dealers-block').show();
            var countryName = $(event.target).data('marker');

            deleteMarkers();

            let cities =  county[countryName];
            var citiesName = [];

            cities.forEach(function (marker) {

                citiesName.push(marker.name)
                markers.push(addMarker(map,
                    marker.lat,
                    marker.long,
                    marker.name,
                    "<?= get_template_directory_uri();?>/img/icon-marker.png",
                    marker.name));

            });

            if (markers.length == 1) {
                map.setCenter(markers[0].getPosition());
                map.setZoom(8);
            } else {
                var bounds = new google.maps.LatLngBounds();
                for (var i = 0; i < markers.length; i++) {
                    bounds.extend(markers[i].getPosition());
                }
                map.fitBounds(bounds);
            }

            $('.cities-list').html('');

            var content = '<ul>';
            var contentIndex = 0;
            var cityLast = citiesName[citiesName.length]

            citiesName.forEach(function (city) {

                if (cityLast === city) {
                    content += '<li>' + city + '<li></ul>';
                }
                else {
                    if (contentIndex < 3) {
                        content += '<li>' + city + '<li>';
                    }
                    else {
                        content += '</ul><ul><li>' + city + '<li>';
                        contentIndex = 0
                    }
                    contentIndex += 1
                }

            });

            $('.cities-list').html(content);
        });

        function addMarker(map, lat, long, title, icon, content) {
            var marker = new google.maps.Marker({
                position: new google.maps.LatLng(lat, long),
                title: title,
                icon: icon,
                map: map
            });
            var info = new google.maps.InfoWindow({
                content: content
            });
            marker.addListener('click', function () {
                info.open(map, marker);
            });
            return marker;
        }

        function initializeMap() {
            map = new google.maps.Map(document.getElementById("map"));

            markers.push(addMarker(map,
                51.4982,
                31.2893,
                "Chernigov ",
                "<?= get_template_directory_uri();?>/img/icon-marker.png",
                "Chernigov "));

            markers.push(addMarker(map,
                50.4501,
                30.5233,
                "Kyiv ",
                "<?= get_template_directory_uri();?>/img/icon-marker.png",
                "Kyiv "));

            markers.push(addMarker(map,
                50.9215,
                34.8253,
                "Sumy ",
                "<?= get_template_directory_uri();?>/img/icon-marker.png",
                "Sumy "));

            markers.push(addMarker(map,
                46.4598,
                30.5717,
                "Odessa ",
                "<?= get_template_directory_uri();?>/img/icon-marker.png",
                "Odessa "));

            markers.push(addMarker(map,
                49.8327,
                23.9421,
                "Lviv ",
                "<?= get_template_directory_uri();?>/img/icon-marker.png",
                "Lviv "));

            markers.push(addMarker(map,
                49.9935,
                36.2304,
                "Kharkiv ",
                "<?= get_template_directory_uri();?>/img/icon-marker.png",
                "Kharkiv "));


            if (markers.length == 1) {
                map.setCenter(markers[0].getPosition());
                map.setZoom(8);
            } else {
                var bounds = new google.maps.LatLngBounds();
                for (var i = 0; i < markers.length; i++) {
                    bounds.extend(markers[i].getPosition());
                }
                map.fitBounds(bounds);
            }
        }

        google.maps.event.addDomListener(window, 'load', initializeMap);
    </script>
<?php get_footer(); ?>
