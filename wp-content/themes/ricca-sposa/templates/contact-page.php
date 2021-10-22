<?php
/* Template Name: Контакты */
?>

<?php get_header();?>

    <style>
        @import url(<?= get_stylesheet_directory_uri() . '/css/about.css'?>);
        @import url(<?= get_stylesheet_directory_uri() . '/css/contact.css'?>);
    </style>

    <section class="contact-block">
        <div class="contact-block_title">
            <h1 class="contact-title">contacts</h1>
            <hr class="contact-title_bg">
        </div>

        <div class="contact-info">
            <div class="contact-country">
                <div class="contact-contacts">
                    <img class="contacts-img" src="<?= get_template_directory_uri();?>/img/map.svg" alt="">
                    <p class="contacts-country">Ukraine</p>
                    <p class="contacts-name">Fashion House Ricca Sposa</p>
                    <p class="contacts-phone">+38(095)315-06-00</p>
                </div>
            </div>
            <div class="contact-info_map">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d620.9966862033604!2d31.30819135187218!3d51.4951107303104!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zNTHCsDI5JzQyLjgiTiAzMcKwMTgnMjguNyJF!5e0!3m2!1sru!2sua!4v1634813347949!5m2!1sru!2sua" width="695" height="325" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            </div>
        </div>
    </section>

<?php get_footer();?>
