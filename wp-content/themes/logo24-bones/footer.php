  
    <footer role="contentinfo">
      <nav>
        <?php bones_footer_links(); ?>
      </nav>
      
      <small>
      <?php
      query_posts('p=45');
      if(have_posts()):
        while(have_posts()): the_post();
          the_content();
        endwhile;
      endif;
      wp_reset_query();
      ?>
      </small>
      
    </footer>
  
  </div> <?php # /wrapper ?>
    
  <?php # all js scripts are loaded in library/bones.php ?>
  <?php wp_footer(); ?>
  
  <?php # Add the Gridset js overlay here in development ?>
  
  
  <?php # Gold Gridlet add a horizontal baseline grid for type in development ?>
  <script src="<?php bloginfo('template_directory'); ?>/library/js/libs/ggs.js"></script>
</body>
</html>