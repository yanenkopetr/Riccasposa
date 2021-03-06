<?php 
    //get_header(); 
    global $post;
?>
<h1>Anton  архив</h1>
<section class="section-catalog-list">
    <div class="container">       
        <div class="catalog-col">
            <?php if ( have_posts() ) : ?>
                <div class="products-list">
                    <?php while ( have_posts() ) : the_post(); ?>
                	<div id="<?php echo $post->ID ?>" class="product-col">
                        <div class="product-item">
							<?php 
                                $postTerms = wp_get_post_terms($post->ID, array ('colections_type'), 'name' );
                                // echo "<pre>";
                                // print_r($postTerms);
                                // echo "<pre>";
                                foreach( $postTerms as $term ) {
                                    if ($term->parent != 0) {
                                        echo "<a href=''>{$term->name}</a>";
                                    }
                                }
                            ?>
                        </div>
                    </div>
                    <?php endwhile;?>
                    
                        <?php $args = array(
                        'show_all'     => false,
                        'end_size'     => 1,
                        'mid_size'     => 0,
                        'prev_next'    => true,
                        'prev_text'    => '«',
                        'next_text'    => '»',
                        'add_args'     => false,
                        'add_fragment' => '',
                        'before_page_number' => '',
                        'after_page_number' => '',
                        'screen_reader_text' => '',
                        )
                    ?>
        		    <div class="pagination-wrapp">
        		       <?php the_posts_pagination($args);?>
                    </div>
                
                </div>
                <?php else : ?>
                
                <div style="text-align: center">
                    <p>Нет результатов соответствующих Вашему запросу</p>
                    <a href="/dresses" class="btn btn-border" title="Вернуться к каталогу">Вернуться к каталогу</a>
                </div>

            <?php endif;?>
        </div>
    </div>
</section>

<?php
get_footer();