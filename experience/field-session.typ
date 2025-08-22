#import "../lib.typ": dates-helper

#let data = (
  title: "CSCI370 Field Session",
  location: "Golden, CO",
  company: "Swim Tech, LLC",
  dates: dates-helper(start-date: "May 2025", end-date: "June 2025"),
  bullets: (
    [
      Built a microservice that converts voice recordings to text, recognizes names, and matches them to student records, paving the way for automations that empower Swim Tech to spend less time on logistics and more on swim instruction
    ],
    [
      Designed a serverless architecture in *AWS* estimated to cost 1/10th of
      equivalent traditional compute options
    ],
    [
      Provisioned cloud resources with *infrastructure as code* for better
      reproducibility, a seamless client hand-off, and a straightforward process
      for the *CI/CD Pipeline*
    ],
    [
      Bridged business and engineering domains by translating stakeholder
      requirements into technical specifications
    ],
  ),
)
