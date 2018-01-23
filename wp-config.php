<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'wordpress_ecommerce');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'G=yEZmLZMJV%FNoFi{0=J2]PA#W[Y^`BF(<xsM)<HIApmR$%MALpNJCerijpze31');
define('SECURE_AUTH_KEY',  'ug#M7ZT0QRPWAs|#,I- bzg@*6qeb,h29yE5-8pbYof;~h M^a6re:5Ss$t{-%i%');
define('LOGGED_IN_KEY',    'TQIP~,:7L+<9E-`OgXA?M3.&3eh,CbplXA~Cq}qpR*yByFh0(Ko9?DqLC2T/e9x^');
define('NONCE_KEY',        ' Ki^Yvu)J#~B:ec7G&)TCxN(xB5LjK;r2$G]NY|4)]M%`3w<FxCg1k.>w>Gu<pK5');
define('AUTH_SALT',        'n[lYVRTqT4.:]zb3TqE~4Gzak3$1:!Ca@x(p@/aIpH%{Ig>CmOZg;@JiWNX>gd!?');
define('SECURE_AUTH_SALT', 'Yv#O  Y]H6&q;kmC=.S{lT6;KR4bpo1%_QUN[I=Z3sx{p|%?`RBYE?bMcEma+ob]');
define('LOGGED_IN_SALT',   '#ja0{*g8KPTh2Pg!q(x8;tCBNq%gLt[QU=M`dSO.&fV|6Q!5Z48!,|0i}pI 62sC');
define('NONCE_SALT',       ',;rj80KCA2^%%fNN>g9TwV[>QL`~5[qJS9?<Uvf7$P=AM;ut0zQ|1aw![J:>U/hJ');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
