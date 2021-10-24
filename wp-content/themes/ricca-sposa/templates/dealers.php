<?php
/* Template Name: Dealers */
?>

<?php get_header();?>

    <style>
        @import url(<?= get_stylesheet_directory_uri() . '/css/about.css'?>);
        @import url(<?= get_stylesheet_directory_uri() . '/css/dealers.css'?>);
    </style>

    <section class="dealers-block">
        <div class="dealers-block_title">
            <h1 class="dealers-title">OUR PARTNERS</h1>
            <hr class="dealers-title_bg">    
        </div>
        <div class="dealers-selected">
            <h2 class="selected-title">Select country and city:</h2>
        </div>
        <form action="dealers.php" mothod="post" name="selectedCountry" class="form-dealers_selected">
            <p>
                <label for="formCountry-selected">Country</label>
                <input type="text" name="form-country" id="formCountry-selected" placeholder="Country">
            </p>
            <p>
                <label for="formCity-selected">Country</label>
                <input type="text" name="form-country" id="formCity-selected">
            </p>        
        </form>
    </section>

<?php get_footer();?>