# PreTeXt Authoring Guide

This guide explains how to write and maintain chapters in the PreTeXt format used by this Publishing Framework.

## Getting started

1. Copy `templates/chapter-pretext-template.ptx` to `pretext/source/` with a descriptive name (e.g., `ch-my-chapter.ptx`).
2. Edit the chapter ID, title, and content.
3. Add the new chapter to `pretext/source/main.ptx` by including it in the book structure.
4. Run `pretext build web` to preview your work.

## Chapter structure

Every PreTeXt chapter has this basic structure:

```xml
<chapter xml:id="ch-unique-id">
  <title>Chapter Title</title>
  
  <introduction>
    <!-- Introductory content -->
  </introduction>

  <!-- Sections -->
  <section xml:id="sec-section-id">
    <title>Section Title</title>
    <!-- Section content -->
  </section>

  <conclusion>
    <!-- Summary content -->
  </conclusion>
</chapter>
```

## Key elements

### Paragraphs

```xml
<p>Regular paragraph text goes here.</p>
```

### Sections and subsections

```xml
<section xml:id="sec-unique-id">
  <title>Section Title</title>
  
  <subsection xml:id="subsec-unique-id">
    <title>Subsection Title</title>
    <p>Content here.</p>
  </subsection>
</section>
```

### Lists

Itemized (bullet) list:

```xml
<itemizedlist>
  <item><p>First item</p></item>
  <item><p>Second item</p></item>
</itemizedlist>
```

Ordered (numbered) list:

```xml
<orderedlist>
  <item><p>First step</p></item>
  <item><p>Second step</p></item>
</orderedlist>
```

### Mathematics

Inline math:

```xml
<p>The equation <math>E = mc^2</math> is famous.</p>
```

Displayed equation:

```xml
<equation>
  <math>\int_0^1 f(x) \, dx = F(1) - F(0)</math>
</equation>
```

### Code and verbatim

```xml
<p>Inline code: <c>int x = 5;</c></p>
```

For longer code blocks, use `<program>` with `<input>` and optional `<output>`:

```xml
<program>
  <input>
def hello():
    print("Hello, world!")
  </input>
</program>
```

## Best practices

1. **Use meaningful IDs**: Choose IDs that reflect content (e.g., `ch-vectors`, `sec-definitions`).
2. **Keep sections focused**: One main idea per section.
3. **Use introductions and conclusions**: They help readers understand scope and context.
4. **Check your build**: Run `pretext build web` frequently to catch errors early.
5. **Use cross-references**: Link to other sections with `<xref>` tags.

## Adding a chapter to the book

After creating your chapter file, include it in `pretext/source/main.ptx`:

```xml
<book>
  <!-- ... other chapters ... -->
  <xi:include href="./ch-my-chapter.ptx" />
  <!-- ... other chapters ... -->
</book>
```

## Building and previewing

From the repository root:

```bash
pretext build web
pretext view web
```

Or use the helper:

```bash
./scripts/build-pretext.sh
```

Output appears in `pretext/output/web/` for HTML and `pretext/output/print/` for PDF.

## Resources

- [PreTeXt documentation](https://pretextbook.org)
- [PreTeXt author guide](https://pretextbook.org/doc/guide/html/)
- [PreTeXt sample chapters](https://github.com/PreTeXtBook/examples)
