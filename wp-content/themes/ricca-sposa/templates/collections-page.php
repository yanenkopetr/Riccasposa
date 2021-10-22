<?php
/* Template Name: Коллекция */
?>

<?php get_header();?>

<?php global $post;?>
<?php if ( have_posts() ) : while (have_posts()) : the_post();?>

<?php
    $block1 = get_field('block_1');
    $block2 = get_field('block_2');
    $block3 = get_field('block_3');
    $block4 = get_field('block_4');
    $block5 = get_field('block_5');
    $block6 = get_field('block_6');
    $block7 = get_field('block_7');
    $block8 = get_field('block_8');
    $block9 = get_field('block_9');
    $block10 = get_field('block_10');
    $block11 = get_field('block_11');
    $block12 = get_field('block_12');
?>

    <div class="container">
        <div class="collection-h"><?php the_title();?></div>
    </div>   

    <div class="collection-page">
    
        <?php if(strlen($block1['title']) != 0) {?>
        <section class="section-card section-left">
            <div class="container">
                <div class="card-wrapper cart-collection">
                    <div class="img-block">
                        <img src="<?php echo $block1['img'] ?>" alt="<?php echo $block1['title'] ?>">
                    </div>
                    <div class="text-block">
                        <div class="h"><?php echo $block1['title'] ?></div>
                        <div class="p"><?php echo $block1['description'] ?></div>
                        <div class="button-wrapp">
                            <a href="<?php echo $block1['link'] ?>" class="btn btn-border">посмотреть коллекцию</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <?php } ?>
        
        <?php if(strlen($block2['title']) != 0) {?>
        <section class="section-card section-right">
            <div class="container">
                <div class="card-wrapper cart-collection">
                    <div class="img-block">
                        <img src="<?php echo $block2['img'] ?>" alt="<?php echo $block2['title'] ?>">
                    </div>
                    <div class="text-block">
                        <div class="h"><?php echo $block2['title'] ?></div>
                        <div class="p"><?php echo $block2['description'] ?></div>
                        <div class="button-wrapp">
                            <a href="<?php echo $block2['link'] ?>" class="btn btn-border">посмотреть коллекцию</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <?php } ?>    
        
        <?php if(strlen($block3['title']) != 0) {?>
        <section class="section-card section-left">
            <div class="container">
                <div class="card-wrapper cart-collection">
                    <div class="img-block">
                        <img src="<?php echo $block3['img'] ?>" alt="<?php echo $block3['title'] ?>">
                    </div>
                    <div class="text-block">
                        <div class="h"><?php echo $block3['title'] ?></div>
                        <div class="p"><?php echo $block3['description'] ?></div>
                        <div class="button-wrapp">
                            <a href="<?php echo $block3['link'] ?>" class="btn btn-border">посмотреть коллекцию</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <?php } ?> 
        
        <?php if(strlen($block4['title']) != 0) {?>
        <section class="section-card section-right">
            <div class="container">
                <div class="card-wrapper cart-collection">
                    <div class="img-block">
                        <img src="<?php echo $block4['img'] ?>" alt="<?php echo $block4['title'] ?>">
                    </div>
                    <div class="text-block">
                        <div class="h"><?php echo $block4['title'] ?></div>
                        <div class="p"><?php echo $block4['description'] ?></div>
                        <div class="button-wrapp">
                            <a href="<?php echo $block4['link'] ?>" class="btn btn-border">посмотреть коллекцию</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <?php } ?>
        
        <?php if(strlen($block5['title']) != 0) {?>
        <section class="section-card section-left">
            <div class="container">
                <div class="card-wrapper cart-collection">
                    <div class="img-block">
                        <img src="<?php echo $block5['img'] ?>" alt="<?php echo $block5['title'] ?>">
                    </div>
                    <div class="text-block">
                        <div class="h"><?php echo $block5['title'] ?></div>
                        <div class="p"><?php echo $block5['description'] ?></div>
                        <div class="button-wrapp">
                            <a href="<?php echo $block5['link'] ?>" class="btn btn-border">посмотреть коллекцию</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <?php } ?>
        
        <?php if(strlen($block6['title']) != 0) {?>
        <section class="section-card section-right">
            <div class="container">
                <div class="card-wrapper cart-collection">
                    <div class="img-block">
                        <img src="<?php echo $block6['img'] ?>" alt="<?php echo $block6['title'] ?>">
                    </div>
                    <div class="text-block">
                        <div class="h"><?php echo $block6['title'] ?></div>
                        <div class="p"><?php echo $block6['description'] ?></div>
                        <div class="button-wrapp">
                            <a href="<?php echo $block6['link'] ?>" class="btn btn-border">посмотреть коллекцию</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <?php } ?>
        
        <?php if(strlen($block7['title']) != 0) {?>
        <section class="section-card section-left">
            <div class="container">
                <div class="card-wrapper cart-collection">
                    <div class="img-block">
                        <img src="<?php echo $block7['img'] ?>" alt="<?php echo $block1['title'] ?>">
                    </div>
                    <div class="text-block">
                        <div class="h"><?php echo $block7['title'] ?></div>
                        <div class="p"><?php echo $block7['description'] ?></div>
                        <div class="button-wrapp">
                            <a href="<?php echo $block7['link'] ?>" class="btn btn-border">посмотреть коллекцию</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <?php } ?>
        
        <?php if(strlen($block8['title']) != 0) {?>
        <section class="section-card section-right">
            <div class="container">
                <div class="card-wrapper cart-collection">
                    <div class="img-block">
                        <img src="<?php echo $block8['img'] ?>" alt="<?php echo $block1['title'] ?>">
                    </div>
                    <div class="text-block">
                        <div class="h"><?php echo $block8['title'] ?></div>
                        <div class="p"><?php echo $block8['description'] ?></div>
                        <div class="button-wrapp">
                            <a href="<?php echo $block8['link'] ?>" class="btn btn-border">посмотреть коллекцию</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <?php } ?>
        
        <?php if(strlen($block9['title']) != 0) {?>
        <section class="section-card section-left">
            <div class="container">
                <div class="card-wrapper cart-collection">
                    <div class="img-block">
                        <img src="<?php echo $block9['img'] ?>" alt="<?php echo $block1['title'] ?>">
                    </div>
                    <div class="text-block">
                        <div class="h"><?php echo $block9['title'] ?></div>
                        <div class="p"><?php echo $block9['description'] ?></div>
                        <div class="button-wrapp">
                            <a href="<?php echo $block9['link'] ?>" class="btn btn-border">посмотреть коллекцию</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <?php } ?>
        
        <?php if(strlen($block10['title']) != 0) {?>
        <section class="section-card section-right">
            <div class="container">
                <div class="card-wrapper cart-collection">
                    <div class="img-block">
                        <img src="<?php echo $block10['img'] ?>" alt="<?php echo $block1['title'] ?>">
                    </div>
                    <div class="text-block">
                        <div class="h"><?php echo $block10['title'] ?></div>
                        <div class="p"><?php echo $block10['description'] ?></div>
                        <div class="button-wrapp">
                            <a href="<?php echo $block10['link'] ?>" class="btn btn-border">посмотреть коллекцию</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <?php } ?>
    
    </div>
    
<?php endwhile; endif;?>

<?php get_footer();?>