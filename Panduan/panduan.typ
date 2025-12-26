
#set page(
  paper: "us-letter", //TODO: make sure
  margin: 1in, //TODO: make sure
)

//post-cover
#align(center)[
  #v(1in)
  #text(font: "Open Sans", size: 28pt, weight: "bold", "PANDUAN WEBSITE SENDANGBANDUNG.COM")
  #v(6in)
  // #text(font: "Open Sans", size: 20pt, weight: "bold", "Novera Istiqomah, S.T., M.T., Ph.D.")
]

//formatting
#set enum(spacing: 1.5em, indent: 17pt)
#set figure(supplement: "Gambar")
#set list(spacing: 1.5em, indent: 17pt) //TODO: make sure
#set math.equation(supplement: "Persamaan")
#set math.mat(delim: "[", align: center, column-gap: 0.8em)
#set par(spacing: 2em)
#set text(font: "Open Sans", size: 12pt, hyphenate: false)
#show figure.caption: set text(size: 9pt, style: "italic")
#show heading.where(level: 1): set text(weight: "bold", size: 20pt)
#show heading.where(level: 2): set text(weight: "bold", size: 12pt)
#show heading.where(level: 3): set text(weight: "regular", size: 12pt)
#show heading: set block(below: 2em)
#show math.equation: set text(size: 13pt)

#pagebreak()

#let imageonside(left, right) = {
  grid(
    columns: 2,
    column-gutter: 1em,
    align: horizon,
    left, right,
  )
}

#set page(
  footer: context {
    let page = counter(page).get().first()
    let rm = [#page]
    let titl = [Panduan Website Sendangbandung.com]
    let img = image("images/footer.svg", width: 20pt)
    let text = [#titl - #rm]
    let ios = imageonside(img, text)
    align(right)[#ios]
  },
)

#set page(numbering: "1")

#import "@preview/i-figured:0.2.4"

#show figure: i-figured.show-figure
#show heading: i-figured.reset-counters

#text[
  #show heading.where(level: 1): set text(weight: "bold", size: 13pt, fill: rgb("#2f5496"))
  = DAFTAR ISI
  #show outline.entry: it => {
    show linebreak: none
    it
  }
  #outline(depth: 2, title: none)
  #pagebreak()
]

#set par(justify: true, leading: 1em, spacing: 1.5em)
#set par(first-line-indent: (amount: 1.8em, all: true))
#set raw(block: true)
#show raw.where(block: true): set block(fill: luma(240), inset: 1em, radius: 0.5em, width: 100%)

#include "module/chapter1.typ"
#include "module/chapter2.typ"
#include "module/chapter3.typ"
#include "module/chapter4.typ"

