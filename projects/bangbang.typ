#import "../lib.typ": dates-helper

#let data = (
  name: "Tank shooter game",
  dates: dates-helper(start-date: "July 2023", end-date: "December 2023"),
  bullets: (
    [
      Refactored an old project to observe software engineering principles like
      separation of concerns, Liskov substition principle, and hiding
      implementation behind APIs
    ],
    [
      Rearchitected a client-trusting architecture so that the server is the
      single source of truth and clients merely render state
    ],
    [
      Drastically improved input consistency by basing update calculations on a
      time delta rather than a framerate approximation
    ],
  ),
)
