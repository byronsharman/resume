#import "lib.typ": *
// I've .gitignored this file because I don't want my phone number on GitHub.
// You can see an example of what it looks like in example-contact-info.typ
#import "contact-info.typ": contact-info

#let name = "Byron Sharman"
#let links = (
  "byronsharman.com",
  "linkedin.com/in/byronsharman",
  "github.com/byronsharman",
)

#show: resume.with(
  // data
  author: name,
  contact-info: contact-info,
  links: links,

  // formatting
  // accent-color: oklch(40.0%, 0.1, 211deg),
  font: "Libertinus Serif",
  font-size: 11pt,
  paper: "us-letter",
  author-position: left,
  personal-info-position: left,
)

== Education

#include "education/mines.typ"
// #include "education/canterbury.typ"

== Experience

#experience("experience/csci220.typ", verbosity: 2, bullet-limit: 1)
#experience("experience/the-trade-desk.typ", verbosity: 2)
#experience("experience/field-session.typ", verbosity: 2, bullet-limit: 3)

== Projects and Leadership
#experience("projects/byronsharman-com.typ", verbosity: 1, bullet-limit: 2)
#experience("experience/acm-president.typ", verbosity: 1, bullet-limit: 2)
#experience("projects/dubhacks-2025.typ", verbosity: 1)
#experience("projects/blasterhacks-2025.typ", verbosity: 1)
// #experience("projects/bangbang.typ", verbosity: 2, bullet-limit: 1)
// #experience("projects/blasterhacks-2024.typ", verbosity: 2, bullet-limit: 2)

== Skills
/ Cloud & Infra: AWS, Kubernetes, Terraform, GitOps, HashiCorp Vault, Linux, Backstage, GitHub, GitLab
// / Frameworks: Node.js, Svelte, Vite, Tailwind, Node.js
/ Languages: TypeScript, JavaScript, Go, Python, C++, Java, Nix, Typst, LaTeX

/*
== Other Experience

#work("experience/walmart.typ")
#work("experience/ppld.typ")
// #work("experience/bees-computing.typ")

// #line(length: 100%, stroke: 1pt)
// / Conversation starters: I play piano, cook, hike, play video games, read books, blog, edit Wikipedia, and more!
*/
