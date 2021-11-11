---
title: Perfect static site template
layout: default
---

Hello, world!


Proper favicon
--------------

 - Single source: `favicon.svg`
   - Has media query for dark theme
 - Legacy `favicon.ico` (32×32) is present, but _not_ linked
   - That way you don't have to [override Chome bugs][1]
   - Some UAs blindly try to load `/favicon.ico`
   - So, let's reduce 404s in our logs
 - Apple touch icon is present, but _not_ linked
   - Safari will try to load it anyway
   - Plain white background added

[1]: https://css-tricks.com/favicons-how-to-make-sure-browsers-only-download-the-svg-version/
