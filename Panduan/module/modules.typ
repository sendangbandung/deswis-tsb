
#import "@preview/i-figured:0.2.4"
#import "@preview/showybox:2.0.4": showybox

#let no-indent(text) = {
  set par(first-line-indent: 0pt)
  text
}

#let chapter(title) = [
  #pagebreak()
  #set page(footer: none)
  #v(10em)
  #show heading.where(level: 1): set text(weight: "bold", size: 20pt, fill: rgb("#806000"))
  #set align(center)
  #set enum(indent: 0pt)
  = #title
  #v(4em)
  #image("../images/footer.svg", width: 1.39in)
  #pagebreak()
]

#let numbered_eq(content) = [
  #show math.equation: i-figured.show-equation
  #math.equation(
    block: true,
    content,
  )
]

#let noindent(content) = [
  #set par(first-line-indent: 0pt)
  #content
]

#let cindent(indent, content) = [
  #par(first-line-indent: (amount: indent, all: true), hanging-indent: indent)[
    #content
  ]
]

#let gap() = [
  #v(2em)
]

#let semigap() = [
  #v(1em)
]

#let fancy = true
#let color = yellow

#let questions(content) = [
  #if fancy [
    #show heading.where(level: 2): it => {
      text(it.body, weight: "bold")
    }
    #showybox(
      frame: (
        border-color: color.darken(50%),
        title-color: color.lighten(60%),
        body-color: color.lighten(80%),
      ),
      title-style: (
        color: black,
        weight: "regular",
        align: center,
      ),
      shadow: (
        offset: 3pt,
      ),
      title: [== Soal Latihan],
    )[
      #semigap()
      #content
      #semigap()
    ]

  ] else [
    == Soal Latihan
    #content
  ]
]

#let questions_res(content) = [
  #if fancy [
    #show heading.where(level: 2): it => {
      text(it.body, weight: "bold")
    }
    #showybox(
      frame: (
        border-color: color.darken(50%),
        title-color: color.lighten(60%),
        body-color: color.lighten(80%),
      ),
      title-style: (
        color: black,
        weight: "regular",
        align: center,
      ),
      shadow: (
        offset: 3pt,
      ),
    )[
      #semigap()
      #content
      #semigap()
    ]

  ] else [
    #content
  ]
]

#let example(title, content) = [
  #if fancy [
    #showybox(
      frame: (
        border-color: color.darken(50%),
        title-color: color.lighten(60%),
        body-color: color.lighten(80%),
      ),
      title-style: (
        color: black,
        weight: "regular",
        align: center,
      ),
      shadow: (
        offset: 3pt,
      ),
      title: [#title],
    )[
      #semigap()
      #content
      #semigap()
    ]

  ] else [
    #title
    #content
  ]
]
