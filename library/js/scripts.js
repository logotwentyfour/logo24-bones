/*
Scripts File
Author: @paddy

This file should contain any js scripts you want to add to the site.
Instead of calling it in the header or throwing it inside wp_head()
this file will be called automatically in the footer so as not to
slow the page load.

*/

// as the page loads, call these scripts
jQuery(document).ready(function($) {
  $(".entry-content").fitVids();
  
  // Toggle navigation visibility on small screens and the toggle icon.
  $(".open-navigation").click(function () {
    $(".top-nav").fadeToggle(100, "linear");
      return false;
  });
}); /* end of as page load scripts */