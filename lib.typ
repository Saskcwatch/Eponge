#let show_indic = false
#let show_question = true
#let show_correction = false

#import emoji: (horn, tree, gorilla, baby, monkey, moyai, chocolate, hammer, ambulance, mushroom, quest)

#set text(lang: "fr")

#let int = $integral$

#let barow = $\u{27FC}$

#let lrarrow = $\u{27F6}$

#let eintr = $bracket.r.double$
#let eintl = $bracket.l.double$

#let tmpl = c => {
  show math.equation: e => {
    show sym.lt.eq: sym.lt.eq.slant 
    show sym.gt.eq: sym.gt.eq.slant
    e
  }
  c
}

#let ln = $log$
#let emptyset = $diameter$

#let indic(body) = {
  if (show_indic) {
    [#body]
  } else {}
}

#let question(body)= {
  if(show_question) {
    [#body]
  }
  else {}
}

#let correction(body) = {
  if(show_correction){
    [#body]
  }
  else {}
}

// ---- headings ----
#let heading_fct(it) = {
  if (it.numbering == none) {it} else {
    let numb = counter(heading).display(it.numbering)
    if (it.level == 1) [
      #pagebreak()
      #v(1fr)
      #align(center, [
        #text(size: 20pt)[#numb #it.body]
      ])
      #v(1fr)
      //#pagebreak()
    ] 
    
    else if (it.level == 2) {[
      #pagebreak()
      //#set text(size : 1.3em)
      //#it.body
      //#setup_ex()
      #align(center, [
        #set text(size: 1.2em)
        * #numb #it.body * 
      ])
    ]} else if (it.level == 3){ 
      if (show_question){[
        #linebreak()  
        #set text(size: 1.1em)
        Exercice #numb - #it.body
      ]} else if (show_indic) {[
        #linebreak()  
        #set text(size: 1.1em)
        Exercice #numb - #it.body - Indication
    ]} else if (show_correction) {[
        #linebreak()  
        #set text(size: 1.1em)
        Exercice #numb - #it.body - Correction
      ]}
  }
    else [
      #it.body Shouldn't be here
    ]
  }
}
#show heading: heading_fct


