.PHONY: serve
serve:
	sensible-browser http://127.0.0.1:8000 &
	acrylamid autocompile &

.PHONY: pull
pull:
	git pull
	cd output && git pull

.PHONY: deploy
deploy: push

.PHONY: push
push:
	git add .
	cd output && git add .
	@read -p "Enter commit message: " commit_message; \
		git diff-index --quiet HEAD ||  git commit -am "$$commit_message"; \
		cd output && git diff-index --quiet HEAD ||  git commit -am"$$commit_message"
	git push
	cd output && git push


clean:
	rm -rf output/*
	rm -rf .cache

