<?php

// Add styles and scripts
add_action( 'wp_enqueue_scripts', 'ricca_enqueue_scripts', 20 );
function ricca_enqueue_scripts() {
    wp_enqueue_style( 'style', get_stylesheet_directory_uri() . '/css/main.css', '1.0', false );
	wp_enqueue_style( 'slick-lightbox-css', get_stylesheet_directory_uri() . '/css/slick-lightbox.css', '1.0', false );
	wp_enqueue_style( 'theme_style', get_stylesheet_directory_uri() . '/style.css', '1.0', false );
	wp_enqueue_script('modernizr', get_stylesheet_directory_uri() . '/js/modernizr-2.8.3.min.js', false );
	wp_enqueue_script('script', get_stylesheet_directory_uri() . '/js/main.js', '', '1.0', false );
    wp_enqueue_script('popup', get_stylesheet_directory_uri() . '/js/jquery.magnific-popup.min.js', array( 'jquery'), '1.0', true );
    wp_enqueue_script('viewportchecker', get_stylesheet_directory_uri() . '/js/jquery.viewportchecker.min.js', array( 'jquery'), '1.0', true );
    wp_enqueue_script('slick', get_stylesheet_directory_uri() . '/js/slick.min.js', array( 'jquery'), '1.0', true );
    wp_enqueue_script('slick-lightbox', get_stylesheet_directory_uri() . '/js/slick-lightbox.js', array( 'jquery'), '1.0', true );
    wp_enqueue_script('inputmask', get_stylesheet_directory_uri() . '/js/jquery.inputmask.bundle.min.js', array( 'jquery'), '1.0', true );
    wp_enqueue_script('theme', get_stylesheet_directory_uri() . '/js/theme-script.js', array( 'jquery'), '1.0', true );
}

// Register Menu
add_action( 'after_setup_theme', function(){
	register_nav_menus( [
		'main_menu' => 'Main menu',
		'footer_menu' => 'Footer general menu',
		'footer_menu_cats' => 'Footer categories menu'
	] );
} );

function add_additional_class_on_li($classes, $item, $args) {
    if($args->add_li_class) {
        $classes[] = $args->add_li_class;
    }
    return $classes;
}

add_filter('nav_menu_css_class', 'add_additional_class_on_li', 1, 3);

