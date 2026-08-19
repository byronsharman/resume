#import "../lib.typ": dates-helper

#let data = (
  name: "StandUp",
  dates: "February 2024",
  parenthetical: "BlasterHacks 2024",
  hackathon: true,
  bullets: (
    [
      // It'd be better to have a non-breaking space between "2nd" and "place", but I wonder how that will affect ATS parsing
      Won 2nd place for StandUp, a social media app that motivates office workers to take brief exercise breaks
    ],
    [
      Implemented a web-based image capturing UI that interfaced with a *Google Firebase* REST API
    ],
    [
      Collaborated on a team of three other students, applying teamwork skills to engineer a fully functional full-stack progressive web app in just 36 hours
    ],
  ),
)
