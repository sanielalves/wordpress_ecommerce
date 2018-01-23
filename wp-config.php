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
define('DB_PASSWORD', 'alacazan');

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
define('AUTH_KEY',         '.B$^Zvui6/eF$%0{: g<mCE?dC;&kZU{`nH:m^R%/|s}K8iA&v*h8U?.=v,n8M)i');
define('SECURE_AUTH_KEY',  '(RD:,IV15P~j?.0r{nqdt;1#+>xSf?ZT(o1L/AkFmX>8w3#ua/8`E4ji!?M9|3f-');
define('LOGGED_IN_KEY',    '^X9if7A,&133Q?rhPx,mP~bBhF,|N3(O?#oi3PL[>X07/S&v0-wO~5jZ}jC=PXL%');
define('NONCE_KEY',        'Q{x0X:R-q&OyPH`h}n]Jl<S9LS<^jlF9GT=W.Au,+@Ps;)!HCc1se*CPk*g6EbY>');
define('AUTH_SALT',        'R5.Q4y3jcU,9o ,>A!kHM{iA%^i9)365f;^nRs#]A|NB52S9:jch)6MRihH_10+%');
define('SECURE_AUTH_SALT', '5?}RelHFWmj)a::SIv9GxT)TWg2z#`U8r]afIDRS<1*^o5AxhCBw/+qD}`q+=d/Z');
define('LOGGED_IN_SALT',   'VXO;HJ.Sv*914,~E?Vvr|cHt~MjKN{`aqHK!F5?.gO*[wR?43^57+Y7[}y0nL^Ql');
define('NONCE_SALT',       'Edw{-9c:As)7tFt?J(=:2?P2YW|T9sh7|P/$.4 !8=h#}?,Mlg}-uFji$NAd3D/9');

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
