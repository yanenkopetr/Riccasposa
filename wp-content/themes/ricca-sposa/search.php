<?php get_header(); ?>

<section>
    <div class="container">
        <?php if ( have_posts() ) : ?>
        
        	<div class="h1">
        	    <div class="p">Результаты поиска:</div>
        		<span class="page-description"><?php echo get_search_query(); ?></span>
        	</div>
        
        
        	<?php
        	// Start the Loop.
        	while ( have_posts() ) :
        		the_post();
        		
        		the_title();
        		//the_content();
        
        		/*
        		 * Include the Post-Format-specific template for the content.
        		 * If you want to override this in a child theme, then include a file
        		 * called content-___.php (where ___ is the Post Format name) and that will be used instead.
        		 */
        		//get_template_part( 'template-parts/content/content', 'excerpt' );
        
        		// End the loop.
        	endwhile;

    	else : ?>
    		<div class="p">По вашему запросу ничего не найдено</div>
    
    	<?php endif; ?>
	</div>
</section>

<?php get_footer();
