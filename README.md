logo24-bones
============

LOGO24 WordPress Starter Theme - based on [Bones] (https://github.com/eddiemachado/bones)

This theme uses [Compass] (http://compass-style.org/).

From terminal or the command line, navigate to ``/library/css`` and run ``compass watch``.

CSS commenting is strongly encouraged, try to [SMACSS] (http://smacss.com/) it up.

Do not make changes to ``style.css``. It's compiled from ``style.scss``

## Page Templates

Two custom page templates are included; ``template-contact.php`` and ``template-single-column``. The contact template includes a sample address marked up using microformats. These can be deleted if not required.

## Golden Grid Gridlet

You can keep an eye on the vertical rhythm with the Golden Gridlet from the [Golden Grid System] (http://goldengridsystem.com/). Edit the base font size and line height values from ``library/js/libs/ggs.js``.

Note, the Golden Grid System grid is not used.

## Layouts
Use Gridset App for layout.

## Typography

Start off by setting the ``$base-font-size`` and ``$base-line-height`` in style.scss. Compass ``establish-baseline`` will maintain the vertical rhythm based on those variables when the following helper is used to set font size: ``@include adjust-font-size-to(22px)``.

## Media Queries
  - Basics, only use min-width queries.
  - Set breakpoints to content, not to devices widths.
  - Set the width in ems, it seems the em value for media queries is relative to the browser default, 16px, regardless of the base font size we set. So I suggest commenting up as follows:
  
    // (640px @ 16px)
    @media only screen and (min-width: 40em) {
      // Do stuff above 40em
    }

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