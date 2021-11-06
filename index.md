---
title: Perfect static site template
layout: default
---

Hello, world!


Proper favicon
--------------

 - Single source: `favicon.svg`
   - Has media query for dark theme
 - Apple touch icon with white background
 - Legacy `.ico` is present, but _not_ linked
   - That way you don't have to [override Chome bugs][1]
   - Some dumb UAs blindly try to load `/favicon.ico`
   - So, let's reduce 404s in our logs

[1]: https://css-tricks.com/favicons-how-to-make-sure-browsers-only-download-the-svg-version/
