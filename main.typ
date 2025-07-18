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
  font: "Libertinus Serif",
  font-size: 11pt,
  paper: "us-letter",
  author-position: left,
  personal-info-position: left,
)

/*
* Lines that start with == are formatted into section headings
* You can use the specific formatting functions if needed
* The following formatting functions are listed below
* #edu(dates: "", degree: "", gpa: "", institution: "", location: "", consistent: false)
* #work(company: "", dates: "", location: "", title: "")
* #project(dates: "", name: "", role: "", url: "")
* certificates(name: "", issuer: "", url: "", date: "")
* #extracurriculars(activity: "", dates: "")
* There are also the following generic functions that don't apply any formatting
* #generic-two-by-two(top-left: "", top-right: "", bottom-left: "", bottom-right: "")
* #generic-one-by-two(left: "", right: "")
*/

== Education

#include "education/mines.typ"
// #include "education/canterbury.typ"

== Experience

#include "experience/csci220.typ"
#include "experience/field-session.typ"
// #include "experience/walmart.typ"
// #include "experience/ppld.typ"

== Projects

#include "projects/byronsharman-com.typ"
#include "projects/blasterhacks-2025.typ"
#include "projects/blasterhacks-2024.typ"

== Skills

/ Languages: Python, Typescript, JavaScript, Go, C++, Terraform/HCL, Bash, regex, Nix, Typst, LaTeX
/ Technologies and Frameworks: Git, Linux, Svelte, SvelteKit, TailwindCSS, AWS, Node.js
