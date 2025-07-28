#import "../lib.typ": dates-helper

#let data = (
  title: "CSCI370 Field Session",
  location: "Golden, CO",
  company: "Swim Tech, LLC",
  dates: dates-helper(start-date: "May 2025", end-date: "June 2025"),
  bullets: (
    [
      Designed a serverless architecture in *AWS* estimated to cost roughly
      1/10th of equivalent traditional compute options
    ],
    [
      Provisioned cloud resources with OpenTofu (an open-source fork of
      *Terraform*), managing all *infrastructure as code* for better
      reproducibility and a seamless client hand-off
    ],
    [
      Bridged business and engineering domains by translating stakeholder
      requirements into technical specifications
    ],
    [
      Wrote a *CI/CD pipeline* that applies infrastructure changes, renders a
      static site, and deploys the app, saving hours of tedious manual deployment
      and facilitating feature delivery
    ],
  ),
)
- 
- 
- 
