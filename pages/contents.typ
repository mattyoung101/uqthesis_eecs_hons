#import "../util/macros.typ": *
//#import "@preview/acrotastic:0.1.0": *

= Contents
#[
    #show outline.entry.where(level: 1): it => {
      set block(above: 12pt)
      strong(it)
    }

    // https://www.reddit.com/r/typst/comments/1bp8zty/how_to_make_dots_in_outline_spaced_the_same_for/ - Updated for Typst 0.13
    #set outline.entry(fill: box(width: 1fr, repeat(h(5pt) + "." + h(5pt))) + h(8pt))

    #outline(
        indent: 0.85em,
        title: none
    )
]

#context if counter(figure).final().first() > 0 [
    #pagebreak()
    = List of Figures
    #set outline.entry(fill: box(width: 1fr, repeat(h(5pt) + "." + h(5pt))) + h(8pt))

    #outline(
        title: none,
        target: figure.where(kind: image)
    )

    #v(2em)

    #outline(
        title: none,
        target: figure.where(kind: table)
    )

    #v(2em)

    #outline(
        title: none,
        target: figure.where(kind: raw)
    )
]

#pagebreak()

#let acronyms = yaml("../acronyms.yaml")
#if acronyms != none and acronyms.acronyms != none and acronyms.acronyms.len() > 0 [
    #pagebreak()
    = List of Abbreviations and Symbols
    #table(
        columns: (0.5fr, 1fr),
        inset: 10pt,
        align: horizon,
        table.header(
            [*Abbreviation*], [*Meaning*],
        ),

        ..for pair in acronyms.acronyms.sorted(key: it => it.pairs()) {
            let key = pair.keys().at(0);
            let value = pair.values().at(0);
            (key, value)
        }
    )
]
