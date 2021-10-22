<?php
/* Template Name: Контакты */
?>

<?php get_header();?>

<section class="section-contacts">
    <div class="container">
        <div class="contacts-wrapp">
            <div class="contacts-col animated full-visible">
                <?php if ( have_posts() ) : while (have_posts()) : the_post();?>
                    <div class="h">Наши<br> контакты</div>
                    <div class="contacts-list">
                        <?php the_content();?>
                    </div>
                <?php endwhile; endif;?>
            </div>

            <div class="map-col">
                <img src="<?php echo get_template_directory_uri();?>/img/map.jpg" alt="">
            </div>
        </div>
    </div>
</section>x

<?php get_footer();?>
