<?php
/*
Template Name: Custom template
*/
get_header(); ?>

  <?php if (have_posts()) : while (have_posts()) : the_post(); ?>

    <section role="main">
      <header>
        <h1><?php the_title(); ?></h1>
      </header>
      <?php the_content(); ?>
    </section> <!-- end article section -->

  <?php endwhile; else: ?>
    <p>Whatever you were trying, it didn't work...</p>
  <?php endif; ?>

  <?php 
  # Adding template specific sidebars and menus
  # instead of including the sidebar ?>
  <section class="m-all t1 d1" role="complementary">
    <?php wp_nav_menu(array('menu'=>'menu-name-here')); ?>
  </section>

<?php get_footer(); ?>