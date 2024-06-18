#import "macros.typ": *
//#import "@preview/acrotastic:0.1.0": *

= Contents
#[
    // https://typst.app/docs/reference/model/outline/#definitions-entry
    #show outline.entry.where(
      level: 1
    ): it => {
      v(12pt, weak: true)
      strong(it)
    }

    #outline(
        // https://www.reddit.com/r/typst/comments/1bp8zty/how_to_make_dots_in_outline_spaced_the_same_for/
        fill: box(width: 1fr, repeat(h(5pt) + "." + h(5pt))) + h(8pt),
        indent: auto,
        title: none
    )
]
#pagebreak()

= List of Figures
#outline(
    title: none,
    fill: box(width: 1fr, repeat(h(5pt) + "." + h(5pt))) + h(8pt),
    target: figure,
)
#pagebreak()

= List of Tables
// TODO
#pagebreak()

= List of Abbreviations and Symbols
#let acronyms = yaml("../acronyms.yaml")

#for pair in acronyms.acronyms {
    let key = pair.keys().at(0);
    let value = pair.values().at(0);
    [ - *#key* :  #value ]
}
// TODO make this a table
