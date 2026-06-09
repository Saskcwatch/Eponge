
#let int = $integral$

#let barow = $\u{27FC}$

#let lrarrow = $\u{27F6}$

#let eintr = $|]$
#let eintl = $[|$
#let grad = $arrow(nabla)$
#let sui = $stretch(arrow.r.hook, size: #130%)$
#let lim = $limits(stretch(->, size: #350%))$
#let earrow = $stretch(->, size: #350%)$
#let asarrow = $stretch(|->, size: #350%)$
#let iso = $tilde.equiv$
// #let ramranch = $ram$
#let ln = $log$
#let emptyset = $diameter$
#let img = $op("Im")$
#let GL = $op("GL")$
#let cr = $chevron.r$
#let cl = $chevron.l$
#let trans(x) = $attach(#x, tl:t)$
#let til(x) = $accent(#x, tilde)$

#let lemme(it) = {
    set par(first-line-indent: 0em)
    [#smallcaps[_Lemme_]   :  \ #box(inset: (x: 1em, y:0em), width: 100%)[#it]]
}

#let preuve(it) = {
    set par(first-line-indent: 0em)
    [#smallcaps[_Preuve_] : \ #box(inset: (x: 1em, y:0em), width: 100%)[#it]]
}

#let def(titre, it) = {
    set par(first-line-indent: 0em)
    [#smallcaps[_Définition_ ] (#text(style: "italic")[#titre]) :  \ #box(inset: (x: 1em,y:0em), width: 100%)[#it]]

}




#let tmpl = c => {
  show math.equation: e => {
    show sym.lt.eq: sym.lt.eq.slant 
    show sym.gt.eq: sym.gt.eq.slant
    e
  }
  c
}
