#import "../lib.typ": dates-helper

#let data = (
  title: "The Trade Desk",
  parenthetical: "Software Engineer Intern",
  location: "Denver, CO",
  dates: dates-helper(start-date: "May 2026", end-date: "August 2026"),
  bullets: (
    [
      Built an API integration that populated Backstage's software catalog with
      services inferred from Kubernetes workloads, giving engineers and AI
      agents visibility across the entire org's platform for the first time
    ],
    [
      Expanded that integration to populate Backstage's per-entity Kubernetes
      dashboard, so the UI shows data fetched from our internal API rather than
      directly connecting to pods from a hardcoded list
    ],
    [
      Reduced build times by 40%, increasing iteration speed and saving
      hundreds of hours of engineering labor over time
    ],
    [
      Took ownership of problems outside the scope of my project, such as failing
      builds due to namespace migrations
    ],
  ),
)
