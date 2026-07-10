# Publishing Framework

A PreTeXt-based authoring and publishing workflow for technical books, courses, and educational materials.

## Getting Started

**Start here:** Read [WORKFLOW.md](WORKFLOW.md) for the complete authoring workflow.

For detailed element reference, see [PRETEXT_GUIDE.md](PRETEXT_GUIDE.md).

## Quick Build

From the repository root:

```bash
pretext build web
pretext view web
```

Or for both web and print:

```bash
./scripts/build-pretext.sh
```

Outputs:
- HTML: `pretext/output/web/`
- PDF: `pretext/output/print/main.pdf`

## First Chapter

1. Copy `templates/chapter-pretext-template.ptx` to `pretext/source/ch-my-chapter.ptx`
2. Edit with your content
3. Add to `pretext/source/main.ptx`:
   ```xml
   <xi:include href="./ch-my-chapter.ptx" />
   ```
4. Build and preview with `pretext build web && pretext view web`

## PreTeXt Project Structure

- `pretext/source/` — book source files that PreTeXt builds
- `pretext/project.ptx` — PreTeXt manifest for targets and output
- `pretext/publication/publication.ptx` — presentation settings for HTML and PDF
- `pretext/output/` — generated build artifacts

## Legacy content

The repository also includes Markdown chapter drafts and templates in `chapters/` and `templates/`. The current published output is now driven by the PreTeXt project.

## Notes

- `./scripts/build.sh` remains available for the older Pandoc workflow.
- Use `pretext view web` from the repository root to preview the HTML output locally.
- See [PRETEXT_GUIDE.md](PRETEXT_GUIDE.md) for detailed authoring instructions.
