#import "../lib.typ": dates-helper

#let data = (
  title: "The Trade Desk",
  parenthetical: "Software Engineer Intern",
  location: "Denver, CO",
  dates: dates-helper(start-date: "May 2026", end-date: "August 2026"),
  bullets: (
    [
      Built an API integration that populated Backstage's software catalog with
      services inferred from Kubernetes workloads, allowing engineers and AI
      agents to discover projects previously known only by tribal knowledge
    ],
    [
      Expanded that integration to populate Backstage's per-entity Kubernetes
      dashboard, replacing outdated, hardcoded resource lists with data fetched in
      real time
    ],
    [
      Reduced CI/CD pipeline times by 40%, saving hundreds of hours of
      engineering labor over time
    ],
    [
  Maybe something about pivoting or being agile in the face of ambiguous project requirements?
    ],
  ),
)
