IMAGE_NAME := coorde/article-ccc-backend

SUDO :=
DOCKER := $(SUDO) docker
DOCKER_RUN := $(DOCKER) run --rm -v $(CURDIR):/workdir $(IMAGE_NAME)

LATEXMK ?= $(DOCKER_RUN) latexmk
LATEXMKOPT ?=

MAIN := main
SOURCES := $(MAIN).tex Makefile latexmkrc references.bib
FIGURES := $(shell find figures/* -type f)

.PHONY: all
all: $(MAIN).pdf

.PHONY: image
image: .image-built

.image-built: Dockerfile
	$(DOCKER) build . -t $(IMAGE_NAME)
	touch .image-built

$(MAIN).pdf: .image-built $(SOURCES) $(FIGURES)
	$(LATEXMK) $(LATEXMKOPT) $(MAIN).tex

.PHONY: clean
clean:
	$(LATEXMK) -C $(MAIN)
	-rm -f $(MAIN).bbl
	-rm .image-built
