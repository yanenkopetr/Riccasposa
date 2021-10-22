<?php
/**
 * Основные параметры WordPress.
 *
 * Скрипт для создания wp-config.php использует этот файл в процессе установки.
 * Необязательно использовать веб-интерфейс, можно скопировать файл в "wp-config.php"
 * и заполнить значения вручную.
 *
 * Этот файл содержит следующие параметры:
 *
 * * Настройки MySQL
 * * Секретные ключи
 * * Префикс таблиц базы данных
 * * ABSPATH
 *
 * @link https://ru.wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Параметры MySQL: Эту информацию можно получить у вашего хостинг-провайдера ** //
/** Имя базы данных для WordPress */
define( 'DB_NAME', 'riccasposap' );

/** Имя пользователя MySQL */
define( 'DB_USER', 'u_riccasposa123' );

/** Пароль к базе данных MySQL */
define( 'DB_PASSWORD', '7EJDgoaph267' );

/** Имя сервера MySQL */
define( 'DB_HOST', 'riccasposa.com' );

/** Кодировка базы данных для создания таблиц. */
define( 'DB_CHARSET', 'utf8mb4' );

/** Схема сопоставления. Не меняйте, если не уверены. */
define( 'DB_COLLATE', '' );

/**#@+
 * Уникальные ключи и соли для аутентификации.
 *
 * Смените значение каждой константы на уникальную фразу. Можно сгенерировать их с помощью
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}.
 *
 * Можно изменить их, чтобы сделать существующие файлы cookies недействительными.
 * Пользователям потребуется авторизоваться снова.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'n)f(iO4bxCip8cYoG`fGi4ABi$1aL#[*h2+Qf~42-#pc[Y@Fve<+)Wh~^p]Fu=V;' );
define( 'SECURE_AUTH_KEY',  'Nt]bn:$DONf2%|YM#`^x`PsyOO.97mW{/O~3G*V/fvm/&Mj1))JD0_B3-v|BE|M-' );
define( 'LOGGED_IN_KEY',    '%>ejC madv}q!Frfbpm7p ]c[pZdnu%{t_K/Q^_J.NG$=/whuci u_3f^@a(vg}J' );
define( 'NONCE_KEY',        'i4g?^F+u!MC] k2A?if(fkD;r-VLi)B:rs[Ga{Cr&(>ah`~f}Rp#g*]H_L9^b9y^' );
define( 'AUTH_SALT',        '-jud3t2rAvuv90m--I1m/JSBcu28V/.n:/Acx+(bZ>yC@)YU>D6u4WM$BDJW!lKm' );
define( 'SECURE_AUTH_SALT', 'iX(=>Ao/r^`[.&F*Y+Hp~Wofzuem3sCchiqm$ejyt^I3_y1A?Q%WK(6Xx]LDab_~' );
define( 'LOGGED_IN_SALT',   '8ZmX,-]v}b|Fg*qaiN.+3:ovijC-8vY.3;5*^E,-Q;<$2l)U~5Bi$G?fP9=-uQ_k' );
define( 'NONCE_SALT',       'X#,6BQ127BNF0~S<j~v:l^dmF-BaSO*;8i0OqPT=^$?#o{aF0iFYtf-XRMx*}A&b' );

/**#@-*/

/**
 * Префикс таблиц в базе данных WordPress.
 *
 * Можно установить несколько сайтов в одну базу данных, если использовать
 * разные префиксы. Пожалуйста, указывайте только цифры, буквы и знак подчеркивания.
 */
$table_prefix = 'wp_';

/**
 * Для разработчиков: Режим отладки WordPress.
 *
 * Измените это значение на true, чтобы включить отображение уведомлений при разработке.
 * Разработчикам плагинов и тем настоятельно рекомендуется использовать WP_DEBUG
 * в своём рабочем окружении.
 *
 * Информацию о других отладочных константах можно найти в документации.
 *
 * @link https://ru.wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Произвольные значения добавляйте между этой строкой и надписью "дальше не редактируем". */



/* Это всё, дальше не редактируем. Успехов! */

/** Абсолютный путь к директории WordPress. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Инициализирует переменные WordPress и подключает файлы. */
require_once ABSPATH . 'wp-settings.php';
