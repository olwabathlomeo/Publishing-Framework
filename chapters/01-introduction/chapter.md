# Introduction

This chapter introduces the publishing framework and explains how to use this repository as a writing workspace.

A successful book project should make it easy to write, review, and publish content. This repository does that by using:

- Markdown for writing
- Pandoc for format conversion
- A small set of templates for consistency
- A single build command for HTML and PDF output

## Why this framework exists

Most authors spend too much time managing tooling instead of writing. This framework keeps the workflow simple by separating content from presentation and using widely supported tools.

The main goals are:

- Keep chapter files easy to read and edit
- Create both online and printable output from the same source
- Use a small, predictable project layout
- Support future expansion without changing the core authoring flow

## How the book is organized

This book is organized into clear sections.

- `frontmatter/` contains metadata, title pages, and the table of contents.
- `chapters/` holds each chapter as a separate Markdown file.
- `templates/` provides the structures you can reuse when writing.
- `styles/` contains the CSS for HTML output.
- `output/` is where generated files appear after building.

Each chapter is written as a standalone Markdown document so authors can add, move, or revise sections without touching the build system.

## What you will learn here

By reading and using this framework, you will learn:

- how to write chapter content in Markdown
- how to build a web-ready HTML book
- how to create a PDF version for print or distribution
- how to keep your content consistent with templates

## Your first authoring steps

1. Open `templates/chapter-template.md` to see the recommended chapter structure.
2. Copy the template into a new file under `chapters/`.
3. Write your chapter in plain Markdown.
4. Run `./scripts/build.sh`.
5. Review the generated files in `output/`.

## Why this chapter matters

This introduction establishes the workflow and gives you a clear starting point. It is the first step toward using the book as a writing environment, not just a collection of files.

## Summary

This repository is designed to help you write faster and publish cleaner output. The rest of the book will build on this workflow with practical examples, structure guidance, and review processes.

