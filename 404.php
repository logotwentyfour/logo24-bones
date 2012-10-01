<!doctype html>

<!--[if lt IE 7]><html <?php language_attributes(); ?> class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if (IE 7)&!(IEMobile)]><html <?php language_attributes(); ?> class="no-js lt-ie9 lt-ie8"><![endif]-->
<!--[if (IE 8)&!(IEMobile)]><html <?php language_attributes(); ?> class="no-js lt-ie9"><![endif]-->
<!--[if IE 9]><html <?php language_attributes(); ?> class="no-js ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html <?php language_attributes(); ?> class="no-js"><!--<![endif]-->

<head>
  <meta charset="utf-8">

  <title>Oops, something went wrong - 404 Page Not Found</title>

  <!-- Google Chrome Frame for IE -->
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

  <!-- mobile meta (hooray!) -->
  <meta name="HandheldFriendly" content="True">
  <meta name="MobileOptimized" content="320">
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

  <!-- For iPhone 4 -->
  <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<?php bloginfo('template_directory'); ?>/library/images/h/apple-touch-icon.png">
  <!-- For iPad 1-->
  <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<?php bloginfo('template_directory'); ?>/library/images/m/apple-touch-icon.png">
  <!-- For the new iPad -->
  <link rel="apple-touch-icon-precomposed" sizes="144x144" href="<?php bloginfo('template_directory'); ?>/library/images/h/apple-touch-icon-144x144-precomposed.png">
  <!-- For iPhone 3G, iPod Touch and Android -->
  <link rel="apple-touch-icon-precomposed" href="<?php bloginfo('template_directory'); ?>/library/images/l/apple-touch-icon-precomposed.png">
  <!-- For Nokia -->
  <link rel="shortcut icon" href="<?php bloginfo('template_directory'); ?>/library/images/l/apple-touch-icon.png">
  <!-- For everything else -->
  <link rel="shortcut icon" href="<?php echo get_template_directory_uri(); ?>/favicon.ico">

  <link rel="pingback" href="<?php bloginfo('pingback_url'); ?>">

  <!-- wordpress head functions -->
  <!-- Wrap in IE6 conditionals to serve to everything but IE6 -->
  <!--[if ! lte IE 6]><!-->
  <?php wp_head(); ?>
  <!--<![endif]-->
  <!-- end of wordpress head -->
  
  <!--[if ! lte IE 6]><!-->
  <link rel='stylesheet'  href='<?php echo get_template_directory_uri(); ?>/library/css/style.css' type='text/css' media='all' />
  <!--<![endif]-->
  
  <!--[if lte IE 6]>
  <link rel="stylesheet" href="http://universal-ie6-css.googlecode.com/files/ie6.1.1.css" media="screen, projection">
  <![endif]-->

</head>

<body class="p404">
  
  <hgroup>
    <h1>404</h1>
    <h2>Oops! Page Not Found</h2>
  </hgroup>
  <p>Send an email to <a href="mailto:info@domain.com">info@domain.com</a> to let us know what happened <i>or</i> Try starting again from our <a href="/">home page</a>.</p>
  
</body>
</html>