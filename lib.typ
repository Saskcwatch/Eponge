#import "def.typ": *
#let show_indic = false
#let show_question = true
#let show_correction = false

#let compile_mode = sys.inputs.at(
  "compile_mode",
  default: "question",
)
#if compile_mode == "indic" {
  show_indic = true
  show_question = false
  show_correction = false
} else if compile_mode == "correction" {
  show_indic = false
  show_question = false
  show_correction = true
} else if compile_mode == "question" {
  show_indic = false
  show_question = true
  show_correction = false
} else {
  panic("Unknown compile mode: " + compile_mode)
}

#import emoji: (sponge, star, ram, horn, tree, gorilla, baby, monkey, moyai, chocolate, hammer, ambulance, mushroom, quest)
#let ramranch = $ram$


#set text(lang: "fr")




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


