<?php if (!defined('ABSPATH')) die('No direct access allowed'); ?>
<?php
$inique_id = uniqid();
//+++
$data = array();
if (!empty($posts_ids))
{
    if (is_array($posts_ids))
    {
        foreach ($posts_ids as $post_id)
        {
            $tmp = array();
            $tmp['latitude'] = get_post_meta($post_id, $metakey . '_latitude', true);
            $tmp['longitude'] = get_post_meta($post_id, $metakey . '_longitude', true);
            $tmp['desc'] = get_post_meta($post_id, $metakey . '_desc', true);
            $tmp['post_id'] = $post_id;
            if (empty($tmp['latitude']) AND $tmp['longitude'])
            {
                continue;
            }
            $data[] = $tmp;
        }
    }
}
//***
?>

<style type="text/css">
    #map_canvas_<?php echo $inique_id ?> div img {max-width:none !important;}

    #map_wrapper_<?php echo $inique_id ?> {
        height: <?php echo $height ?>px;
        /* width: <?php echo $width ?>px; */
    }

    #map_canvas_<?php echo $inique_id ?> {
        width: 100%;
        height: 100%;
    }
</style>

<div id="map_wrapper_<?php echo $inique_id ?>">
    <div id="map_canvas_<?php echo $inique_id ?>" class="mapping"></div>
</div>

<script type="text/javascript">
    jQuery(function () {
        mdf_gmap_draw_<?php echo $inique_id ?>(<?php echo $zoom ?>, "<?php echo strtolower($maptype) ?>");
    });

    function mdf_gmap_draw_<?php echo $inique_id ?>(zoom, maptype) {
        // Multiple Markers
        var markers = [
<?php if (!empty($data) AND is_array($data)): ?>
    <?php foreach ($data as $value) : ?>
        <?php
        if (empty($value['latitude']))
        {
            continue;
        }
        ?>
                ['<?php echo get_the_title($value['post_id']) ?>', <?php echo $value['latitude'] ?>, <?php echo $value['longitude'] ?>],
    <?php endforeach; ?>
<?php endif; ?>
        ];
                //+++ if no marhers - do not draw map
                if (markers.length == 0) {
            jQuery('#map_wrapper_<?php echo $inique_id ?>').remove();
            return;
        }


        var map;
        var bounds = new google.maps.LatLngBounds();
        var mapOptions = {
            mapTypeId: maptype
        };

        // Display a map on the page
        map = new google.maps.Map(document.getElementById("map_canvas_<?php echo $inique_id ?>"), mapOptions);
        map.setTilt(45);

        console.log(markers);
        //+++
        // Info Window Content
        var infoWindowContent = [
<?php if (!empty($data) AND is_array($data)): ?>
    <?php foreach ($data as $value) : ?>
        <?php
        if (empty($value['latitude']))
        {
            continue;
        }
        ?>
                ['<div class="info_content"><?php echo htmlspecialchars($value['desc'], ENT_QUOTES) ?></div>'],
    <?php endforeach; ?>
<?php endif; ?>
        ];
                // Display multiple markers on a map
                var infoWindow = new google.maps.InfoWindow(), marker, i;

        // Loop through our array of markers & place each one on the map
        for (i = 0; i < markers.length; i++) {
            var position = new google.maps.LatLng(markers[i][1], markers[i][2]);
            bounds.extend(position);
            marker = new google.maps.Marker({
                position: position,
                map: map,
                title: markers[i][0]
            });

            // Allow each marker to have an info window
            google.maps.event.addListener(marker, 'click', (function (marker, i) {
                return function () {
                    infoWindow.setContent(infoWindowContent[i][0]);
                    infoWindow.open(map, marker);
                };
            })(marker, i));

            // Automatically center the map fitting all markers on the screen
            map.fitBounds(bounds);
        }

        // Override our map zoom level once our fitBounds function runs (Make sure it only runs once)
        var boundsListener = google.maps.event.addListener((map), 'bounds_changed', function (event) {
            this.setZoom(zoom);
            google.maps.event.removeListener(boundsListener);
        });

    }

</script>

