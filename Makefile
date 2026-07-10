PANDOC := pandoc
CSS := styles/style.css
FRONTMATTER := $(wildcard frontmatter/*.md)
METADATA := frontmatter/metadata.yaml
TEMPLATE := templates/latex-template.tex
CHAPTERS := $(shell for d in chapters/*; do if [ -f "$$d/chapter.md" ]; then echo "$$d/chapter.md"; fi; done)
OUTPUT_DIR := output

.PHONY: all html pdf clean

all: html pdf

html:
	@mkdir -p $(OUTPUT_DIR)
	$(PANDOC) --metadata-file=$(METADATA) $(FRONTMATTER) $(CHAPTERS) -s -o $(OUTPUT_DIR)/book.html --css=$(CSS) || true

pdf:
	@mkdir -p $(OUTPUT_DIR)
	$(PANDOC) --metadata-file=$(METADATA) $(FRONTMATTER) $(CHAPTERS) -s --template=$(TEMPLATE) --pdf-engine=xelatex -o $(OUTPUT_DIR)/book.pdf || true

clean:
	rm -rf $(OUTPUT_DIR)/*
