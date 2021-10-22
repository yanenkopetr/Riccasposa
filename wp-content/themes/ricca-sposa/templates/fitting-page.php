<?php 
/* Template Name: Примерка */
?>

<?php get_header();?>

<section class="section-basket">
    <div class="container">
        <div class="breadcrumbs">
            <a href="/dresses" class="btn-back">
                <i class="icon-left-arrow-chevron"></i> Назад
            </a>
        </div>
        <div class="basket">
            <div class="info-col animated full-visible">
                <?php if ( have_posts() ) : while (have_posts()) : the_post();?>
                <div class="h"><?php the_title();?></div>
                <div class="p"><?php the_content();?></div>
            </div>
            <?php endwhile; endif;?>
            <div class="form-col">
                <div class="form">
                    <div class="basket-list"></div>
                    <div class="form">
                        <?php echo do_shortcode('[contact-form-7 id="85" title="Запись на примерку"]');?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<?php get_footer();?>