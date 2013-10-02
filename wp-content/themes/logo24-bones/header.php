<!doctype html>

<!--[if lt IE 7]><html dir="ltr" lang="en" class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if (IE 7)&!(IEMobile)]><html dir="ltr" lang="en" class="no-js lt-ie9 lt-ie8"><![endif]-->
<!--[if (IE 8)&!(IEMobile)]><html dir="ltr" lang="en" class="no-js lt-ie9"><![endif]-->
<!--[if IE 9]><html dir="ltr" lang="en" class="no-js ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html dir="ltr" lang="en" class="no-js"><!--<![endif]-->

<head>
  <meta charset="utf-8">

  <title><?php wp_title( '|', true, 'right' ); ?></title>
  
  <!-- Author information -->
  <meta name="author" content="Logo24.com" />
  <link type="text/plain" rel="author" href="/humans.txt" />

  <!-- Google Chrome Frame for IE -->
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

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

  <?php # wordpress head functions ?>
  <?php wp_head(); ?>
  <?php # end of wordpress head ?>
  
  <!--[if ! lte IE 6]><!-->
  <!-- Gridset hosted CSS goes here in development -->
  <!--<![endif]-->
  
  <!--[if lte IE 6]>
  <link rel="stylesheet" href="http://universal-ie6-css.googlecode.com/files/ie6.1.1.css" media="screen, projection">
  <![endif]-->

</head>

<body>
  
  <!--[if lt IE 8]>
    <p class="outdated-browser">You are using an outdated browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
  <![endif]-->
  
  <div class="wrapper">
  
    <header role="banner">
      <h1>
        <a href="/"><?php bloginfo('name'); ?></a>
      </h1>
      <h2><?php bloginfo('description'); ?></h2>
      
      <?php /* if no subheading is required you can use this:
      
      <h1>
        <a href="/" title="Return to the home page"><?php bloginfo('name'); ?></a>
      </h1>
      
      */ ?>
    </header>
    
    <nav role="navigation">
      <a href="#menu-main" class="open-navigation" title="Open navigation">Navigation</a>
      <?php bones_main_nav(); ?>
    </nav>
