#import "../lib.typ": dates-helper

#let data = (
  title: "Teaching Assistant",
  location: "Golden, CO",
  company: "Colorado School of Mines",
  dates: dates-helper(start-date: "January 2025", end-date: "Present"),
  bullets: (
    [
      Helped students understand *data structures and algorithms* such as
      hashtables, tries, and $k$-way merge sort
    ],
    [
      Graded and provided personalized feedback on over 100 analysis papers
      investigating the purpose, time complexity, space complexity, and
      performance--memory tradeoffs of data structures and algorithms
    ],
  ),
)
