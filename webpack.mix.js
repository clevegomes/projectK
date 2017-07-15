let mix = require('laravel-mix');

/*
 |--------------------------------------------------------------------------
 | Mix Asset Management
 |--------------------------------------------------------------------------
 |
 | Mix provides a clean, fluent API for defining some Webpack build steps
 | for your Laravel application. By default, we are compiling the Sass
 | file for the application as well as bundling up all the JS files.
 |
 */

mix.js(['resources/assets/js/app.js'
        // 'resources/assets/js/jquery-3.2.0.min.js',
        // 'resources/assets/js/material.min.js',
        // 'resources/assets/js/theme-plugins.js',
        // 'resources/assets/js/main.js',
        // 'resources/assets/js/selectize.min.js',
        // 'resources/assets/js/swiper.jquery.min.js',
        // 'resources/assets/js/moment.min.js',
        // 'resources/assets/js/daterangepicker.min.js',
        // 'resources/assets/js/mediaelement-and-player.min.js',
        // 'resources/assets/js/mediaelement-playlist-plugin.min.js'
        ], 'public/js')
   // .sass('resources/assets/sass/app.scss', 'resources/assets/css')
   .styles([
    // 'resources/assets/css/app.css',
    'resources/assets/css/bootstrap-reboot.css',
    'resources/assets/css/bootstrap.css',
    'resources/assets/css/bootstrap-grid.css',
    'resources/assets/css/theme-styles.css',
    'resources/assets/css/blocks.css',
    'resources/assets/css/fonts.css',
    'resources/assets/css/jquery.mCustomScrollbar.min.css',
    'resources/assets/css/daterangepicker.css',
    'resources/assets/css/bootstrap-select.css'
], 'public/css/all.css');


