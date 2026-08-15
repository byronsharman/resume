#import "../lib.typ": dates-helper

#let data = (
  parenthetical: "Lead TA (CSCI 220: Data Structures and Algorithms)",
  title: "Colorado School of Mines",
  location: "Golden, CO",
  dates: dates-helper(start-date: "January 2025", end-date: "Present"),
  bullets: (
    [
      Helped students understand data structures and algorithms such as
      hashtables, tries, and $k$-way merge sort
    ],
    // I should probably put something about how my responsibilities have
    // expanded with becoming lead TA
    [
      Graded and provided personalized feedback on over 100 analysis papers
      investigating the purpose, time complexity, space complexity, and
      performance--memory tradeoffs of data structures and algorithms
    ],
  ),
)
