<!DOCTYPE html>
<html <?php language_attributes(); ?> class="no-js no-svg">
<head>
    <!-- Global site tag (gtag.js) -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-89403953-2"></script>
    <script>
        window.dataLayer = window.dataLayer || [];

        function gtag() {
            dataLayer.push(arguments);
        }

        gtag('js', new Date());

        gtag('config', 'UA-89403953-2');
    </script>
    <!-- END Global site tag (gtag.js)  -->
    <meta charset="<?php bloginfo('charset'); ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="apple-touch-icon" sizes="57x57"
          href="<?php echo get_stylesheet_directory_uri(); ?>/img/favicon/apple-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60"
          href="<?php echo get_stylesheet_directory_uri(); ?>/img/favicon/apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72"
          href="<?php echo get_stylesheet_directory_uri(); ?>/img/favicon/apple-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76"
          href="<?php echo get_stylesheet_directory_uri(); ?>/img/favicon/apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114"
          href="<?php echo get_stylesheet_directory_uri(); ?>/img/favicon/apple-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120"
          href="<?php echo get_stylesheet_directory_uri(); ?>/img/favicon/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144"
          href="<?php echo get_stylesheet_directory_uri(); ?>/img/favicon/apple-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152"
          href="<?php echo get_stylesheet_directory_uri(); ?>/img/favicon/apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180"
          href="<?php echo get_stylesheet_directory_uri(); ?>/img/favicon/apple-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="192x192"
          href="<?php echo get_stylesheet_directory_uri(); ?>/img/favicon/android-icon-192x192.png">
    <link rel="icon" type="image/png" sizes="32x32"
          href="<?php echo get_stylesheet_directory_uri(); ?>/img/favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96"
          href="<?php echo get_stylesheet_directory_uri(); ?>/img/favicon/favicon-96x96.png">
    <link rel="icon" type="image/png" sizes="16x16"
          href="<?php echo get_stylesheet_directory_uri(); ?>/img/favicon/favicon-16x16.png">

    <!-- Open Graph -->
    <meta property="og:url" content="https://riccasposa.com.ua/"/>
    <meta property="og:title" content="RICCA SPOSA - Свадебный салон"/>
    <meta property="og:description"
          content="Смелые и классические кутюрные свадебные линии. Невероятные свадебные платья созданы для твоего счастья от бренда Ricca Sposa."/>
    <meta property="og:image" content="https://riccasposa.com.ua/wp-content/uploads/2020/04/RiccaSposa.jpg"/>
    <meta property="og:site_name"
          content="Смелые и классические кутюрные свадебные линии. Невероятные свадебные платья созданы для твоего счастья от бренда Ricca Sposa."/>

    <!-- VK -->
    <meta property="url" content="https://riccasposa.com.ua/"/>
    <meta property="title" content="RICCA SPOSA - Свадебный салон"/>
    <meta property="description"
          content="Смелые и классические кутюрные свадебные линии. Невероятные свадебные платья созданы для твоего счастья от бренда Ricca Sposa."/>
    <meta property="image" content="https://riccasposa.com.ua/wp-content/uploads/2020/04/RiccaSposa.jpg"/>

    <!-- Twitter -->
    <meta name="twitter:title" content="RICCA SPOSA - Свадебный салон">
    <meta name="twitter:description"
          content="Смелые и классические кутюрные свадебные линии. Невероятные свадебные платья созданы для твоего счастья от бренда Ricca Sposa.">
    <meta name="twitter:image" content="https://riccasposa.com.ua/wp-content/uploads/2020/04/RiccaSposa.jpg">


    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage"
          content="<?php echo get_stylesheet_directory_uri(); ?>/img/favicon/ms-icon-144x144.png">
    <meta name="theme-color" content="#ffffff">
    <link rel="profile" href="http://gmpg.org/xfn/11">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Cormorant:wght@300;700&display=swap');
        @import url('http://fonts.cdnfonts.com/css/amalfi-coast');
    </style>



    <?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
<?php wp_body_open(); ?>
<div class="wrapper">
    <header class="header">
