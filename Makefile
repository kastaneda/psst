build: assets
	jekyll build

up: assets
	jekyll build --drafts --watch

assets: favicon.ico apple-touch-icon.png

favicon.ico: favicon.svg
	rsvg-convert $< -w 32 -h 32 -o favicon.png
	convert favicon.png $@
	rm favicon.png

apple-touch-icon.png: favicon.svg
	rsvg-convert $< -w 180 -h 180 | \
		convert - -background white -alpha remove -alpha off $@
	optipng $@
	advpng -z4 $@

.PHONY: build up assets
