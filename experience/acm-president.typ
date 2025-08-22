#import "../lib.typ": dates-helper

#let data = (
  name: "President of ACM",
  dates: dates-helper(start-date: "May 2024", end-date: "Present"),
  parenthetical: "Computer Science Club",
  bullets: (
    [
      Leveraged *Svelte* to generate blogs, projects, and blog previews from YAML metadata and Markdown
    ],
    [
      Tailored *SEO* through practices like OpenGraph and JSON-LD structured data, `<meta>` tags, responsive web design, etc.
    ],
    [
      Wrote custom Markdown renderer for `marked.js`, enabling features like responsive images and syntax highlighting
    ],
  ),
)
