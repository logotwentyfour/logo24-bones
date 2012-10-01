<section id="sidebar1" role="complementary">

  <?php if ( is_active_sidebar( 'sidebar1' ) ) : ?>

    <?php dynamic_sidebar( 'sidebar1' ); ?>

  <?php else : ?>

    <!-- This content shows up if no are widgets defined in the backend. -->
    <p>Please activate some Widgets.</p>

  <?php endif; ?>

</section>