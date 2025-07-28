// adapted from https://github.com/stuxf/basic-typst-resume-template/blob/main/src/resume.typ

#let resume(
  author: "",
  author-position: left,
  personal-info-position: left,

  contact-info: [],
  links: [],

  accent-color: rgb("#000000"),
  font: "New Computer Modern",
  paper: "us-letter",
  author-font-size: 20pt,
  font-size: 10pt,

  body,
) = {

  // Sets document metadata
  set document(author: author, title: author)

  // Document-wide formatting, including font and margins
  set text(
    // LaTeX style font
    font: font,
    size: font-size,
    lang: "en",
    // Disable ligatures so ATS systems do not get confused when parsing fonts.
    ligatures: false
  )

  set page(
    margin: 0.5in,
    paper: paper,
  )

  // Link styles
  show link: it => {
    if it.dest.starts-with("tel:") { it }
    else { underline(it, offset: 2pt) }
  }

  // Small caps for section titles
  show heading.where(level: 2): it => [
    #pad(top: 0pt, bottom: -10pt, it.body)
    #line(length: 100%, stroke: 1pt)
  ]

  // Style level 3 headings normally
  // This allows us to use level 3 headings instead of strongs, which makes
  // more sense semantically. It also adds more information to the outline,
  // which would come in handy if there exist any ATSs that look at the
  // outline.
  show heading.where(level: 3): it => it.body

  // Accent color styling
  show heading.where(level: 2): set text(accent-color)
  // show link: set text(accent-color)
  // show strong: set text(accent-color)

  set terms(separator: [*:* ])

  stack(
    dir: ltr, 

    block[
      // Name will be aligned left, bold and big
      #show heading.where(level: 1): it => [
        #set align(author-position)
        #set text(
          weight: 700,
          size: author-font-size,
        )
        #pad(it.body)
      ]
      = #author
      #contact-info.join("\n")
    ],

    h(1fr),

    align(
      right,
      links
        .map(url => link("https://" + url, url))
        .join("\n")
    )
  )

  // Main body.
  set par(justify: true)

  body
}

// Generic two by two component for resume
#let generic-two-by-two(
  top-left: "",
  top-right: "",
  bottom-left: "",
  bottom-right: "",
) = {
  [
    #top-left #h(1fr) #top-right \
    #bottom-left #h(1fr) #bottom-right
  ]
}

// Generic one by two component for resume
#let generic-one-by-two(
  left: "",
  right: "",
) = {
  [
    #left #h(1fr) #right \
  ]
}

// Cannot just use normal --- ligature becuase ligatures are disabled for good reasons
#let dates-helper(
  start-date: "",
  end-date: "",
) = {
  start-date + " " + $dash.en$ + " " + end-date
}

// Section components below
#let edu(
  institution: "",
  dates: "",
  degree: "",
  gpa: "",
  location: "",
  // Makes dates on upper right like rest of components
  consistent: false,
) = {
  if consistent {
    // edu-constant style (dates top-right, location bottom-right)
    generic-two-by-two(
      top-left: [=== #institution],
      top-right: dates,
      bottom-left: emph(degree),
      bottom-right: emph(location),
    )
  } else {
    // original edu style (location top-right, dates bottom-right)
    generic-two-by-two(
      top-left: [=== #institution],
      top-right: location,
      bottom-left: emph(degree),
      bottom-right: emph(dates),
    )
  }
}

#let experience(
  entity: "",
  parenthetical: "",
  dates: "",
  location: "",
  // 0 = one-line header only; 1 = one-line header with bullets; 2 = two-line header with bullets
  verbosity: 0,
  bullets: (),
  bullet-limit: -1,
) = {
  let bullet-content = {
    if bullets.len() > 0 {
      if bullet-limit >= 0 {
        bullets = bullets.slice(0, count: bullet-limit)
      }
      list(..bullets)
    }
  }
  let one-heading = generic-one-by-two(
    left: {
      heading(level: 3, entity)
      if parenthetical != "" {
        [ (#parenthetical)]
      }
    },
    right: dates,
  )
  let two-heading = generic-two-by-two(
    top-left: [=== #entity],
    top-right: dates,
    bottom-left: parenthetical,
    bottom-right: emph(location),
  )
  if verbosity == 0 {
    one-heading
    v(-2pt)
  } else if verbosity == 1 {
    one-heading
    bullet-content
  } else if verbosity == 2 {
    two-heading
    bullet-content
  } else {
    panic("invalid verbosity")
  }
}

#let work(
  file,
  ..args,
) = {
  import file: data
  experience(
    entity: data.company,
    parenthetical: data.title,
    bullets: data.at("bullets", default: ()),
    dates: data.dates,
    location: data.location,
    ..args,
  )
}

#let project(
  name: "",
  hackathon: false,
  parenthetical: "",
  ..args,
) = {
  if hackathon {
    args = arguments(..args, parenthetical: [Hackathon: #parenthetical])
  }
  experience(
    entity: name,
    ..args,
  )
}

#let certificates(
  name: "",
  issuer: "",
  url: "",
  date: "",
) = {
  [
    *#name*, #issuer
    #if url != "" {
      [ (#link("https://" + url)[#url])]
    }
    #h(1fr) #date
  ]
}

#let extracurriculars(
  activity: "",
  dates: "",
) = {
  generic-one-by-two(
    left: [=== #activity],
    right: dates,
  )
}
