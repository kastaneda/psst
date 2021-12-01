---
title: Perfect static site template
layout: default
---

Hello, world!

This is a small template for a small static site.


Proper favicon
--------------

Indeed, this site is made to play with 'favicons'.


### Single source of trurh: `favicon.svg`

All other formats is generated from the SVG source.

![Green circle](/favicon.svg)

 - Very basic image to start ;)
 - Sample media query for dark theme included


### Legacy `favicon.ico` (32×32)

It is present in the site's root, but _not_ linked. Why?

 - Anyway, some UAs (like IE6) blindly try to load `/favicon.ico`
 - But that way you don't have to [override Chome bugs][1]

More research needed.


### Apple touch icon (180×180)

It also is present on predefined place, but _not_ linked.
Safari will [try to load it anyway][2], when user attempts
to add the site to the desktop.

 - Plain white background added


### No web manifest

Web manifest is [considered harmful][3]¸ so it is not included for now.


Mandatory section
-----------------

<span lang="la">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span>


[1]: https://css-tricks.com/favicons-how-to-make-sure-browsers-only-download-the-svg-version/
[2]: http://test.de.co.ua/2021/11/08/favicon-research.html
[3]: https://twitter.com/kastaneda/status/1465484668799754245