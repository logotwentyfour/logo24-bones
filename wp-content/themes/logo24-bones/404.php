<!doctype html>

<!--[if lt IE 7]><html <?php language_attributes(); ?> class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if (IE 7)&!(IEMobile)]><html <?php language_attributes(); ?> class="no-js lt-ie9 lt-ie8"><![endif]-->
<!--[if (IE 8)&!(IEMobile)]><html <?php language_attributes(); ?> class="no-js lt-ie9"><![endif]-->
<!--[if IE 9]><html <?php language_attributes(); ?> class="no-js ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html <?php language_attributes(); ?> class="no-js"><!--<![endif]-->

<head>
  <meta charset="utf-8">
  <title>Oops, something went wrong - 404 Page Not Found</title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

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
  <h1>404</h1>
  <h2>Oops! Page Not Found</h2>
  <p>Send an email to <a href="mailto:info@domain.com">info@domain.com</a> to let us know what happened <i>or</i> Try starting again from our <a href="/">home page</a>.</p>
</body>
</html>