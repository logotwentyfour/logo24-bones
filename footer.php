  
    <footer role="contentinfo">
      <nav>
        <?php bones_footer_links(); ?>
      </nav>
      <?php /* footer stuff, defaults to copyright
        
        # Need to figure out how to do proper taxonomies for this.
        
        query_posts('p=771');
        if(have_posts()):
          while(have_posts()): the_post();
            the_content();
          endwhile;
        endif;
        wp_reset_query();*/
      ?>
      <small><p>&copy Copyright (output current year). (Output client name). All rights reserved.</p></small>
    </footer>
  
  </div> <?php # /wrapper ?>
    
  <?php # all js scripts are loaded in library/bones.php ?>
  <?php wp_footer(); ?>
  
  <?php # Add the Gridset js overlay here in development ?>
  
  
  <?php # Gold Gridlet add a horizontal baseline grid for type in development ?>
  <script src="<?php bloginfo('template_directory'); ?>/library/js/libs/ggs.js"></script>
</body>
</html>