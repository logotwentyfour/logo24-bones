<?php get_header(); ?>
  
  <section role="main">

    <?php while ( have_posts() ) : the_post(); ?>
      <article id="post-<?php the_ID(); ?>" class="index-single" role="article">
        
        <div>
          
          <header class="entry-header">
            <h1 class="entry-title"><?php the_title(); ?></h1>
          </header><?php # .entry-header ?>
          
          <div class="entry-content">
            <?php the_content(); ?>
          </div>

          <div class="byline vcard">
            Published by
            <span class="author"><?php the_author(); ?></span> on
            <time class="updated" datetime="<?php echo the_time('Y-m-j'); ?>" pubdate><?php the_time(get_option('date_format')); ?></time>
            <br>Topics:
            <?php the_category(', '); ?>
            <?php read_time(); ?>
          </div>
          
        </div>
        
      </article>

      <?php comments_template(); ?>

    <?php endwhile; // end of the loop. ?>
    
    <?php bones_page_navi(); ?>

  </section>

<?php get_footer(); ?>