<!--        <div class="container">-->
            <div class="header-logo">
                <a href="<?php echo home_url(); ?>" class="logo">
                    <svg width="82" height="63" viewBox="0 0 82 63" fill="white" xmlns="http://www.w3.org/2000/svg">
                        <path  d="M77.296 18.938h1.144l1.272-15.15S73.99 1.01 66.617 0v.505c5.467 2.399 10.68 8.459 10.68 18.433zM19.578 55.551V40.527h-9.026v15.15c0 6.313-5.085 6.187-7.374 6.187H0V63h27.969v-1.136c-2.416 0-8.39.379-8.39-6.313zm37.504-33.204c-3.051-2.147-5.72-4.798-6.738-8.46C47.802 5.43 52.887 1.895 56.192.506V0c-1.398.253-2.924.631-4.322 1.136-2.416.884-4.704 2.4-6.357 4.293C40.428.63 32.037 0 27.206 0H0v1.136h3.56C6.992 1.39 9.026 4.42 9.026 4.42l11.95 17.928h10.298L17.29 1.137h9.79c9.661 0 12.204 6.564 12.204 15.276 0 2.399-.255 4.419-.636 6.06h18.434v-.126zm22.884 18.18H68.27c1.271 1.263 2.542 2.525 3.432 4.04 6.357 9.848-2.67 16.918-9.153 16.54-6.865-2.4-13.603-11.616-19.578-20.706H32.927L47.93 63h18.434c3.432 0 7.246-.631 9.662-2.02 5.848-3.535 7.755-12.499 3.94-20.453zM2.288 27.65c-.38.252-.635.63-1.017 1.01v-1.137H.254v7.954h1.017v-2.651c0-1.39.128-2.273.255-2.778.127-.631.381-1.01.762-1.262.382-.253.636-.38 1.018-.38.127 0 .38 0 .508.127l.509-.884c-.382-.126-.636-.252-.89-.252-.509-.127-.763 0-1.144.252zm4.069-2.526c0-.252-.128-.379-.255-.631a.975.975 0 0 0-.635-.253c-.255 0-.382.127-.636.253a.961.961 0 0 0-.254.631c0 .253.127.379.254.631a.975.975 0 0 0 .636.253c.254 0 .381-.127.635-.253.127-.252.255-.505.255-.631zm-.382 2.399H4.958v7.954h1.017v-7.954zm4.068.379c-.635.378-1.271.883-1.652 1.515-.382.631-.636 1.389-.636 2.146 0 1.136.381 2.146 1.271 2.904.89.757 1.907 1.262 3.178 1.262.763 0 1.526-.126 2.162-.505.635-.378 1.144-.757 1.525-1.388l-.762-.505c-.763.883-1.653 1.388-2.925 1.388-.635 0-1.27-.126-1.78-.378-.508-.253-.89-.632-1.27-1.137-.128-.63-.255-1.136-.255-1.767 0-.884.381-1.641 1.017-2.273.636-.631 1.399-.884 2.416-.884 1.27 0 2.16.505 2.924 1.39l.762-.506c-.254-.379-.508-.757-.89-1.01-.38-.252-.762-.505-1.27-.631-.51-.126-1.018-.253-1.526-.253-.89 0-1.653.253-2.289.632zm9.662 0c-.635.378-1.271.883-1.652 1.515-.382.63-.636 1.388-.636 2.146 0 1.136.381 2.146 1.271 2.904.89.757 1.907 1.262 3.179 1.262.762 0 1.525-.126 2.16-.505.636-.378 1.145-.757 1.526-1.388l-.762-.505c-.763.883-1.653 1.388-2.924 1.388-.636 0-1.272-.126-1.78-.379-.509-.252-.89-.63-1.272-1.136-.254-.505-.508-1.01-.508-1.641 0-.884.381-1.641 1.017-2.273.636-.63 1.398-.883 2.415-.883 1.272 0 2.162.505 2.924 1.388l.763-.505c-.254-.378-.508-.757-.89-1.01-.381-.252-.762-.505-1.27-.63-.51-.127-1.018-.253-1.526-.253-.51-.127-1.272.126-2.035.505zm13.603-.127c-.508-.252-1.144-.378-1.78-.378-1.144 0-2.16.378-2.924 1.262-.762.758-1.271 1.768-1.271 2.904s.381 2.146 1.144 3.03c.763.884 1.78 1.262 2.924 1.262.636 0 1.271-.126 1.78-.378a3.969 3.969 0 0 0 1.399-1.137v1.39h1.017v-7.955H34.58v1.515c-.255-.883-.763-1.262-1.272-1.515zm.509 1.389c.635.631.89 1.389.89 2.273 0 .63-.127 1.136-.382 1.64a2.486 2.486 0 0 1-1.144 1.137 3.54 3.54 0 0 1-1.653.379c-.508 0-1.144-.126-1.525-.379a2.486 2.486 0 0 1-1.144-1.136 3.474 3.474 0 0 1-.382-1.641c0-.505.127-1.137.382-1.642a2.486 2.486 0 0 1 1.144-1.136 3.539 3.539 0 0 1 1.652-.379c.763 0 1.526.379 2.162.884zm8.645-1.262a2.084 2.084 0 0 0-.636 1.515c0 .505.128.884.382 1.262.254.38.763.758 1.526 1.137.635.378 1.144.63 1.27.883.255.253.255.505.255.758 0 .379-.127.631-.381.884-.255.252-.636.378-1.017.378-.636 0-1.144-.252-1.653-.883l-.636.757c.255.379.636.631 1.017.884.382.252.89.252 1.272.252.635 0 1.271-.252 1.78-.63.508-.506.635-1.01.635-1.642 0-.505-.127-.884-.381-1.263-.255-.378-.763-.757-1.526-1.136-.636-.379-1.017-.631-1.271-.884-.254-.252-.254-.505-.254-.757 0-.253.127-.505.381-.758.254-.252.508-.378.89-.378.508 0 1.017.252 1.653.757l.635-.631c-.762-.758-1.525-1.137-2.288-1.137-.763 0-1.271.253-1.653.632zm8.009-.127c-.508.253-1.017.758-1.398 1.263v-1.515h-1.017V38.38h1.017v-4.292c.381.505.89.884 1.398 1.136.509.253 1.144.379 1.78.379 1.144 0 2.161-.379 2.924-1.263.763-.757 1.144-1.767 1.144-3.03 0-1.136-.381-2.146-1.271-2.903-.89-.758-1.78-1.263-2.924-1.263-.509.126-1.017.253-1.653.631zm3.306.884c.508.253.89.631 1.144 1.136.254.505.381 1.01.381 1.642a3.86 3.86 0 0 1-.381 1.64 2.486 2.486 0 0 1-1.144 1.137 3.404 3.404 0 0 1-1.526.379 3.937 3.937 0 0 1-1.653-.379 2.486 2.486 0 0 1-1.144-1.136 3.476 3.476 0 0 1-.381-1.641c0-.884.254-1.642.89-2.273.635-.631 1.398-.884 2.288-.884.509 0 1.017.127 1.526.38zm5.339.001c-.762.757-1.144 1.767-1.144 2.903 0 1.136.382 2.146 1.144 2.904.763.884 1.78 1.262 3.051 1.262 1.272 0 2.289-.378 3.052-1.262.763-.884 1.144-1.768 1.144-2.904s-.382-2.02-1.144-2.904c-.763-.883-1.78-1.389-3.051-1.389-1.272 0-2.289.506-3.052 1.39zm5.213.63c.635.632.89 1.39.89 2.273 0 .631-.127 1.136-.382 1.641a2.486 2.486 0 0 1-1.144 1.137 3.404 3.404 0 0 1-1.526.378c-.508 0-1.144-.126-1.525-.378a2.486 2.486 0 0 1-1.144-1.137 3.476 3.476 0 0 1-.382-1.64c0-.885.255-1.642.89-2.273a2.988 2.988 0 0 1 2.161-.884c.89-.127 1.526.252 2.162.884zm4.195-1.388a2.084 2.084 0 0 0-.636 1.515c0 .505.128.884.382 1.262.254.38.763.758 1.526 1.137.635.378 1.144.63 1.27.883.255.253.255.505.255.758 0 .379-.127.631-.381.884-.255.252-.636.378-1.017.378-.636 0-1.145-.252-1.653-.883l-.636.757c.254.379.636.631 1.017.884.382.252.89.252 1.272.252.635 0 1.271-.252 1.78-.63.508-.506.635-1.01.635-1.642 0-.505-.127-.884-.381-1.263-.254-.378-.763-.757-1.526-1.136-.635-.379-1.017-.631-1.271-.884-.254-.252-.254-.505-.254-.757 0-.253.127-.505.381-.758.254-.252.508-.378.89-.378.508 0 1.017.252 1.653.757l.635-.631c-.763-.758-1.525-1.137-2.288-1.137-.763 0-1.271.253-1.653.632zm11.188-.127c-.509-.252-1.145-.378-1.78-.378-1.145 0-2.162.378-2.924 1.262-.763.758-1.272 1.768-1.272 2.904s.382 2.146 1.144 3.03c.763.757 1.78 1.262 2.925 1.262.635 0 1.27-.126 1.78-.378a3.969 3.969 0 0 0 1.398-1.137v1.39H82v-7.955h-1.017v1.515c-.254-.883-.763-1.262-1.272-1.515zm.508 1.389c.636.631.89 1.389.89 2.273 0 .63-.127 1.136-.381 1.64a2.486 2.486 0 0 1-1.145 1.137 3.54 3.54 0 0 1-1.652.379c-.509 0-1.145-.126-1.526-.379a2.486 2.486 0 0 1-1.144-1.136 3.474 3.474 0 0 1-.382-1.641c0-.505.128-1.137.382-1.642a2.486 2.486 0 0 1 1.144-1.136 3.54 3.54 0 0 1 1.653-.379c.763 0 1.525.379 2.161.884z"
                               fill="#fff"/>
                    </svg>
                </a>
            </div>
            <div class="header-mobile">
                <div class="header-nav">
                    <?php wp_nav_menu(array('theme_location' => 'main_menu', 'menu_id' => '', 'menu_class' => 'nav', 'container' => false, 'add_li_class' => 'nav-item')); ?>
                </div>
            </div>
            <button class="btn-nav">
                <span></span>
                <span></span>
                <span></span>
            </button>
<!--        </div>-->
    </header>