// Add custom post types
add_action( 'init', 'register_post_types' );
function register_post_types() {
	// Country
	$country_labels = array(
		'name'               => _x('Страны', 'post type general name'),
		'singular_name'      => _x('Страна', 'post type singular name'),
		'add_new'            => _x('Добавить', ''),
		'add_new_item'       => __('Добавить'),
		'edit_item'          => __('Редактировать'),
		'new_item'           => __('Новая страна'),
		'view_item'          => __('Смотреть'),
		'search_items'       => __('Найти'),
		'not_found'          => __('Не найдено'),
		'not_found_in_trash' => __('Пусто'),
		'parent_item_colon'  => ''
	);

	$country_args = array(
		'labels'             => $country_labels,
		'public'             => true,
		'has_archive'        => true,
		'publicly_queryable' => true,
		'show_ui'            => true,
		'rewrite'            => true,
		'query_var'          => true,
		'capability_type'    => 'post',
		'hierarchical'       => false,
		'_builtin'           => false,
		'rewrite'            => array('slug' => 'countries', 'with_front' => true),
		'show_in_nav_menus'  => false,
		'menu_position'      => 20,
		'menu_icon'          => 'dashicons-admin-page',
		'supports'           => array(
			'title',
			'editor',
			'thumbnail'
		)
	);
	register_post_type('countries', $country_args);

	// Country

	$dress_labels = array(
		'name'               => _x('Платья', 'post type general name'),
		'singular_name'      => _x('Платье', 'post type singular name'),
		'add_new'            => _x('Добавить', ''),
		'add_new_item'       => __('Добавить'),
		'edit_item'          => __('Редактировать'),
		'new_item'           => __('Новое'),
		'view_item'          => __('Смотреть'),
		'search_items'       => __('Найти'),
		'not_found'          => __('Не найдено'),
		'not_found_in_trash' => __('Пусто'),
		'parent_item_colon'  => ''
	);

	$dress_args = array(
		'labels'             => $dress_labels,
		'public'             => true,
		'has_archive'        => true,
		'publicly_queryable' => true,
		'show_ui'            => true,
		'rewrite'            => true,
		'query_var'          => true,
		'capability_type'    => 'post',
		'hierarchical'       => false,
		'_builtin'           => false,
		'rewrite'            => array('slug' => 'dresses', 'with_front' => true),
		'show_in_nav_menus'  => false,
		'menu_position'      => 20,
		'menu_icon'          => 'dashicons-admin-page',
		'supports'           => array(
			'title',
			'editor',
			'thumbnail'
		)
	);
	register_post_type('dresses', $dress_args);

	// Exchange Rates
	$exchange_labels = array(
		'name'               => _x('Курс валют', 'post type general name'),
		'singular_name'      => _x('Курс валют', 'post type singular name'),
		'add_new'            => _x('Добавить', ''),
		'add_new_item'       => __('Добавить'),
		'edit_item'          => __('Редактировать'),
		'new_item'           => __('Новое'),
		'view_item'          => __('Смотреть'),
		'search_items'       => __('Найти'),
		'not_found'          => __('Не найдено'),
		'not_found_in_trash' => __('Пусто'),
		'parent_item_colon'  => ''
	);

	$exchange_args = array(
		'labels'             => $exchange_labels,
		'public'             => true,
		'has_archive'        => false,
		'publicly_queryable' => true,
		'show_ui'            => true,
		'rewrite'            => true,
		'query_var'          => true,
		'capability_type'    => 'post',
		'hierarchical'       => false,
		'_builtin'           => false,
		'rewrite'            => array('slug' => 'exchange', 'with_front' => true),
		'show_in_nav_menus'  => false,
		'menu_position'      => 20,
		'menu_icon'          => 'dashicons-admin-page',
		'supports'           => array(
			'title'
		)
	);
	register_post_type('exchange', $exchange_args);

	flush_rewrite_rules();
}

add_action('init', 'register_taxonomies',0);
function register_taxonomies() {

	$collections = array(
		'name'              => _x('Коллекции', 'taxonomy general name'),
		'singular_name'     => _x('Коллекция', 'taxonomy singular name'),
		'search_items'      => __('Поиск'),
		'all_items'         => __('Всё'),
		'parent_item'       => __('Parent'),
		'parent_item_colon' => __('Parent:'),
		'edit_item'         => __('Редакттировать'),
		'update_item'       => __('Обновить'),
		'add_new_item'      => __('Add new'),
		'new_item_name'     => __('New category name'),
	);

	register_taxonomy('collections', array('dresses'), array(
		'hierarchical' => true,
		'labels'       => $collections,
		'show_ui'      => true,
		'query_var'    => true,
		'rewrite'      => array('slug' => 'collections'),
	));

	$types = array(
        'name'              => _x('Тип платья', 'taxonomy general name'),
        'singular_name'     => _x('Тип платья', 'taxonomy singular name'),
        'search_items'      => __('Поиск'),
        'all_items'         => __('Всё'),
        'parent_item'       => __('Parent'),
        'parent_item_colon' => __('Parent:'),
        'edit_item'         => __('Редакттировать'),
        'update_item'       => __('Обновить'),
        'add_new_item'      => __('Add new'),
        'new_item_name'     => __('New category name'),
    );

    register_taxonomy('type', array('dresses'), array(
        'hierarchical' => true,
        'labels'       => $types,
        'show_ui'      => true,
        'query_var'    => true,
        'rewrite'      => array('slug' => 'type'),
    ));

    $sale = array(
        'name'              => _x('Sale', 'taxonomy general name'),
        'singular_name'     => _x('Sale', 'taxonomy singular name'),
        'search_items'      => __('Поиск'),
        'all_items'         => __('Всё'),
        'parent_item'       => __('Parent'),
        'parent_item_colon' => __('Parent:'),
        'edit_item'         => __('Редакттировать'),
        'update_item'       => __('Обновить'),
        'add_new_item'      => __('Add new'),
        'new_item_name'     => __('New category name'),
    );

    register_taxonomy('sale', array('dresses'), array(
        'hierarchical' => true,
        'labels'       => $sale,
        'show_ui'      => true,
        'query_var'    => true,
        'rewrite'      => array('slug' => 'sale'),
    ));

    $silhouette = array(
       'name'              => _x('Силуэт', 'taxonomy general name'),
       'singular_name'     => _x('Силуэт', 'taxonomy singular name'),
       'search_items'      => __('Поиск'),
       'all_items'         => __('Всё'),
       'parent_item'       => __('Parent'),
       'parent_item_colon' => __('Parent:'),
       'edit_item'         => __('Редакттировать'),
       'update_item'       => __('Обновить'),
       'add_new_item'      => __('Add new'),
       'new_item_name'     => __('New category name'),
   );

   register_taxonomy('silhouette', array('dresses'), array(
       'hierarchical' => true,
       'labels'       => $silhouette,
       'show_ui'      => true,
       'query_var'    => true,
       'rewrite'      => array('slug' => 'silhouette'),
   ));

}

