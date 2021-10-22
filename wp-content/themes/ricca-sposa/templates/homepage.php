<?php
/* Template Name: Homepage */
?>


<?php get_header(); ?>

<?php global $post; ?>
<?php if (have_posts()) : while (have_posts()) : the_post(); ?>

    <?php
    $blocks = [get_field('block_1'), get_field('block_2'), get_field('block_3'), get_field('block_4')];

    foreach ($blocks as $key => $block) {
        ?>
        <section id="block-<?= $key + 1 ?>"
                 class="section-main relative-section animated ps2id" <?php echo $key == 0 ? "style=\"margin-top: 0px\"" : "" ?>>
            <div class="card-wrapper">
                <div class="img-block">
                    <img src="<?php echo $block['image'] ?>" alt="<?php echo $block['title'] ?>">
                </div>
                <div class="text-block right-central-block">

                    <div class="<?= $key !== 1 ? "main-title" : "main-title-shop" ?>">
                        <span><?php echo $block['title'] ?></span>
                    </div>
                    <div class="main-subtitle"><span><?php echo $block['subtitle'] ?></span></div>
                    <div class="button-wrapp">
                        <a href="<?php echo $block['link'] ?>"
                           class="btn btn-border"> <?= $key !== 1 ? "VIEW MORE" : "GO SHOPPING" ?></a>
                    </div>
                </div>
            </div>
        </section>

    <?php } ?>

    <div class="social-networks">
        <ul>
            <li>
                <a href="<?php echo home_url(); ?>">
                    <img src="<?php echo get_stylesheet_directory_uri(); ?>/img/facebook.svg" alt="">
                </a>
            </li>
            <li>
                <a href="<?php echo home_url(); ?>">
                    <img src="<?php echo get_stylesheet_directory_uri(); ?>/img/instagram.svg" alt="">
                </a>
            </li>
            <li>
                <a href="<?php echo home_url(); ?>">
                    <img src="<?php echo get_stylesheet_directory_uri(); ?>/img/pinterest.svg" alt="">
                </a>
            </li>
            <li>
                <a href="<?php echo home_url(); ?>">
                    <img src="<?php echo get_stylesheet_directory_uri(); ?>/img/youtube.svg" alt="">
                </a>
            </li>
            <li>
                <a href="<?php echo home_url(); ?>">
                    <img src="<?php echo get_stylesheet_directory_uri(); ?>/img/linkedid.svg" alt="">
                </a>
            </li>
        </ul>
    </div>

    <div class="vertical-scroll-information">
        <div id="scroll-info">
        </div>
        <div>SCROLL DOWN</div>
    </div>

    <div class="vertical-scroll-inicator">
        <div>01</div>
        <div id="progres-indicator">
            <div id="bar"></div>
        </div>
        <div>04</div>
    </div>

    <script>

        $(document).ready(function () {

            window.addEventListener('scroll', function () {
                for (var i = 0; i < 4; i++) {

                    let id = 'block-' + (i + 1);
                    var element = document.getElementById(id);
                    var position = element.getBoundingClientRect();

                    if (position.top >= 0 && position.bottom <= window.innerHeight) {
                        $("#progres-indicator #bar").css('margin-top', i * 28);

                        if (i === 0) {
                            $(".vertical-scroll-information").show()
                        }
                        else {
                            $(".vertical-scroll-information").hide()
                        }
                    }

                    if (position.top < window.innerHeight && position.bottom >= 0) {
                        $("#progres-indicator #bar").css('margin-top', i * 28);

                        if (i === 0) {
                            $(".vertical-scroll-information").show()
                        }
                        else {
                            $(".vertical-scroll-information").hide()
                        }
                    }
                }
            });
        });
    </script>


<?php endwhile; endif; ?>

<?php //get_footer(); ?>
