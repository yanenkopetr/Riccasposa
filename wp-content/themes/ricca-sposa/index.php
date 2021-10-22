<?php get_header();?>
<?php //dynamic_sidebar('filter_taxonomy'); ?>
<section>

    <div class="container">
        <?php if ( have_posts() ) : while (have_posts()) : the_post();?>
        <article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
        <?php the_title();?>
        
        
        <div class="entry-content">
        	<?php
        	the_content(
        		sprintf(
        			wp_kses(
        				/* translators: %s: Post title. Only visible to screen readers. */
        				__( 'Continue reading<span class="screen-reader-text"> "%s"</span>', 'twentynineteen' ),
        				array(
        					'span' => array(
        						'class' => array(),
        					),
        				)
        			),
        			get_the_title()
        		)
        	);
        
        	wp_link_pages(
        		array(
        			'before' => '<div class="page-links">' . __( 'Pages:', 'twentynineteen' ),
        			'after'  => '</div>',
        		)
        	);
        	?>
        </div><!-- .entry-content -->
        
        
        </article>
        
        <?php endwhile; endif;?>
    </div>
</section>
<?php get_footer();?>