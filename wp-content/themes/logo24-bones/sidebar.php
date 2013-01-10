<section id="blog" role="complementary">

  <?php if ( is_active_sidebar( 'blog' ) ) : ?>

    <?php dynamic_sidebar( 'blog' ); ?>

  <?php else : ?>

    <!-- This content shows up if no are widgets defined in the backend. -->
    <p>Please activate some Widgets.</p>

  <?php endif; ?>

</section>