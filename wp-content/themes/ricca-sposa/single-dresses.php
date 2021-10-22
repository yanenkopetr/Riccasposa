<?php get_header();?>

<?php 
    global $post;
    $terms = get_the_terms($post->ID, 
        array(
            'collections',
            'silhouette'
        ), 
        array(
            'orderby'=>'term_id',
            'order'=>'DESC'
        )
    );
?>
<section class="section-product">
    <div class="container">
        <div class="breadcrumbs">
            <a href="/dresses" class="btn-back">
                <i class="icon-left-arrow-chevron"></i> Назад
            </a>
        </div>
        
        <?php if ( have_posts() ) : while (have_posts()) : the_post();?>
        
        <?php
            $mainImg = get_field('featured_img');
            $img = get_field('gallery_img');
            $img1 = get_field('gallery_img_1');
            $img2 = get_field('gallery_img_2');
            $img3 = get_field('gallery_img_3');
            $img4 = get_field('gallery_img_4');
            $img5 = get_field('gallery_img_5');
            $img6 = get_field('gallery_img_6');
            $img7 = get_field('gallery_img_7');
            $img8 = get_field('gallery_img_8');
            $img9 = get_field('gallery_img_9');
            $img10 = get_field('gallery_img_10');
        ?>
        
        <div id="<?php echo $post->ID ?>" class="product">
            <div class="product-gallery">
                <div class="slider-for">
                    <div class="product-img-item">
                        <a href="<?php echo $mainImg;?>">
                            <img src="<?php echo $mainImg;?>" alt="ricca sposa <?php the_title();?>">
                            <i class="icon-zoom-in"></i>
                        </a>
                    </div>
                    <?php if($img) { ?>
                    <div class="product-img-item">
                        <a href="<?php echo $img;?>">
                            <img src="<?php echo $img;?>" alt="ricca sposa <?php the_title();?>">
                            <i class="icon-zoom-in"></i>
                         </a>
                    </div>
                    <?php } if($img1) { ?>
                    <div class="product-img-item">
                        <a href="<?php echo $img1;?>">
                            <img src="<?php echo $img1;?>" alt="ricca sposa <?php the_title();?>">
                            <i class="icon-zoom-in"></i>
                         </a>
                    </div>
                    <?php } if($img2) { ?>
                    <div class="product-img-item">
                        <a href="<?php echo $img2;?>">
                            <img src="<?php echo $img2;?>" alt="ricca sposa <?php the_title();?>">
                            <i class="icon-zoom-in"></i>
                        </a>
                    </div>
                   <?php } if($img3) { ?>
                    <div class="product-img-item">
                        <a href="<?php echo $img3;?>">
                            <img src="<?php echo $img3;?>" alt="ricca sposa <?php the_title();?>">
                            <i class="icon-zoom-in"></i>
                        </a>
                    </div>
                    <?php } if($img4) { ?>
                    <div class="product-img-item">
                        <a href="<?php echo $img4;?>">
                            <img src="<?php echo $img4;?>" alt="ricca sposa <?php the_title();?>">
                            <i class="icon-zoom-in"></i>
                        </a>
                    </div>
                    <?php } if($img5) { ?>
                    <div class="product-img-item">
                        <a href="<?php echo $img5;?>">
                            <img src="<?php echo $img5;?>" alt="ricca sposa <?php the_title();?>">
                            <i class="icon-zoom-in"></i>
                        </a>
                    </div>
                    <?php } if($img6) { ?>
                    <div class="product-img-item">
                        <a href="<?php echo $img6;?>">
                            <img src="<?php echo $img6;?>" alt="ricca sposa <?php the_title();?>">
                            <i class="icon-zoom-in"></i>
                        </a>
                    </div>
                    <?php } if($img7) { ?>
                    <div class="product-img-item">
                        <a href="<?php echo $img7;?>">
                            <img src="<?php echo $img7;?>" alt="ricca sposa <?php the_title();?>">
                            <i class="icon-zoom-in"></i>
                        </a>
                    </div>
                    <?php } if($img8) { ?>
                    <div class="product-img-item">
                        <a href="<?php echo $img8;?>">
                            <img src="<?php echo $img8;?>" alt="ricca sposa <?php the_title();?>">
                            <i class="icon-zoom-in"></i>
                        </a>
                    </div>
                    <?php } if($img9) { ?>
                    <div class="product-img-item">
                        <a href="<?php echo $img9;?>">
                            <img src="<?php echo $img9;?>" alt="ricca sposa <?php the_title();?>">
                            <i class="icon-zoom-in"></i>
                        </a>
                    </div>
                    <?php } if($img10) { ?>
                    <div class="product-img-item">
                        <a href="<?php echo $img10;?>">
                            <img src="<?php echo $img10;?>" alt="ricca sposa <?php the_title();?>">
                            <i class="icon-zoom-in"></i>
                        </a>
                    </div>
                    <?php } ?>
                </div>
                <div class="slider-nav">
                    <div class="product-img-nav">
                        <img src="<?php echo $mainImg;?>" alt="ricca sposa <?php the_title();?>">
                    </div>
                    <?php if($img) { ?>
                    <div class="product-img-nav">
                        <img src="<?php echo $img;?>" alt="ricca sposa <?php the_title();?>">
                    </div>
                    <?php } if($img1) { ?>
                    <div class="product-img-nav">
                        <img src="<?php echo $img1;?>" alt="ricca sposa <?php the_title();?>">
                    </div>
                    <?php } if($img2) { ?>
                    <div class="product-img-nav">
                        <img src="<?php echo $img2;?>" alt="ricca sposa <?php the_title();?>">
                    </div>
                   <?php } if($img3) { ?>
                    <div class="product-img-nav">
                        <img src="<?php echo $img3;?>" alt="ricca sposa <?php the_title();?>">
                    </div>
                    <?php } if($img4) { ?>
                    <div class="product-img-nav">
                        <img src="<?php echo $img4;?>" alt="ricca sposa <?php the_title();?>">
                    </div>
                    <?php } if($img5) { ?>
                    <div class="product-img-nav">
                        <img src="<?php echo $img5;?>" alt="ricca sposa <?php the_title();?>">
                    </div>
                    <?php } if($img6) { ?>
                    <div class="product-img-nav">
                        <img src="<?php echo $img6;?>" alt="ricca sposa <?php the_title();?>">
                    </div>
                    <?php } if($img7) { ?>
                    <div class="product-img-nav">
                        <img src="<?php echo $img7;?>" alt="ricca sposa <?php the_title();?>">
                    </div>
                    <?php } if($img8) { ?>
                    <div class="product-img-nav">
                        <img src="<?php echo $img8;?>" alt="ricca sposa <?php the_title();?>">
                    </div>
                    <?php } if($img9) { ?>
                    <div class="product-img-nav">
                        <img src="<?php echo $img9;?>" alt="ricca sposa <?php the_title();?>">
                    </div>
                    <?php } if($img10) { ?>
                    <div class="product-img-nav">
                        <img src="<?php echo $img10;?>" alt="ricca sposa <?php the_title();?>">
                    </div>
                    <?php } ?>
                </div>
            </div>
            <div class="product-description">
                <div class="product-name name"><?php the_title();?></div>
                <a href="<?php the_permalink();?>" class="permalink" style="display: none"></a>
                <div class="specifications">
                   
                    <?php 
                        if ($terms) {
                            foreach ($terms as $term) { ?>
                                 <?php //var_dump($terms);?>
								<?php
                                    if($term->taxonomy == 'collections') { 
                                        $sale = get_field('sale', $term);
                                    }
                                ?>
                                <div class="specification-item">
                                    <?php if($term->taxonomy == 'collections') { ?>
                                        <div class="name">Коллекция</div>
                                        <div class="value"><?php echo $term->name ?></div>
                                    <?php } ?>
                                    <?php if($term->taxonomy == 'silhouette') { ?>
                                        <div class="name">Силуэт</div>
                                        <div class="value"><?php echo $term->name ?></div>
                                    <?php } ?>
                                </div>
                            
                            <?php } 
                        } ?>
					<?php 
						$price = get_field('price');
						$price_uah = get_field('price_uah');
						$dress_sale = get_field( 'dress_sale' );
					?>
					<?php if(strlen($price) > 0) { ?>
						<div class="specification-item">
						
							<?php 
								// Расчёт стоимости со скидкой на коллекцию - доллары
								$salePersentCollection = $price / 100 * ceil($sale); 
								$salePriceCollection = $price - ceil($salePersentCollection);
								
								// Расчёт стоимости со скидкой на коллекцию - грн
                			    $salePersentCollectionUah = $price_uah / 100 * ceil($sale); 
                			    $salePriceCollectionUah = $price_uah - ceil($salePersentCollectionUah);
								
								// Расчёт стоимости со скидкой на отдельное платье - доллары
								$salePersent = $price / 100 * ceil($dress_sale); 
								$salePrice = $price - ceil($salePersent);
								
								// Расчёт стоимости со скидкой на отдельное платье - грн
								$salePersentUah = $price_uah / 100 * ceil($dress_sale); 
								$salePriceUah = $price_uah - ceil($salePersentUah);
								
								echo '<div style="display: none">'.$salePersentUah.'</div>';
							?>
							
						
							<div class="name">Цена</div>
							<div class="value">
								<span class="usd-rate">
									<?php if(strlen($sale) !== 0) : 
											echo '$ ' . ceil($salePriceCollection) . '<span class="initial_price">$ ' . $price .'</span>';
										elseif(strlen($dress_sale)>0) :
											echo '$ ' . ceil($salePrice) . '<span class="initial_price">$ ' . $price .'</span>';
										else : echo '$ ' . $price;
									endif; ?>
								</span>
								<span class="uah-rate" style="display: none">
									<?php if(strlen($sale) !== 0) : 
											echo ceil($salePriceCollectionUah) . ' грн' . '<span class="initial_price">' . $price_uah . ' грн' . '</span>';
										elseif(strlen($dress_sale)>0) :
											echo ceil($salePriceUah) . ' грн' . '<span class="initial_price">' . $price_uah . ' грн' . '</span>';
										else : echo $salePriceUah . ' грн';
									endif; ?>
								</span>
							</div>
						</div>
					<?php } ?>
                </div>
                <div class="button-wrapp">
                    <a href="#" class="btn-add-basket btn btn-dark">Добавить в примерочную</a>
                </div>
				
				<?php $type = get_the_terms($post->ID, 'type'); ?>
                <?php foreach ($type as $t) { ?>
                    <?php if($t->term_taxonomy_id != 4) { ?>
                        <a href="#" title="таблица размеров" class="popup_link">Таблица размеров</a>
                    <?php } ?>
                <?php } ?>
				
                <div class="description">
                    <div class="h">Описание</div>
                    <div class="p"><?php the_content();?></div>
                </div>
            </div>
			<div class="table-size_wrap" style="display: none">
                <div class="overlay"></div>
                <img src="<?php echo get_template_directory_uri()?>/img/size-table.jpg">
            </div>
        </div>
        <?php endwhile; endif;?>
    </div>
</section>

<?php get_footer();?>