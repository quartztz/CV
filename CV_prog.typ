#set page(paper: "a4", margin: (x: .5in, y: 0in))
#set align(horizon)
#set text(font: "Public Sans", size: 10pt)
#set par(justify: true, leading: 7pt)
#set list(indent: 1em, spacing: 8pt)

#show raw: set text(font: "Iosevka", size: 10pt)
#show heading: it => [
  #it
  #v(4pt)
]

#let url(to, body) = [#link(to)[#text(font: "Iosevka")[⎋#body]]]
#let header(left, right) = [
  #set text(size: 11pt, weight: 600)
  #smallcaps[#left #h(1fr) #right]
  #v(-10pt)
  #line(length: 100%, stroke: 0.4pt)
  #v(-22pt)
]

// Load content from TOML
#let cv-data = toml("CV_content.toml")
#let personal = cv-data.personal
#let education = cv-data.education
#let experience = cv-data.experience
#let skills = cv-data.skills

// Header with personal info
#block(width: 80%, inset: (left: 2em))[
  #block[
    #set text(size: 12pt, weight: 600)
    = #personal.name
    #v(-4pt)
  ]

  _#personal.title._\
  _#personal.subtitle._\
  #v(-4pt)
  #text(font: "Iosevka", size: 9pt)[
    +#personal.phone :: `#personal.email` @ #url("https://" + personal.website, personal.website) :: #url("https://" + personal.github, personal.github)
  ]
]

= Education
#for edu in education [
  #header(edu.title + " :: " + edu.institution, edu.date)
  #edu.description

  #if "projects" in edu and edu.projects.len() > 0 [
    *Selected Projects:* #edu.projects.map(p => [_#[p]_]).join(", ").\
  ]

  #if "relevant_coursework" in edu and edu.relevant_coursework.len() > 0 [
    *Relevant Coursework:* #edu.relevant_coursework.map(c => [_#[c]_]).join(", ").\
  ]

  #if "activities" in edu and edu.activities.len() > 0 [
    *Activities and Societies:* #edu.activities.join("; ")
  ]
]

= Experience
#for exp in experience [
  #header(exp.title + " :: " + exp.company, exp.date)
  #exp.description

  #if "highlights" in exp and exp.highlights.len() > 0 [
    #for highlight in exp.highlights [
      - #highlight
    ]
  ]

  #if "positions" in exp and exp.positions.len() > 0 [
    #for pos in exp.positions [
      - #pos.semester: _#[pos.course]_: #pos.work
    ]
  ]
]

= Skills
#v(8pt)

#let skill-categories = (
  ("Languages", skills.languages),
  ("Programming", skills.programming),
  ("Tools", skills.tools),
  ("Design", skills.design),
  ("Other", skills.other),
)

#grid(
  columns: (8em, 1fr),
  align: (right + top, left + top),
  gutter: 1em,
  ..skill-categories.map(cat => [*#cat.at(0)*]).flatten(),
  ..skill-categories.map(cat => [#cat.at(1).join(", ")]).flatten(),
)