if (function_exists('register_sidebar')) {
    register_sidebar( array(
        'name'          => __( 'Dresses filter', '' ),
    	'id'            => 'filter_taxonomy',
    	'description'   => '',
        'class'         => '',
    	'before_widget' => '',
    	'after_widget'  => '',
    	'before_title'  => '<h2 class="widgettitle">',
    	'after_title'   => '</h2>'
    ) );
}

// Шаблон для стран
	add_filter( 'single_template', function ( $single_template ) {
	
		$parent     = 'countries'; //Здесь вставляем id категории(рубрики) для которой хотите изменить шаблон у детальной страницы записи
		$categories = get_categories( 'child_of=' . $parent );
		$cat_names  = wp_list_pluck( $categories, 'name' );
	
		if ( has_category( 'movies' ) || has_category( $cat_names ) ) {
			$single_template = dirname( __FILE__ ) . '/single-countries.php'; // название файла шаблона
		}
		return $single_template;
	}, PHP_INT_MAX, 2 );
// 

// remove radio buttons validation
remove_filter('wpcf7_validate_radio', 'wpcf7_checkbox_validation_filter', 10);

add_filter('wpcf7_validate_radio', function($result, $tag) {
  if (in_array('class:required', $tag->options)) {
    $result = wpcf7_checkbox_validation_filter($result, $tag);
  }
  return $result;
}, 10, 2);



add_filter('post_type_link', 'projectcategory_permalink_structure', 10, 4);
function projectcategory_permalink_structure($post_link, $post, $leavename, $sample) {

   $taxonomyName = 'type'; // имя (slug) вашей таксономии
    if (false !== strpos($post_link, "%$taxonomyName%")) {
        $projectscategory_type_term = get_the_terms($post->ID, $taxonomyName);
        if (!empty($projectscategory_type_term))
            $post_link = str_replace("%$taxonomyName%", array_pop($projectscategory_type_term)->
            slug, $post_link);
        else
            $post_link = str_replace("%$taxonomyName%", 'uncategorized', $post_link);
    }
    return $post_link;
}

/*function html5wp_pagination()
{
    global $wp_query;
    $big = 999999999;
    echo paginate_links(array(
        'base' => str_replace($big, '%#%', get_pagenum_link($big)),
        'format' => '?paged=%#%',
        'current' => max(1, get_query_var('paged')),
        'total' => $wp_query->max_num_pages
    ));
}

add_action( 'init', 'html5wp_pagination' );*/


add_action( 'wp_footer', 'redirect_cf7' );

function redirect_cf7() {
?>
<script type="text/javascript">
document.addEventListener( 'wpcf7mailsent', function( event ) {
       location = '/success';
}, false );
</script>
<?php
}

add_action('acf/save_post', 'acf_save_value');
function acf_save_value($post_id) {
    $priceUSD = get_field('price', $post_id);
    $currencyRate = get_field('exchange_rates', 1442); // here 1442 is ID of currency post
    $priceUAH = ceil($priceUSD * $currencyRate);

    update_field('price_uah', $priceUAH, $post_id);
}
