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
            <a href="/dealers/ukraine/" class="listCountry-btn mr-37" data-marker="Ukraine">Ukraine</a>
            <a href="#" class="listCountry-btn mr-37" data-marker="Russia">Russia</a>
            <a href="#" class="listCountry-btn mr-37" data-marker="Belarus">Belarus</a>
            <a href="#" class="listCountry-btn mr-37" data-marker="Kazakhstan">KAZAKHSTAN</a>
            <a href="#" class="listCountry-btn" data-marker="Lithuania">LITHUANIA</a>
            <a href="#" class="listCountry-btn mr-37" data-marker="Romania">ROMANIA</a>
            <a href="#" class="listCountry-btn mr-37" data-marker="Croatia">CROATIA</a>
            <a href="#" class="listCountry-btn mr-37" data-marker="Germany">GERMANY</a>
            <a href="#" class="listCountry-btn mr-37" data-marker="Greece">GREECE</a>
            <a href="#" class="listCountry-btn" data-marker="Cyprys">CYPRYS</a>
            <a href="#" class="listCountry-btn mr-37" data-marker="Uae">UAE</a>
            <a href="#" class="listCountry-btn mr-37" data-marker="Italy">ITALY</a>
            <a href="#" class="listCountry-btn mr-37" data-marker="Austria">AUSTRIA</a>
            <a href="#" class="listCountry-btn mr-37" data-marker="Sweden">SWEDEN</a>
            <a href="#" class="listCountry-btn" data-marker="Africa">AFRICA</a>
            <a href="#" class="listCountry-btn mr-37" data-marker="United Kingdom">UNITED KINGDOM</a>
            <a href="#" class="listCountry-btn mr-37" data-marker="Usa">USA</a>
            <a href="#" class="listCountry-btn mr-37" data-marker="Canada">CANADA</a>
            <a href="#" class="listCountry-btn mr-37" data-marker="Portugal">PORTUGAL</a>
            <a href="#" class="listCountry-btn" data-marker="Poland">POLAND</a>
            <a href="#" class="listCountry-btn mr-37" data-marker="Slovakia">SLOVAKIA</a>
            <a href="#" class="listCountry-btn mr-37" data-marker="Serbia">SERBIA</a>
            <a href="#" class="listCountry-btn mr-37" data-marker="Dominican">DOMINICAN</a>
            <a href="#" class="listCountry-btn mr-37" data-marker="Azerbajan">AZERBAJAN</a>
            <a href="#" class="listCountry-btn" data-marker="China">CHINA</a>
            <a href="#" class="listCountry-btn mr-37" data-marker="France">FRANCE</a>
            <a href="#" class="listCountry-btn mr-37" data-marker="Armenia">ARMENIA</a>
            <a href="#" class="listCountry-btn mr-37" data-marker="Latvia">LATVIA</a>
            <a href="#" class="listCountry-btn mr-37" data-marker="Bosnia and Herzegovina">BOSNIA AND<br>HERZEGOVINA</a>
            <a href="#" class="listCountry-btn mr-37" data-marker="Bulgaria">BULGARIA</a>
            <a href="#" class="listCountry-btn" data-marker="Moldova">MOLDOVA</a>
            <a href="#" class="listCountry-btn mr-37" data-marker="Brazil">BRAZIL</a>
            <a href="#" class="listCountry-btn mr-37" data-marker="Taiwan">TAIWAN</a>
            <a href="#" class="listCountry-btn mr-37" data-marker="Algeria">ALGERIA</a>
            <a href="#" class="listCountry-btn mr-37" data-marker="Norway">NORWAY</a>
            <a href="#" class="listCountry-btn" data-marker="Slovenia">SLOVENIA</a>
            <a href="#" class="listCountry-btn mr-37" data-marker="New Zealand">NEW ZEALAND</a>
            <a href="#" class="listCountry-btn mr-37" data-marker="Qatar">QATAR</a>
            <a href="#" class="listCountry-btn mr-37" data-marker="Australia">AUSTRALIA</a>
            <a href="#" class="listCountry-btn mr-37" data-marker="Switzerland">SWITZERLAND</a>
            <a href="#" class="listCountry-btn" data-marker="Singapore">SINGAPORE</a>
            <a href="#" class="listCountry-btn" data-marker="Uzbekistan">UZBEKISTAN</a>
        </div>
    </section>

    <section class="dealers-block">
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
            <dis class="container-list cities-list"></dis>
        </div>
    </section>

    <section class="dealers-map">
        <div id="map" class="map"></div>
        <div class="dealers-map_block">
            <a href="/partnership/" class="dealers-map_btn">Join Us</a>
            <p class="dealers-map_string">How to become a partner of Ricca Sposa</p>
        </div>
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

        function loadAllCountries() {

            deleteMarkers();

            $.each( county, function( index, value ){
                value.forEach(function (marker) {

                markers.push(addMarker(map,
                    marker.lat,
                    marker.long,
                    marker.name,
                    "<?= get_template_directory_uri();?>/img/icon-marker.png",
                    marker.name));

                });

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
        }

        $(".listCountry-btn").click(function (event) {
            event.preventDefault();

            $('.dealers-block').show();
            $('.dealers-country').hide();
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
                    content += '<li>' + city + '</li></ul>';
                }
                else {
                    if (contentIndex < 3) {
                        content += '<li>' + city + '</li>';
                    }
                    else {
                        content += '</ul><ul><li>' + city + '</li>';
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
            loadAllCountries();
        }

        google.maps.event.addDomListener(window, 'load', initializeMap);
    </script>
<?php get_footer(); ?>
