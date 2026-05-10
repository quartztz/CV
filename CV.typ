#set page(paper: "a4", margin: (x: .5in, y: 0in))
#set align(horizon)
#set text(font: "Public Sans", size: 10pt)
#set par(justify: true, leading: 7pt)
#set list(indent: 1em, spacing: 7pt)

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
#block(width: 80%, inset: (left: 2em))[
  #block[
    #set text(size: 12pt, weight: 600)
    = Jacopo Philip Moretti
    #v(-4pt)
  ]

  _Computer Science MSc student at EPFL._\
  _Interested in formal methods for software/hardware systems._\
  #v(-4pt)
  #text(font: "Iosevka", size: 9pt)[
    +41 76 730 67 19 :: `jacopo` @ #url("quartztz.com", "quartztz.com") :: #url("github.com/quartztz", "github.com/quartztz")
  ]
]
= Education
// #v(4pt)

#header("MSc in Computer Science :: EPFL", "2024 - exp 2027")\
Master's degree in Computer Science at EPFL, Lausanne. Specialization in _Foundations of Software_, interest in formal methods and theorem proving.\
// *Relevant Coursework:* _Algorithms II_, _Foundations of Software_, _Interactive Theorem Proving_.\
*Selected Projects:* _Formalizing State-of-the-Art Theoretical Computer Science_ (Lean).\
*Activities and Societies:* Logistics Manager, _#url("https://clic.epfl.ch", "CLIC")_ (2024-2025); Head of Prevention, _#url("https://agepoly.ch", "AGEPoly")_ (2025)

#header("BSc in Computer Science :: EPFL", "2021 - 2024")\
Bachelor's degree in Computer Science at EPFL, Lausanne.\
*Activities and Societies:* Technical Manager, _#url("https://frequencebanane.ch", "Fréquence Banane")_ (2022-2024), Committee Member, _#url("https://polylan.ch", "PolyLAN")_\
*Relevant Coursework:* _Computer Language Processing_, _Functional Programming_.

= Experience
// #v(4pt)

#header("Research Intern :: Jetbrains", "Mar. 2026 - Aug. 2026")\
Intern in the Jetbrains Formalisation Team, working on the design and formalization of a type system for uniqueness types. Designing a framework to perform formally verified dataflow analysis in `Lean` given a language's formal semantics.

#header("Chief Product Officer :: Actualia", "Sept. 2024 - Oct. 2025")\
Co-founder/Tech CPO at #url("https://actualia.ch", "Actualia"), a startup developing a mobile app for customized, AI-powered press reviews.
- Led end-to-end design and development of *all app screens and views* in the Flutter mobile development framework, prioritizing user experience and feedback integration.
- Led *product development*, managed design team and marketing.
// - Secured *12k CHF* in pre-seed funding.

#header("Student Assistant :: EPFL", "2023 - 2026")\
Student assistant for various courses at EPFL. Assisted students on forums and at weekly help sessions.
- Fall 2025: _Formal Verification_ (CS550, Kunčak): Designed and graded labs and projects. // Developed a *VSCode extension* for the Stainless verification framework (Scala), improving tooling and productivity for users.
- Spring 2025: _Computer Language Processing_ (CS320, Kunčak): Assisted with exercise set design and lab and project grading.
- Fall 2023: _Software Construction_ (CS214, Odersky, Kunčak, Pit-Claudel): Course taught in Scala. Implemented workflow for recording and editing *20+ video lectures*.

// = Volunteering

// #header("Open Source Contributor", "2022 - 2024")\
// En vrai là je fais du CSLib maybe? et autres projets à la con/projets perso.

// #header("Technical Manager :: Fréquence Banane", "2022 - 2024")\
// Technical manager at #url("https://frequencebanane.ch", "Fréquence Banane"), the EPFL student radio. Gained knowledge in writing code for large scale and long term use, managing a technical team, and audio engineering.
// - Maintained the *audiovisual and server infrastructure* for *80+ members* (fault tolerant Python scripts, Proxmox VM management).
// - Implemented and deployed a *full-stack website* (Strapi, VueJS) for radio playback and article hosting.

= Skills
#v(8pt)

#grid(
  columns: (8em, 1fr),
  align: (right + top, left + top),
  gutter: 1em,
  [*Languages*], [Italian (native), French (native), English (native), German (basic).],
  [*Programming*], [*Scala*, *Rust*, Python, C, Typescript, Dart. *Lean*, Stainless, Rocq],
  [*Tools*], [*Git*, *Docker*, *Typst*, Proxmox, LaTeX, Markdown.],
  [*Design*], [Figma, Adobe Suite, Penpot.],
  [*Other*], [Audio Engineering, Stagecraft, Video Editing.],
)
