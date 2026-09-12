#import "../lib.typ": dates-helper

#let data = (
  title: "Swim Tech",
  parenthetical: "CSCI370 Field Session",
  // parenthetical: "",
  location: "Golden, CO",
  dates: dates-helper(start-date: "May 2025", end-date: "June 2025"),
  bullets: (
    [
      Built a microservice that converts voice recordings to text, recognizes
      names, and matches them to student records, enabling automations that
      empower Swim Tech to spend less time on logistics and more on swim
      instruction
    ],
    [
      Reduced costs by 90% using a serverless architecture in AWS with
      infrastructure as code and continuous deployment
    ],
  ),
)
