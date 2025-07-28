#import "../lib.typ": dates-helper

#let data = (
  title: "Summer Assistant",
  location: "Colorado Springs, CO",
  company: "Pikes Peak Library District",
  dates: dates-helper(start-date: "June 2023", end-date: "August 2023"),
  bullets: (
    [
      Staffed outreach events at elementary schools to promote PPLD's Summer
      Adventure program, encouraging a record-breaking 14,363 students aged 0--18
      to sign up
    ],
    [
      Organized events and programs for the Family and Children's Services
      department
    ],
  ),
)
