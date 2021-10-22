<?php
/* Template Name: Каталог */
?>

<?php get_header(); ?>

<?php
    $post_type = 'dresses';
    $taxonomies = get_object_taxonomies( array( 'post_type' => $post_type ) );
?>
<?php
    $args = array(
        'orderby' => 'id',
        'hide_empty' => 0,
        'taxonomy' => 'type'
    );
    $types = get_categories($args);
?>

<section class="section-catalog">
    <div class="container">
        <div class="catalog-list">
            <?php
                foreach( $types as $type ) {
                    $thumbnail = get_field('thumbnail', $type);
                    
                    $newargs = array (
                    'post_type' => 'dresses',
                    'tax_query' => array (
                        array (
                        'taxonomy' => 'type',
                        'field' => 'slug',
                        'terms' => $type->slug
                        )
                    )
                ); 
            ?>
                <div id="type-<?php echo $type->cat_ID?>" class="catalog-col">
                    <?php if($type->cat_ID == '2') { ?>
                    <a href="/wedding-collections" class="catalog-item">
                    <?php } ?>
                    <?php if($type->cat_ID == '3') { ?>
                    <a href="/evening-collections" class="catalog-item">
                    <?php } ?>
                    <?php if($type->cat_ID == '4') { ?>
                    <a href="/dresses/?slg=dresses&mdf_cat=-1&page_mdf=317" class="catalog-item">
                    <?php } ?>
                        <div class="img">
                            <img src="<?php echo $thumbnail['url']; ?>" alt="<?php echo $type->name; ?>">
                        </div>
                        <div class="overlay">
                            <div class="title-wrapp">
                                <div class="title"><?php echo $type->name;?></div>
                                <img class="arrow" src="<?php echo get_template_directory_uri();?>/img/arrow.svg" alt="<?php echo $type->name;?>">
                            </div>
                        </div>
                    </a>
                </div>
            
            <?php } ?>
            
        </div>
    </div>
</section>

<?php get_footer(); ?>