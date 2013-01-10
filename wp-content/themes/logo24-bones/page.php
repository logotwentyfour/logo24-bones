<?php get_header(); ?>
  
  <?php if (have_posts()) : while (have_posts()) : the_post(); ?>
    
    <section role="main">
      <article>
        <header>
          <h1><?php the_title(); ?></h1>
        </header>
        <?php the_content(); ?>
      </article>
    </section> <?php # end article section ?>

  <?php endwhile; else: ?>
    <p>Whatever you were trying, it didn't work...</p>
  <?php endif; ?>

<?php get_footer(); ?>