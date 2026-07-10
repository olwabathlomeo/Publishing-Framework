# Publishing Framework

This repository provides a simple publishing workflow for building a book from Markdown files with Pandoc.

## Quick start

```bash
sudo apt-get update
sudo apt-get install -y pandoc texlive-xetex make
cd /home/interns/Documents/Publishing-Framework
./scripts/build.sh
```

Outputs:
- `output/book.html`
- `output/book.pdf`

## PreTeXt project

A PreTeXt version of the book is available in the `pretext/` subdirectory.

```bash
cd /home/interns/Documents/Publishing-Framework/pretext
pretext build
```

Or run the helper script from the repository root:

```bash
./scripts/build-pretext.sh
```

Outputs for the PreTeXt project are generated in `pretext/output/`.

## Writing workflow

1. Create or edit a chapter in `chapters/`.
2. Use `templates/chapter-template.md` as the starting structure.
3. Rebuild with `./scripts/build.sh`.
4. Review the generated output in `output/`.
## Start here

- Begin with `chapters/01-introduction/chapter.md`.
- Use `SUMMARY.md` to see the current chapter order.
- Add a new chapter file and then update `SUMMARY.md`.
## Project structure

- `chapters/` — main book content
- `frontmatter/` — title page and metadata
- `templates/` — reusable writing templates
- `styles/` — HTML styling
- `output/` — generated book files

See `CONTRIBUTING.md` for contributor setup.

A reusable publishing framework for writing professional books, university courses, lecture notes, technical documentation, and research monographs.

---

## Vision

The goal of this framework is to provide a structured environment for planning, writing, reviewing, and publishing high-quality educational and technical materials.

Instead of starting every new project from scratch, this framework serves as a reusable template that can be copied and adapted for any new publication.

---

## Features

- Structured project organization
- Chapter-based writing
- Reusable templates
- Bibliography management
- Image and figure organization
- Exercise and solution management
- Version tracking
- Multi-format publishing (PDF, HTML, EPUB)

---

## Project Structure

```text
Publishing-Framework/
│
├── frontmatter/
├── chapters/
├── bibliography/
├── images/
├── exercises/
├── output/
└── ...
```

---

## Workflow

Planning

↓

Project Design

↓

Outline

↓

Writing

↓

Review

↓

Publishing

---

## Current Status

Version 0.1

Planning Stage