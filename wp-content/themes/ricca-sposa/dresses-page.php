<?php /* Template Name: Каталог платьев */ ?>

<?php get_header(); ?>

<?php
    global $post;
    $terms = get_terms( array(
        'collections',
        'silhouette',
        'color',
        'type',
        'waist',
        'sale'
    ),
    array(
        'orderby'=>'name',
        'order'=>'ASC',
    )
    );
?>
<?php //var_dump($terms)?>
<section class="section-catalog-list">
    <div class="container">
        <button class="btn-filter">
            Фильтры <i class="icon-options"></i>
        </button>
        <div class="filter-col">
            <div class="filters">
                <?php //echo do_shortcode( '[mdf_search_form id="198"]' ); ?>
                <?php dynamic_sidebar('filter_taxonomy'); ?>
            </div>
        </div>
        <div class="catalog-col">
            <div class="products-list">
                <?php
                $query = new WP_Query( array(//'posts_per_page'=>9,
                    'post_type'=>'dresses',
                    //'paged' => get_query_var('paged') ? get_query_var('paged') : 1)
                ));

                ?>
                <?php //while (have_posts()) : the_post();?>
                <?php if ( $query->have_posts() ) : while ($query->have_posts()) : $query->the_post();?>
                <?php $mainImg = get_field('featured_img') ;?>
                <div id="<?php echo $post->ID ?>" class="product-col">
                    <div class="product-item">
                        <div class="product-img">
                            <button class="btn-add-basket"><i class="icon-add"></i></button>
                            <a href="<?php echo the_permalink();?>" title="<?php the_title();?>"><img src="<?php echo $mainImg ;?>" alt=""></a>
                        </div>
                        <a href="<?php echo the_permalink();?>" title="ricca sposa <?php the_title();?>" class="product-name">
                            <div class="name"><?php the_title();?></div>
                            <img class="arrow" src="<?php echo get_stylesheet_directory_uri() ;?>/img/arrow-dark.svg" alt="">
                        </a>
                    </div>
                </div>

                <?php endwhile; endif ?>

            </div>

            <div class="pagination-wrapp">

            </div>
            <?php wp_reset_postdata(); ?>
        </div>
    </div>
</section>

<?php get_footer(); ?>
