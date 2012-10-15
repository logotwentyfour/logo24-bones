<?php
/*
Template Name: Single column
*/
get_header(); ?>

  <?php if (have_posts()) : while (have_posts()) : the_post(); ?>

    <section role="main" class="d2-d4">
      <article>
        <header>
          <h1><?php the_title(); ?></h1>
        </header>
        <?php the_content(); ?>
      </article>
    </section> <!-- end article section -->

  <?php endwhile; else: ?>
    <p>Something has gone awry...</p>
  <?php endif; ?>

<?php get_footer(); ?>