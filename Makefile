ASSETS := favicon.ico apple-touch-icon.png google-touch-icon.png

build: assets
	jekyll build

up: assets
	jekyll build --drafts --watch

assets: $(ASSETS)

favicon.ico: favicon.svg
	rsvg-convert $< -w 32 -h 32 | convert - $@

apple-touch-icon.png: favicon.svg
	rsvg-convert $< -w 180 -h 180 \
		| convert - -background "#fff" -alpha remove -alpha off $@
	optipng $@
	advpng -z4 $@

google-touch-icon.png: favicon.svg
	rsvg-convert $< -w 512 -h 512 -o $@
	optipng $@
	advpng -z4 $@

clean:
	rm -fv $(ASSETS)

.PHONY: build up assets clean
