#import "../lib.typ": dates-helper

#let data = (
  title: "Personal Website",
  dates: dates-helper(start-date: "January 2024", end-date: "Present"),
  // parenthetical: "byronsharman.com",
  parenthetical: link("https://byronsharman.com")[byronsharman.com],
  bullets: (
    [
      Blog to sharpen communication skills and process the college experience in a creative way
    ],
    // [
    //   Leveraged Svelte to generate blogs, projects, and blog previews from YAML metadata and Markdown
    // ],
    [
      Tailored SEO through practices like OpenGraph and JSON-LD structured data, `<meta>` tags, responsive web design, etc.
    ],
    [
      Wrote custom Markdown renderer for `marked.js`, enabling features like responsive images and syntax highlighting
    ],
    [
      Wrote end-to-end tests with Playwright, making it possible to author and deploy rapid changes with confidence
    ],
  ),
)
