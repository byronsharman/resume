#import "../lib.typ": dates-helper

#let data = (
  parenthetical: "Lead TA (CSCI220: Data Structures and Algorithms)",
  title: "Colorado School of Mines",
  location: "Golden, CO",
  dates: dates-helper(start-date: "January 2025", end-date: "Present"),
  bullets: (
    [
      Graded and provided personalized feedback on over 100 analysis papers
      investigating the purpose, time complexity, space complexity, and
      performance--memory tradeoffs of data structures and algorithms
    ],
    // [
    //   Assisted professors in developing a curriculum to foo bars more effectively
    // ],
    [
      Helped students analyze data structures and algorithms such as
      hashtables, tries, and $k$-way merge sort
    ],
  ),
)
