
#let int = $integral$

#let barow = $\u{27FC}$

#let lrarrow = $\u{27F6}$

#let eintr = $bracket.r.double$
#let eintl = $bracket.l.double$
#let grad = $arrow(nabla)$
#let sui = $stretch(arrow.r.hook, size: #130%)$
#let ln = $log$
#let emptyset = $diameter$



#let tmpl = c => {
  show math.equation: e => {
    show sym.lt.eq: sym.lt.eq.slant 
    show sym.gt.eq: sym.gt.eq.slant
    e
  }
  c
}
