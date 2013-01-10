=== Read Time ===
Contributors: jeremyarntz
Donate link: http://www.jeremyarntz.com/plugins/donate/
Tags: read time, post, read, time
Requires at least: 3.0
Tested up to: 3.1
Stable tag: /trunk/

Read Time generates an estimated read time for your blog posts. 

== Description ==

Read Time generates an estimated read time for your posts.

You can configure the:

1. The Words Per Minute value that is used to calculate the read time.
2. The prefix text that appears before the estimated read time.
3. The suffix text that appears after the estimated read time. 

Installation is simple. Just upload and install the plugin then place `<?php read_time(); ?>` in your templates.

For styling the Read Time output is wrapped in `<div id='read-time'></div>`.

The actual estimated time is wrapped in `<span id='read-time-text'></span>`.

== Installation ==

1. Upload the `read-time` folder to the `/wp-content/plugins/` directory
2. Activate the plugin through the 'Plugins' menu in WordPress
3. Place `<?php read_time(); ?>` in your templates

For styling the Read Time output is wrapped in `<div id='read-time'></div>`.

The actual estimated time is wrapped in `<span id='read-time-text'></span>`.

== Frequently Asked Questions ==

n/a

== Screenshots ==

1. Admin Screenshot


== Upgrade Notice ==

= 0.7 =
Fixed several bugs. Please upgrade.


== Changelog ==

= 0.7 =
Found a glitch in the Active and Deactivate functions.

= 0.6 =
Fixed an issue gave an error "The plugin does not have a valid header." when installing through Word Press.

= 0.5 =
Initial release.
