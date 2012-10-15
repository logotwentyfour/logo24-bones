<?php get_header(); ?>
  <section role="main" class="d2-d4">

    <?php while ( have_posts() ) : the_post(); ?>
      <article id="post-<?php the_ID(); ?>">
        <header class="entry-header">
          <h1 class="entry-title"><?php the_title(); ?></h1>
          <?php if ( 'post' == get_post_type() ) : ?>

          <div class="entry-meta">
            <div class="post-author">
              <a href="<?php echo get_the_author_meta( 'user_url' ); ?>" title="Learn more about me"><?php the_author() ?></a>
            <?php read_time(); ?>
            </div>
            <div class="topics">
              <h3>Topics:</h3> <?php echo get_the_category_list(); ?>
            </div>
          </div>

          <?php endif; ?>
        </header>

        <div class="entry-content">
          <?php the_content(); ?>
        </div>

        <div class="entry-utility">
          <time pubdate datetime="<?php the_time('Y-m-d'); ?>"><?php the_time('F j Y'); ?></time>
        </div>
      </article>
  
      <nav id="nav-blog">
        <span class="nav-previous"><?php previous_post_link( '%link', __( '<span class="meta-nav">&larr;</span> Previous', 'twentyeleven' ) ); ?></span>
        <span class="nav-next"><?php next_post_link( '%link', __( 'Next <span class="meta-nav">&rarr;</span>', 'twentyeleven' ) ); ?></span>
      </nav>

      <?php comments_template(); ?>

    <?php endwhile; // end of the loop. ?>

  </section>

<?php get_footer(); ?>