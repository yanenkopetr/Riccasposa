<?php
/* Template Name: Partnership */
?>

<?php get_header();?>

    <style>
        @import url(<?= get_stylesheet_directory_uri() . '/css/about.css'?>);
        @import url(<?= get_stylesheet_directory_uri() . '/css/partnership.css'?>);
    </style>

    <section class="partnership-block">
        <div class="title-block">
            <h1 class="partnership-title">AFFILIATE PROGRAM</h1>
            <hr class="partnership-title_bg">
        </div>
            <p class="partnership-text">
                If you want to enrich the collection of your boutique with dresses of 
                RiccaSposa on the best terms, we invite you to become our partner. We are always open for cooperation and strive to make this cooperation with RiccaSposa maximum profitable.
                Experience of many years has allowed us to create advantageous terms of cooperation for customers.
            </p>
        <form action="partnership.php" metod="post" name="partnershipBtn" class="partnershipbBtn-block">
            <div>
                <button type="submit" class="partnership-btn">Partnership</button>
                <div class="partnership-btn_plus"><img src="<?= get_template_directory_uri();?>/img/plus.svg"" alt=""></div>
            </div>
            <div>
                <button type="submit" class="partnership-btn">exlusive Partnership</button>
            </div> 
            <div>
                <button type="submit" class="partnership-btn">franchise</button>
            </div>
        </form>
    </section>

<?php get_footer();?>