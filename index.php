<?php get_header(); ?>

  <section role="main" class="d2-d4">

    <?php if ( have_posts() ) : ?>

    <header>
      <h1 class="vh">The blog of Some Company</h1>
    </header>

    <?php while ( have_posts() ) : the_post(); ?>

    <article id="post-<?php the_ID(); ?>" class="index-article">
      <header class="entry-header">
        <a href='<?php the_permalink() ?>'
        rel='bookmark' title='<?php the_title(); ?>'>
          <h1 class="entry-title"><?php the_title(); ?></h1>
        </a>
        
        <?php if ( 'post' == get_post_type() ) : ?>
        
        <div class="entry-meta">
          <div class="post-author">
            <a href="<?php echo get_the_author_meta( 'user_url' ); ?>" title="Learn more about me"><?php the_author() ?></a>
            <?php read_time(); ?>
          </div>
          <div class="topics">
            <h3>Topics:</h3> <?php echo get_the_category_list(); ?>
          </div>
        </div><!-- .entry-meta -->
        
        <?php endif; ?>
      </header><!-- .entry-header -->

      <div class="entry-content">
        <?php the_excerpt(); ?>
      </div><!-- .entry-content -->

      <div class="entry-utility">
        Written <time pubdate datetime="<?php the_time('Y-m-d'); ?>"><?php the_time('F j Y'); ?></time>
      </div>
    </article>

    <?php endwhile; ?>

    <nav id="nav-blog">
      <span class="nav-previous"><?php previous_post_link( '%link', __( '<span class="meta-nav">&larr;</span> Previous', 'twentyeleven' ) ); ?></span>
      <span class="nav-next"><?php next_post_link( '%link', __( 'Next <span class="meta-nav">&rarr;</span>', 'twentyeleven' ) ); ?></span>
    </nav>

    <?php endif; ?>

  </section>

<?php get_footer(); ?>