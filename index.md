---
title: Perfect static site template
layout: default
---

Hello, world!


Proper favicon
--------------

 - Single source: `favicon.svg`
   - Very basic image ;)
   - Sample media query for dark theme included
 - Legacy `favicon.ico` (32×32) is present, but _not_ linked
   - That way you don't have to [override Chome bugs][1]
   - Some UAs blindly try to load `/favicon.ico`
   - So, let's reduce 404s in our logs
 - Apple touch icon is [present, but _not_ linked][2]
   - Safari will try to load it anyway
   - Plain white background added
 - [Web manifest considered harmful][3] so it is not included

[1]: https://css-tricks.com/favicons-how-to-make-sure-browsers-only-download-the-svg-version/
[2]: http://test.de.co.ua/2021/10/11/favicon.html
[3]: https://twitter.com/kastaneda/status/1465484668799754245
