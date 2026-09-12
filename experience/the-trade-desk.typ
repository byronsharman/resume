#import "../lib.typ": dates-helper

#let data = (
  title: "The Trade Desk",
  parenthetical: "Software Engineer Intern",
  location: "Denver, CO",
  dates: dates-helper(start-date: "May 2026", end-date: "August 2026"),
  bullets: (
    [
      Improved developer experience by dynamically discovering Kubernetes
      workloads, exposing 800+ additional services in the software catalog
      and giving engineers and AI agents visibility into the entire org's platform
      for the first time
    ],
    [
      Implemented a dashboard projected to reduce incident response time by 25%
      by allowing incident response teams to pinpoint problems in Kubernetes
      deployments
      // my manager estimated this for me!
    ],
    [
      Addressed CI/CD slowness by optimizing image builds and dependency
      installation, reducing build times by 40%
    ],
    [
      Coordinated a cross-functional debugging effort after identifying and
      escalating a deployment stack failure
    ],
    [
      Led a training session to teach approximately 50 engineers how to use the
      new catalog for service discovery and dashboard for incident response
    ],
  ),
)
