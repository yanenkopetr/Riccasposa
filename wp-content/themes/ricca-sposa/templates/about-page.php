<?php
/* Template Name: О нас */
?>

<?php get_header(); ?>
<?php global $post; ?>
<?php if (have_posts()) : while (have_posts()) : the_post(); ?>

    <?php
    $block1 = get_field('block_1');
    $block2 = get_field('block_2');
    ?>

    <style>
        @import url(<?= get_stylesheet_directory_uri() . '/css/about.css'?>);
    </style>

    <section class="section first-section">
        <div class="container">
            <span class="about-title"><?= $block1['title'] ?></span>
        </div>
    </section>

    <section class="section second-section">
        <div class="container-main">
            <div class="row">
                <div class="about-info"><span><?= $block1['description'] ?></span></div>
                <div class="image-block about-info"><img src="<?= $block1['img']['url'] ?>" alt="Image"></div>
            </div>
        </div>
    </section>

    <section class="section third-section">
        <div class="container">
            <div class="row">
                <div class="garant_title"><span><?= $block2['garant_title']?></span></div>
            </div>
            <div class="row garant-row">
                <?php foreach ($block2['garants'] as $key => $garant) { ?>
                    <div class="garant-block">
                        <img src="<?= get_template_directory_uri();?>/img/<?= $garant['icon_name'] ?>" alt="icon">
                        <span><?= $garant['title'] ?></span>
                    </div>
                <?php } ?>
            </div>

        </div>
    </section>

    <section class="fours-section">
        <div class="underline_block"></div>
    </section>

    <section class="fives-section">
        <div class="quotes">“</div>
        <div class=""><span>We tried to create for you a comfortable work environment where your interests are taken into account and which promotes the long effective cooperation!</span></div>
        <div class="quotes transform-rotate-180"><span>“</span></div>
    </section>

    <section class="six-section">
        <div class="underline_block"></div>
    </section>

<?php endwhile; endif; ?>
<?php get_footer(); ?>
