logo24-bones
============

LOGO24 WP Starter Theme - based on Bones

This theme uses Compass.

From terminal or the command line, navigate to logo24-bones/library/css and run ``compass watch``.

## Typography

Start off by setting the ``$base-font-size`` and ``$base-line-height`` in style.scss. Compass ``establish-baseline`` will maintain the vertical rhythm based on those variables when the following helper is used to set font size: ``@include adjust-font-size-to(22px)``.

## Relative Units

Two helpers are in place to deal with the ``em`` conversion.

If an element inherits the ``$base-font-size``, use ``pem()`` to convert pixels to ems. E.g. ``margin-left: 12px`` can become ``margin-left: pem(12px)`` and the 12px will be converted to an em value relative to the ``$base-font-size``

If an element has a font size other than the ``$base-font-size`` set, e.g. a heading, then the ``@include scale()`` helper can be used with the new font size specified. E.g.

    // Base font size inherited
    .p {
      margin: 0 pem(24px);
    }
    
    h1 {
      @include adjust-font-size-to(22px)
      
      // This means convert px to em, where 1em = 22px
      @include scale(margin, 0px 12px, 22px)
    }
    
    See _helpers.scss for more examples.

See [http://mrdanadams.com/2012/pixel-ems-css-conversion-sass-mixin/] (http://mrdanadams.com/2012/pixel-ems-css-conversion-sass-mixin/)

Do not make changes to style.css.