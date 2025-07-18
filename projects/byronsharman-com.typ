#import "../lib.typ": dates-helper, project

#project(
  name: "Personal Website",
  dates: dates-helper(start-date: "January 2024", end-date: "Present"),
  parenthetical: "byronsharman.com",
)
- Leveraged *Svelte* to generate blogs, projects, and blog previews from JSON metadata and Markdown
- Wrote custom Markdown rendering wrappers around `marked.js`, allowing for syntax highlighting and `<figure>`s with image caption support
- Tailored *SEO* through practices like OpenGraph and JSON-LD structured data, static rendering, `<meta>` tags, responsive web design, etc.
