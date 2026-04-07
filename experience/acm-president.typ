#import "../lib.typ": dates-helper

#let data = (
  name: "President of ACM",
  dates: dates-helper(start-date: "May 2025", end-date: "Present"),
  parenthetical: "Computer Science Club",
  bullets: (
    [
      Wrote competitive programming problems for the High School Programming Competition, igniting a passion for problem solving in over 200 high school students
    ],
    [
      Built connections with industry partners and software engineers to create networking opportunities for club members
    ],
    [
      Engaged with other students to build a welcoming community around a shared passion for computer science
    ],
  ),
)
