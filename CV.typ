#set page(paper: "us-letter", margin: (x: .55in, y: 0in))
#set align(horizon)
#set text(font: "Public Sans", size: 10pt, hyphenate: false)
#set par(justify: true, leading: 7pt)
#set list(indent: 0.5em, spacing: 7pt)

#show list: it => block(width: 100%)[#it]
#show raw: set text(font: "Iosevka", size: 10pt)
#show heading.where(level: 1): set text(weight: 600)
#show heading: it => [
  #it
  #v(4pt)
]

#let url(to, body) = [#link(to)[#text(font: "Iosevka")[⎋#body]]]
#let header(left, right) = [
  #set text(size: 11pt, weight: 600)
  #smallcaps[#left #h(1fr) #right]
  #v(-10pt)
  #line(length: 100%, stroke: 0.3pt)
  #v(-22pt)
]
#let b(body) = block(
    width: 100%,
    inset: (top: -0.4em, bottom: 0em, left: 0.1em))[
  #body
]

#block(width: 80%, inset: (left: 2em))[
  #v(-12pt)
  #text(size: 16pt, weight: 600)[
    Jacopo Philip Moretti
  ]

  #v(-8pt)
  _Computer Science MSc student at EPFL._\
  _Interested in formal methods for software/hardware systems._\
  #v(-4pt)
  #text(font: "Iosevka", size: 9pt)[
    +41 76 730 67 19 :: `jacopo` @ #url("quartztz.com", "quartztz.com") ::
    #url("github.com/quartztz", "github.com/quartztz")
  ]\
]

= Education

#header("MSc in Computer Science :: EPFL", "2024 - exp. 2027")\
#b[
  Master's degree in Computer Science at EPFL, Lausanne.\
  Specialization in _Foundations of Software_, interest in formal methods and
  theorem proving.\
  // *Relevant Coursework:* _Algorithms II_, _Foundations of Software_,
  // _Interactive Theorem Proving_.\
  *Selected Projects:* _Formalizing State-of-the-Art Theoretical Computer
  Science_ (Lean).\
  *Activities and Societies:* Logistics Manager,
  _#url("https://clic.epfl.ch", "CLIC")_ (2024-2025); Head of Prevention,
  _#url("https://agepoly.ch", "AGEPoly")_ (2025)
]

#header("BSc in Computer Science :: EPFL", "2021 - 2024")\
#b[
  Bachelor's degree in Computer Science at EPFL, Lausanne.\
  *Activities and Societies:* Technical Manager,
  _#url("https://frequencebanane.ch", "Fréquence Banane")_ (2022-2024),
  Organizer, _#url("https://polylan.ch", "PolyLAN")_ (2025)\
  *Relevant Coursework:* _Computer Language Processing_, _Functional Programming_.
]

= Experience

#header("Research Intern :: Jetbrains", "Mar. 2026 - Aug. 2026")\
#b[
  Intern in the Jetbrains Formalisation Team, working on the design and 
  formalization of a type system for uniqueness types for the Kotlin 
  programming language.
  - Designed and implemented the first generic framework for *formally verified
    dataflow analysis* in `Lean`.
  - Designed languages and analyses to explore the framework's guarantees on
    Kotlin-like language constructs.
  - Co-authored the publication _Formally Verified Dataflow Analysis in `Lean`_ 
    (Moretti & Wojnarowski, 2026)
]

#header("Chief Product Officer :: Actualia", "Sept. 2024 - Oct. 2025")\
#b[
  Co-founder/Tech CPO at #url("https://actualia.ch", "Actualia"), developing a
  mobile app for customized, AI-powered press reviews.
  - Led design and implementation of *all app screens and views*, prioritizing 
    UX and feedback integration.
  - Led *product development*, managed design team and marketing.
  // - Secured *12k CHF* in pre-seed funding.
]

#header("Student Assistant :: EPFL", "2023 - 2026")\
#b[
  Student assistant for various courses at EPFL. Assisted students on forums and
  at weekly help sessions.
  - *Fall 2025:* _Formal Verification_ (CS550, Kunčak): Designed and graded labs
    and projects.
  // Developed a *VSCode extension* for the Stainless verification framework
  // (Scala), improving tooling and productivity for users.
  - *Spring 2025:* _Computer Language Processing_ (CS320, Kunčak): Assisted in 
    exercise set design, as well as lab and project grading.
  - *Fall 2023:* _Software Construction_ (CS214, Odersky, Kunčak, Pit-Claudel):
    Course taught in Scala. Implemented workflow for recording and editing
    *20+ video lectures*.
]

/*
= Volunteering
#header("Open Source Contributor", "2022 - 2024")\
En vrai là je fais du CSLib maybe? et autres projets à la con/projets perso.
#header("Technical Manager :: Fréquence Banane", "2022 - 2024")\
Technical manager at #url("https://frequencebanane.ch", "Fréquence Banane"),
the EPFL student radio. Gained knowledge in writing code for large scale and
long term use, managing a technical team, and audio engineering.
- Maintained the *audiovisual and server infrastructure* for *80+ members*
(fault tolerant Python scripts, Proxmox VM management).
- Implemented and deployed a *full-stack website* (Strapi, VueJS) for radio
playback and article hosting.
*/

= Skills

#grid(
  columns: (8em, 1fr),
  align: (right + top, left + top),
  gutter: 1em,
  [*Languages*],
  [Italian (C2), French (C2), English (C2), German (B1).],
  [*Programming*],
  [*Scala*, *Rust*, Python, C, Typescript, Dart. *Lean*,
    Stainless, Rocq],
  [*Tools*], [*Git*, *Docker*, *Typst*, Proxmox, LaTeX, Markdown.],
  [*Design*], [*Figma*, *Affinity*, Adobe Suite, Penpot.],
  [*Social*], [Scientific Writing, Collaboration, Research],
  [*Other*], [Audio Engineering, Stagecraft, Video Editing.],
)

/*
#line(length: 100%, stroke: 0.2pt)
#v(-0.5em)
#text(size: 9pt)[_references available on demand._]
*/

