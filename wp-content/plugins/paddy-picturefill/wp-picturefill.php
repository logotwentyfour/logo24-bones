<?php

/*
Plugin Name: WP picturefill (Paddy)
Description: Replaces <code>&lt;img&gt;</code> tags with responsive <code>&lt;picture&gt;</code> tags. Uses a <a rel="external" href="https://github.com/nwtn/picturefill">fork</a> of Scott Jehl's <a rel="external" href="https://github.com/scottjehl/picturefill">picturefill</a>.
Version: 1.0
Author: David Newton
Author URI: http://davidnewton.ca
*/


if ( !is_page() ) {
  add_action('wp_enqueue_scripts', 'wppf_script');
  add_filter('upload_mimes', 'wppf_upload_mimes');
  add_filter('the_content', 'wppf_content');
  add_filter("attachment_fields_to_edit", "wppf_svg_field_edit", null, 2);
  add_filter("attachment_fields_to_save", "wppf_svg_field_save", null, 2);

  if (!function_exists('get_attachment_id')) {
  	/**
  	 * Get the Attachment ID for a given image URL.
  	 * @link   http://wordpress.stackexchange.com/a/7094
  	 * @param  string $url
  	 * @return boolean|integer
  	 */
  	function get_attachment_id($url) {
  		$dir = wp_upload_dir();

  		$home_url = home_url();
  		if (strpos($home_url, $url) !== 0) {
  			$url = trim($home_url, '/') . '/' . trim($url, '/');
  		}

  		$file  = basename($url);
  		$query = array(
  			'post_type'  => 'attachment',
  			'fields'	 => 'ids',
  			'meta_query' => array(
  				array(
  					'value'   => $file,
  					'compare' => 'LIKE',
  			   ),
  		   )
  	   );

  		$query['meta_query'][0]['key'] = '_wp_attached_file';

  		// query attachments
  		$ids = get_posts($query);

  		if (! empty($ids)) {
  			foreach ($ids as $id) {
  				// first entry of returned array is the URL
  				if ($url === array_shift(wp_get_attachment_image_src($id, 'full')))
  					return $id;
  			}
  		}

  		$query['meta_query'][0]['key'] = '_wp_attachment_metadata';

  		// query attachments again
  		$ids = get_posts($query);

  		if (empty($ids))
  			return false;

  		foreach ($ids as $id) {
  			$meta = wp_get_attachment_metadata($id);
  			foreach ($meta['sizes'] as $size => $values) {
  				if ($values['file'] === $file && $url === array_shift(wp_get_attachment_image_src($id, $size)))
  					return $id;
  			}
  		}

      // This seems necessary, this function wasn't returning the ID otherwise
      return $id;
  		//return false;
  	}
  }

  // No idea what this does
  // Maybe just for SVG and I can ignore it
  if (!function_exists('wppf_upload_mimes')) {
  	function wppf_upload_mimes($existing_mimes=array()) {
  		$existing_mimes['svg'] = 'mime/type';
  		return $existing_mimes;
  	}
  }


  // Again, no idea what's going on here, not getting an out put.
  if (!function_exists('wppf_svg_field_edit')) {
  	/**
  	 * Adding our custom fields to the $form_fields array
  	 * @link http://net.tutsplus.com/tutorials/wordpress/creating-custom-fields-for-attachments-in-wordpress/
  	 * @param array $form_fields
  	 * @param object $post
  	 * @return array
  	 */
  	function wppf_svg_field_edit($form_fields, $post) {
  		if (substr($post->post_mime_type, 0, 5) == 'image' && $post->post_mime_type != 'image/svg+xml') {
  			$form_fields["svg"] = array(
  				"label" => __("SVG file URL"),
  				"input" => "text", // this is default if "input" is omitted
  				"value" => get_post_meta($post->ID, "_svg", true)
  			);
  			return $form_fields;
  		}
  	}
  }

  // Maybe I can ignore all this SVG stuff?
  if (!function_exists('wppf_svg_field_save')) {
  	/**
  	 * @link http://net.tutsplus.com/tutorials/wordpress/creating-custom-fields-for-attachments-in-wordpress/
  	 * @param array $post
  	 * @param array $attachment
  	 * @return array
  	 */
  	function wppf_svg_field_save($post, $attachment) {
  		if (isset($attachment['svg'])){
  			update_post_meta($post['ID'], '_svg', $attachment['svg']);
  		}
  		return $post;
  	}
  }

  // Register the picturefill js file—this I know and need and it's working.
  if (!function_exists('wppf_script')) {
  	function wppf_script() {
  		wp_register_script('picturefill', plugins_url( 'picturefill.js', __FILE__ ));
  		wp_enqueue_script('picturefill');
  	}
  }

  // Does this search for <img> ?
  if (!function_exists('wppf_content')) {
  	function wppf_content($content) {
  		$content = preg_replace_callback('/<img[^>]+\>/i', "wppf_replace", $content);
  		return $content;
  	}
  }

  if (!function_exists('wppf_replace')) {
  	function wppf_replace($matches) {
  		$img = $matches[0];

  		preg_match_all('/(id|class|src|alt|title)="([^"]*)"/i', $img, $matches);
  		$attributes = $matches[1];
  		$values = $matches[2];

  		// make sure we have an image src AND that it's a WP attachment
  		$src = array_search('src', $attributes);

  		if ($src === false) { return $img; }
  		unset($attributes[$src]);
  		$src = $values[$src];

  		$attachmentID = get_attachment_id($src);

  		//echo "<br>The src is: " . $src . "<br>";
  		//print_r ($attributes);
  		//echo "<br>The attachment_id output is: " . get_attachment_id($src);
  		//echo "<br>The attachmentID is: " . $attachmentID;

  		// If an ID isn't found, just return the plain <img>
  		if (empty($attachmentID)) {
  		  return $img;
  		}

  		$attachment 				= wp_get_attachment_metadata($attachmentID);
  		$attachment_image			= wp_get_attachment_image_src($attachmentID, 'full');
  		$attachment_image_small		= wp_get_attachment_image_src($attachmentID, 'thumbnail');
  		$attachment_image_medium	= wp_get_attachment_image_src($attachmentID, 'medium');
  		$attachment_image_large		= wp_get_attachment_image_src($attachmentID, 'large');
  		$attachment_image_large_retina		= wp_get_attachment_image_src($attachmentID, 'large-retina');
  		$attachment_image_big_small		= wp_get_attachment_image_src($attachmentID, 'big-img-small');
  		$attachment_image_big_retina_small		= wp_get_attachment_image_src($attachmentID, 'big-img-retina-small');
  		$attachment_image_big_large		= wp_get_attachment_image_src($attachmentID, 'big-img-large');
  		$attachment_image_big_retina_large		= wp_get_attachment_image_src($attachmentID, 'big-img-retina-large');

  		// Picturefill markup, not proposed <picture> markup.
  		$output = '
  			<div data-picture data-';
  		foreach ($attributes as $key => $attribute) {
  			if ($values[$key] != '') {
  				$output .= $attribute . '="' . $values[$key] . '"';
  			}
  		}
  		$output .= '>';

  		// svg
  		$svg = get_post_meta($attachmentID, '_svg');
  		if (!empty($svg) && is_array($svg)) {
  			$svg = trim($svg[0]);
  			if (!empty($svg)) {
  				$output .= '
  					<!-- If browser supports inline SVG, use image below: -->
  					<!-- <source type="image/svg+xml" src="' . $svg . '"></source> -->
  					<source type="image/svg+xml" src="' . $svg . '"></source>
  				';
  			}
  		}

  		// responsive raster images and fallback
  		$output .= '

  				<!-- Below 600px use the 480px wide image -->
  				<div data-src="' . $attachment_image_big_small[0] . '"></div>

  				<!-- Below 600px and retina use the 960px wide image -->
  				<div data-src="' . $attachment_image_big_retina_small[0] . '" data-media="(min--moz-device-pixel-ratio: 1.3),
          (-o-min-device-pixel-ratio: 2.6/2),
          (-webkit-min-device-pixel-ratio: 1.3),
          (min-device-pixel-ratio: 1.3),
          (min-resolution: 1.3dppx)"></div>






  				<!-- Above 600px and below 1200px use the 1024px wide image -->
  				<div data-src="' . $attachment_image_large[0] . '" data-media="(min-width: 37.5em)"></div>

  				<!-- Above 600px and below 1200px and retina use the 2048px wide image -->
  				<div data-src="' . $attachment_image_large_retina[0] . '" data-media="(min--moz-device-pixel-ratio: 1.3),
          (-o-min-device-pixel-ratio: 2.6/2),
          (-webkit-min-device-pixel-ratio: 1.3),
          (min-device-pixel-ratio: 1.3),
          (min-resolution: 1.3dppx)"></div>






  				<!-- Above 1200px use the 1920px wide image -->
  				<div data-src="' . $attachment_image_big_large[0] . '" data-media="(min-width: 75em)"></div>

  				<!-- Above 1200px and retina use the 3000px wide image -->
  				  <div data-src="' . $attachment_image_big_retina_large[0] . '" data-media="(min--moz-device-pixel-ratio: 1.3),
            (-o-min-device-pixel-ratio: 2.6/2),
            (-webkit-min-device-pixel-ratio: 1.3),
            (min-device-pixel-ratio: 1.3),
            (min-resolution: 1.3dppx)"></div>






  				<!-- Fallback content for non-JS browsers. Same img src as the initial, unqualified source element. -->
  				<noscript><img src="' . $attachment_image_medium[0] . '"';
  		foreach ($attributes as $key => $attribute) {
  			if ($values[$key] != '') {
  				$output .= $attribute . '="' . $values[$key] . '"';
  			}
  		}
  		$output .= ' /></noscript>
  			</div>
  		';

  		return $output;
  	}
  }
  
}

?>