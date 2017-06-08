tag=claranet/puppet-lint
version=$(shell grep org.label-schema.version Dockerfile | grep --only-matching "[[:digit:]]\+\.[[:digit:]]\+\.[[:digit:]]\+")

.PHONY: image
image:
	docker build --tag $(tag):$(version) .

.PHONY: bash
bash: image
	docker run --rm -it --entrypoint=bash $(tag):$(version)
