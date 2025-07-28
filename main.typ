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

== Skills
/ Technologies and Frameworks: Git, Linux, AWS, Terraform, Svelte, SvelteKit, TailwindCSS, Node.js
/ Languages: Typescript, JavaScript, Go, Python, C++, Java, Bash, regex, Nix, Typst, LaTeX

== Software Engineering Experience

#import "experience/csci220.typ"
#work(..csci220.data, verbosity: 2)
#import "projects/byronsharman-com.typ"
#project(..byronsharman-com.data, verbosity: 1, bullet-limit: 2)
#import "experience/field-session.typ"
#work(..field-session.data, verbosity: 2)
#import "projects/blasterhacks-2025.typ"
#project(..blasterhacks-2025.data, verbosity: 1)
#import "projects/blasterhacks-2024.typ"
#project(..blasterhacks-2024.data, verbosity: 1, bullet-limit: 2)

== Other Experience

#include "experience/walmart.typ"
#include "experience/ppld.typ"

#import "experience/bees-computing.typ"
#work(..bees-computing.data)

#line(length: 100%, stroke: 1pt)

/ Conversation starters: I play piano, cook, hike, play video games, read books, blog, edit Wikipedia, and more!
