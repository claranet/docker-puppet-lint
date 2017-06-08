# http://clarkgrubb.com/makefile-style-guide

MAKEFLAGS += --warn-undefined-variables --no-print-directory
SHELL := bash
.SHELLFLAGS := -eu -o pipefail -c
.DEFAULT_GOAL := all
.DELETE_ON_ERROR:
.SUFFIXES:

tag = claranet/puppet-lint
versions = $(shell find . -maxdepth 1 -type d | grep --only-matching "[[:digit:]]\+\.[[:digit:]]\+\.[[:digit:]]\+" | sort)
latest_version = $(word $(words $(versions)),$(versions))

.PHONY: all
all: $(versions) latest

.PHONY: $(versions)
$(versions):
	@$(MAKE) --directory=$@

.PHONY: latest
latest: $(latest_version)
	docker tag $(tag):$(latest_version) $(tag):latest
