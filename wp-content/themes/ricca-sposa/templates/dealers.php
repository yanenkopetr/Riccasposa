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
            <p class="pr form-selected_p">
                <label for="formCountry-selected" class="formCountry-label">
                    <span>Country</span>
                    <svg width="12" height="10" viewBox="0 0 10 10" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M0 4.75H12M5.7 10L5.7 0" stroke="#929292"/>
                    </svg>
                </label>
                <input type="text" name="form-country" id="formCountry-selected">
            </p>
            <p>
                <label for="formCity-selected">Country</label>
                <input type="text" name="form-country" id="formCity-selected">
            </p>        
        </form>
    </section>

<?php get_footer();?>