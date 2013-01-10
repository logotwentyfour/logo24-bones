<?php
/*
Template Name: Magic Field Test
*/
get_header(); ?>

  <section role="main">
    <article>
      <?php if (have_posts()) : while (have_posts()) : the_post(); ?>
        <header>
          <h1><?php the_title(); ?></h1>
        </header>
      
        <?php the_content(); ?>
        
        <?php
        $elements = get_group('Classes');
        foreach($elements as $key => $element) {
        ?> 
          <div class="index-article">
            <div>
              <div class="featured-image">
                <?php
                $images = get_order_field('classes_text',$key);
                foreach($images as $image) {
                  if( get('classes_image', $key ,$image = true) ) {
                    echo get_image('classes_image', $key, $image, 1, NULL, NULL, NULL, 'thumbnail');
                  }
                } ?>
              </div>
              <div class="entry-body">
                <?php
                if( get('classes_text', true) ) {
                  echo $element['classes_text'][1];
                } ?>
              </div>
            </div>
          </div>
        <?php } ?>
        
      <?php endwhile; else: ?>
        <p>Whatever you were trying, it didn't work...</p>
      <?php endif; ?>
      
    </article>
  </section> <?php # end article section ?>

<?php get_footer(); ?>