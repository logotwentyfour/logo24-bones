<?php get_header(); ?>

<section role="main">

  <?php /*
  
  If categories need to be excluded form the main blog,
  e.g. when they're used for other content, -them here.
  
  <?php $myCats = array(13,14); // Excluded Categories
            query_posts($query_string); // Requested variables
            if(have_posts()) :while (have_posts()) : the_post();
            if(in_category($myCats)) continue;
  ?>
  
  */ ?>
  <?php if (have_posts()) : while (have_posts()) : the_post(); ?>

    <article id="post-<?php the_ID(); ?>" class="index-article" role="article">

      <div>
      
        <div class="featured-image">
          <?php if ( has_post_thumbnail() ) { ?>
            <a href='<?php the_permalink() ?>'
            rel='bookmark' title='<?php the_title(); ?>'>
            
            <?php

              # get the thumbnail paths for the normal and retina
              # blog index images
              
              # values can be added in functions.php so correct sizes are 
              # auto-resized on upload to WP, if values aren't exact,
              # WP will round to the nearest available size.

              $normal = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID), array( 226,148 ), false, '' );

              $retina = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID), array( 452,396 ), false, '' );

            ?>
            
              <figure>
               <div data-picture data-alt="<?php the_title(); ?>">

                <?php // First, on the smallest non-retina screens... ?>
                <div data-src="<?php echo $normal[0]; ?>"></div>
                <?php // First, on the smallest retina screens... ?>
                <div data-src="<?php echo $retina[0]; ?>" data-media="(min--moz-device-pixel-ratio: 1.3),
                (-o-min-device-pixel-ratio: 2.6/2),
                (-webkit-min-device-pixel-ratio: 1.3),
                (min-device-pixel-ratio: 1.3),
                (min-resolution: 1.3dppx)"></div>
                
                <noscript>
                 <img src="<?php echo $normal[0]; ?>" alt="<?php the_title(); ?>">
                </noscript>
               </div>
              </figure>
            </a>
          <?php } ?>
        </div>
        
        <div class="entry-body">
          <header class="entry-header">
            <a href='<?php the_permalink() ?>'
            rel='bookmark' title='<?php the_title(); ?>'>
              <h1 class="entry-title"><?php the_title(); ?></h1>
            </a>
          </header><?php # .entry-header ?>
        
          <div class="entry-content">
            <?php the_excerpt(); ?>
          </div><?php # .entry-content ?>
        
          <div class="byline vcard">
            Published by
            <span class="author"><?php the_author(); ?></span> on
            <time class="updated" datetime="<?php echo the_time('Y-m-j'); ?>" pubdate><?php the_time(get_option('date_format')); ?></time>
            <br>Topics:
            <?php the_category(', '); ?>
            <?php read_time(); ?>
          </div>
        </div>
        
      </div>
      
    </article>
    
  <?php endwhile; ?>
  
  <?php if (function_exists('bones_page_navi')) { ?>
    <?php bones_page_navi(); ?>
    <?php } else { ?>
      <nav class="wp-prev-next">
        <ul class="clearfix">
          <li class="prev-link"><?php next_posts_link(_e('&laquo; Older Entries', "bonestheme")) ?></li>
          <li class="next-link"><?php previous_posts_link(_e('Newer Entries &raquo;', "bonestheme")) ?></li>
        </ul>
      </nav>
    <?php } ?>
  <?php else : ?>
  
  <article id="post-not-found" class="hentry clearfix">
    <header class="article-header">
      <h1><?php _e("Oops, Post Not Found!", "bonestheme"); ?></h1>
    </header>
    <section class="entry-content">
      <p><?php _e("Uh Oh. Something is missing. Try double checking things.", "bonestheme"); ?></p>
    </section>
    <footer class="article-footer">
      <p><?php _e("This is the error message in the index.php template.", "bonestheme"); ?></p>
    </footer>
  </article>
    
  <?php endif; ?>

</section>

<?php get_footer(); ?>
