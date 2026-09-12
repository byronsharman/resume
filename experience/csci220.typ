#import "../lib.typ": dates-helper

#let data = (
  parenthetical: "CSCI220: Data Structures and Algorithms",
  title: "Lead TA",
  location: "Golden, CO",
  dates: dates-helper(start-date: "January 2025", end-date: "Present"),
  bullets: (
    [
      Helped students analyze data structures and algorithms such as
      hashtables, tries, and $k$-way merge sort
    ],
    [
      Graded and provided personalized feedback on 150+ analysis papers
      investigating the purpose, time complexity, space complexity, and
      performance--memory tradeoffs of data structures and algorithms
    ],
  ),
)
