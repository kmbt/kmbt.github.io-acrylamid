.PHONY: serve
serve:
	acrylamid autocompile

.PHONY: pull
pull:
	git pull
	cd output && git pull

.PHONY: push
push:
	git add .
	cd output && git add .
	git push
	cd output && git push


clean:
	rm -rf output/*
	rm -rf .cache

.PHONY: deploy
deploy:
	cd output && git add . && git commit -a && git push
	git add . && git commit -a && git push
