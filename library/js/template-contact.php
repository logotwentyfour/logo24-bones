<?php
/*
Template Name: Contact
*/
get_header(); ?>

  <?php if (have_posts()) : while (have_posts()) : the_post(); ?>

    <section role="main" class="d1">
      <article>
        <header>
          <h1><?php the_title(); ?></h1>
        </header>
        <?php the_content(); ?>
      </article>
    </section> <!-- end article section -->

  <?php endwhile; else: ?>
    <p>Something has gone awry...</p>
  <?php endif; ?>

  <section role="complementary" class="d2">
    <h3 class="widget-title">Contact details</h3>
    <ul>
      <li>Email: <a href="mailto:info@domain.com">info@domain.com</a></li>
      <li>Phone: <span rel="tel">01 123 5432</span></li>
      <li>  
        Address:<br>
        <span class="fn org">Company name</span>,
        <span class="adr">
          <span class="street-address">Street, <br> 
      Address,</span><br>
          <span class="postal-code">Post Code,</span>
          <span class="country-name">Country</span>
        </span>
      </li>
      </ul>
  </section>

<?php get_footer(); ?>