# Publishing Framework

A PreTeXt-based authoring and publishing workflow for technical books, courses, and educational materials.

## Quick start

```bash
cd /home/interns/Documents/Publishing-Framework/pretext
pretext build web
pretext build print
```

Or from the repository root:

```bash
./scripts/build-pretext.sh
```

Outputs:
- `pretext/output/web`
- `pretext/output/print`

## Authoring workflow

1. Write or edit chapters in the main repository under `chapters/`.
2. Use `templates/chapter-template.md` to create new chapters.
3. Rebuild the PreTeXt project with `./scripts/build-pretext.sh`.
4. Review the generated HTML and PDF output in `pretext/output/`.

## PreTeXt project structure

- `pretext/source/` — book source files that PreTeXt builds
- `pretext/project.ptx` — PreTeXt manifest for targets and output
- `pretext/publication/publication.ptx` — presentation settings for HTML and PDF
- `pretext/output/` — generated build artifacts

## Legacy content

The repository also includes Markdown chapter drafts and templates in `chapters/` and `templates/`. The current published output is now driven by the PreTeXt project.

## Notes

- `./scripts/build.sh` remains available for the older Pandoc workflow.
- Use `pretext view web` inside `pretext/` to preview the HTML output locally.
