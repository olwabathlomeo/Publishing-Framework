# PreTeXt Authoring Workflow

This guide outlines the complete process for writing and publishing chapters in this PreTeXt book project.

## Quick Start

1. **Start writing a new chapter:**
   ```bash
   cp templates/chapter-pretext-template.ptx pretext/source/ch-your-chapter-name.ptx
   ```

2. **Edit the chapter** in your editor with the PreTeXt syntax shown in [PRETEXT_GUIDE.md](PRETEXT_GUIDE.md)

3. **Add to the book** by editing `pretext/source/main.ptx`:
   ```xml
   <xi:include href="./ch-your-chapter-name.ptx" />
   ```

4. **Build and preview:**
   ```bash
   pretext build web
   pretext view web
   ```

5. **Review** the output in your browser at `http://localhost:8128`

## File Structure

```
pretext/
├── source/
│   ├── main.ptx              ← Book root (includes all chapters)
│   ├── ch-introduction.ptx    ← Individual chapters
│   ├── ch-working-example.ptx
│   ├── ch-structure.ptx
│   ├── ch-practice.ptx
│   ├── docinfo.ptx           ← Metadata (title, author, etc.)
│   ├── frontmatter.ptx       ← Preface, dedication, etc.
│   └── backmatter.ptx        ← Glossary, appendices, etc.
├── publication/
│   └── publication.ptx       ← Output settings (HTML/PDF configuration)
├── assets/                   ← Images, code snippets
└── output/
    ├── web/                  ← HTML output (after `pretext build web`)
    └── print/                ← PDF output (after `pretext build print`)
```

## Common Tasks

### Writing a Section
```xml
<section xml:id="sec-unique-section-name">
  <title>Section Title</title>
  <p>Your content here...</p>
</section>
```

### Adding Math
- **Inline:** `<m>E = mc^2</m>`
- **Displayed:** 
  ```xml
  <equation xml:id="eq-einstein">
    <m>E = mc^2</m>
  </equation>
  ```

### Adding Code
```xml
<pre xml:lang="python"><code>
def hello():
    print("Hello, PreTeXt!")
</code></pre>
```

### Adding Figures
```xml
<figure xml:id="fig-my-figure">
  <image source="images/my-image.png" width="60%" />
  <caption>Description of the figure</caption>
</figure>
```

### Adding Lists
```xml
<ul>
  <li>Item 1</li>
  <li>Item 2</li>
</ul>
```

## Build Commands

From the repository root:

| Command | Output | Purpose |
|---------|--------|---------|
| `pretext build web` | `pretext/output/web/` | Build interactive HTML version |
| `pretext build print` | `pretext/output/print/main.pdf` | Build PDF for printing |
| `pretext view web` | localhost:8128 | Preview HTML in browser |
| `./scripts/build-pretext.sh` | Both targets | Build web and print sequentially |

## Chapter Best Practices

1. **Use meaningful IDs:** `xml:id="ch-vectors"`, `xml:id="sec-vector-addition"`
2. **Structure your chapters:** intro → sections with subsections → conclusion
3. **Add introductions and conclusions** to all chapters
4. **Keep sections focused:** each should cover one main idea
5. **Use consistent formatting:** follow the chapter template
6. **Validate your XML:** PreTeXt will warn if structure is incorrect
7. **Test both outputs:** build web AND print to catch formatting issues

## Troubleshooting

### "Cannot find chapter"
- Check the filename matches the `xi:include href` in `main.ptx`
- Ensure the file is in `pretext/source/`

### Build fails with XML errors
- PreTeXt reports line numbers; check that line in your chapter file
- Common issues: missing closing tags, improper nesting, invalid xml:id syntax

### HTML output looks wrong
- Check `pretext/publication/publication.ptx` for output settings
- Clear cache: `rm -rf .cache pretext/.cache`
- Rebuild: `pretext build web`

### PDF generation fails
- Ensure all images exist in `pretext/assets/` or `images/`
- Check image paths are relative and accessible
- Try building web first to isolate the issue

## Next Steps

- Write your first chapter using `templates/chapter-pretext-template.ptx`
- See [PRETEXT_GUIDE.md](PRETEXT_GUIDE.md) for detailed element reference
- Customize `pretext/source/docinfo.ptx` with book metadata (title, author, etc.)
- Update `pretext/publication/publication.ptx` for advanced output settings
