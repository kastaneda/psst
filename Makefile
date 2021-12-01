ASSETS := favicon.ico apple-touch-icon.png

build: $(ASSETS)
	jekyll build

up: $(ASSETS)
	jekyll build --drafts --watch

favicon.ico: favicon.svg
	rsvg-convert $< -w 32 -h 32 | convert - $@

apple-touch-icon.png: favicon.svg
	rsvg-convert $< -w 180 -h 180 \
		| convert - -background "#fff" -alpha remove -alpha off $@
	optipng $@
	advpng -z4 $@

clean:
	rm -fv $(ASSETS)

.PHONY: build up clean