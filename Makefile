.PHONY: serve
serve:
	acrylamid autocompile

clean:
	rm -rf output/*
	rm -rf .cache

.PHONY: deploy
deploy:
	cd output && git add . && git commit -a && git push
	git add . && git commit -a && git push
