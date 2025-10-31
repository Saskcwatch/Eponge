
#let romanise(num) = {
  let roman-map = (
    (1000, "M"),
    (900, "CM"),
    (500, "D"),
    (400, "CD"),
    (100, "C"),
    (90, "XC"),
    (50, "L"),
    (40, "XL"),
    (10, "X"),
    (9, "IX"),
    (5, "V"),
    (4, "IV"),
    (1, "I"),
  )
  let result = ""
  let remainder = num
  for (value, symbol) in roman-map {
    while remainder >= value {
      result += symbol
      remainder -= value
    }
  }
  result
}



#let pset(class: "6.100",
  title: "PSET 0",
  author: "Patrickovic",
  date: datetime.today(),
  subproblems: "1.1.a.i",
  collaborators: (),
  doc
) = {[



/* Convert collaborators to a string if necessary */
#let collaborators=if type(collaborators) == array {collaborators.join(", ")} else {collaborators}

/* Problem + subproblem headings */
#set heading(numbering: (..nums) => {
    nums = nums.pos()
    let roman = romanise(nums.at(0))
    if nums.len() == 1 {
      [ Chapitre #roman.
      ]
    } else if nums.len() == 2 {
      [Section #nums.at(1) :]
    } 
    else {
      numbering(subproblems, ..(..nums).slice(2))
    }
})

/* Set metadata */
#set document(
  title: [#class - #title],
  author: author,
  date: date,
)

/* Set up page numbering and continued page headers */
#set page(
  numbering: "1",
  header: context {

  let elems = query(selector(heading.where(level: 1)).before(here()),)
  let next_elems = query(selector(heading.where(level: 1)).after(here()))
  let chapter = if elems.len() == 0 { 
    [Sommaire] 
  } else  {
    if next_elems.len() > 0 and next_elems.first().location().page() == here().page() {
      next_elems.first().body
    }
    else {
      elems.last().body
    }
  }

  if counter(page).get().first() > 1 [
    #set text(style: "italic", size: 12pt)
    #title -- #chapter
    #h(1fr)
    #author
    // #h(1fr)
    // #if collaborators != none {[w/ #collaborators]}
    #block(line(length: 100%, stroke: 0.5pt), above: 0.6em)
  ]
}, 
footer: context {
  set text(size: 12pt)
  block(line(length: 100%, stroke: 0.5pt), above: 0.6em)
  "Page "; counter(page).display("1/1", both: true)
  h(1fr)
  set text(style: "italic")
  //dateRev
})

/* Add numbering and some color to code blocks */
#show raw.where(block: true): it => {
  block[
    #h(1fr)
    #box(
      width: 100%-0.5em,
      radius: 0.3em,
      stroke: luma(50%),
      inset: 1em,
      fill: luma(98%)
    )[
      #show raw.line: l => {
        box(width:measure([#it.lines.last().count]).width, align(right, text(fill: luma(50%))[#l.number]))
        h(0.5em)
        l.body
      }
      #it
    ]
  ]
}

/* Make the title */
#align(center, {
  text(size: 1.6em, weight: "bold")[#title \ ]
  text(size: 1.2em, weight: "semibold")[#author \ ]
  emph[
    // #date.display("[year]-[month]-[day]") 
    //#dateRev
    #if collaborators != none {[
      \ Collaborators: #collaborators
    ]}
  ]
  box(line(length: 100%, stroke: 1pt))
})

#doc
]}
