<?php 
    //get_header(); 
    global $post;
?>
<h1>Anton</h1>
<section class="section-catalog-list">
    <div class="container">       
        <div class="catalog-col">
            <?php if ( have_posts() ) : ?>
                <div class="products-list">
                    <?php while ( have_posts() ) : the_post(); ?>
                	<div id="<?php echo $post->ID ?>" class="product-col">
                        <div class="product-item">
							<?php 
                                // var_dump($post);
                                // $postTerms = wp_get_post_terms($post->ID, array ('colections_type'), 'name' );
                                echo "<pre>";
                                print_r($post);
                                echo "<pre>";
                                // foreach( $postTerms as $term ) {
                                //     echo $term->name;
                                // }
                            ?>
						
                            <div class="product-img">
                                
                            </div>
                            <a href="<?php echo the_permalink();?>" title="ricca sposa <?php the_title();?>" class="product-name">
                                <div class="name"><?php the_title();?></div>
                                <img class="arrow" src="<?php echo get_stylesheet_directory_uri() ;?>/img/arrow-dark.svg" alt="">
                            </a>
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