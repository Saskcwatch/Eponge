#import "template.typ": pset
#import "lib.typ": *


#show: pset.with(
  title: "EPONGE",
  author: "Stéphanovic, Piotrovicovic, Patrickovic, Danielovic, Xavierovic",
  date: datetime.today(),
)



#import "@preview/codly:1.0.0": *
#show: codly-init.with()

// -------------------- PREMIERE PAGE --------------------

#if (show_question) {
  [
    #v(1fr)
#align(center)[
  #text(size: 30pt)[EPONGE]
  #v(10pt)
  #text(size: 20pt)[*E*\xercices et *P*\roblèmes *O*\bscurs *N*\écessitant une *G*\amberge *E*\xcessive]
]
#v(1fr)
#pagebreak()
  ]
} else if (show_indic){
  [
    #v(1fr)
#align(center)[
  #text(size: 30pt)[EPONGE]
  #v(10pt)
  #text(size: 20pt)[*E*\xercices et *P*\roblèmes *O*\bscurs *N*\écessitant une *G*\amberge *E*\xcessive]
  #v(10pt)
  #text(size: 18pt)[
    \~ *Indications* \~
  ]
]
#v(1fr)
#pagebreak()
  ]
} else if (show_correction){
  [
    #v(1fr)
#align(center)[
  #text(size: 30pt)[EPONGE]
  #v(10pt)
  #text(size: 20pt)[*E*\xercices et *P*\roblèmes *O*\bscurs *N*\écessitant une *G*\amberge *E*\xcessive]
  #v(10pt)
  #text(size: 18pt)[
    \~ *Corrections* \~
  ]
]
#v(1fr)
#pagebreak()
  ]
}else {}


#question[
*Niveaux de difficulté :* 
- $baby$ : Facile...
- $chocolate$ : Réalisable avec peu de réflexion.
- $mushroom$ : Commencer à réfléchir au-delà du complexe.
- $hammer$ : Une grande intuition sera utile.
- $gorilla$ : Plusieurs après-midis amusantes garanties !
- $moyai$ : Connaissance infinie et sang-froid à toute épreuve requis.
- $ambulance$ : Impossible à moins d'avoir fait 3 doctorats (à la connaissance des auteurs).
- $quest$: Pas encore évalué.
\
*Types d'exercices :*
- $monkey$ : monkey-calcul ($tilde.eq$ calcul bourrin).

\

*Notations :*
#table(
  columns: (auto, auto),
  inset: 8pt,
  align: center,
  [$x := A \ 
  A =: x$], [Définition de $x$ comme $A$],
  [$NN, ZZ, QQ, RR, CC, FF_q$], [Respectivement les ensembles des nombres entiers naturels, relatifs, rationels, réels et complexes, le corps fini à $q$ éléments], 
  [$eintl k, l eintr$], [Les entiers de $k$ a $l$ : $eintl k, l eintr = [k, l] inter ZZ$],
  [$cal(P)$], [L'ensemble des nombres premiers],
  [$UU_n$], [Les racines n-éme de l'unité, $UU_n = {x in CC | x^n - 1 = 0}$],
  [$frak(S)_n$, $frak(A)_n$], [Les permuations de $eintl 1, n eintr$, les permutations de signature $1$],
  [$log$], [La fonction logarithme de base $e$ : $log(x) := int_1^x (dif t)/t$],
  [$a and b$], [PGCD de $a$ et $b$],
  [$a or b$], [PPCM de $a$ et $b$],
  [$cal(C)^n (A,B)$], [Pour $n in NN$ les fonction $n$ fois dérivable de $A$ dans $B$ et de dérivé n-ème continue ],
  [$a divides b$, $a divides.not b$], [$a$ divise (resp ne divise pas) $b$],
  [$delta_E$], [$1$ si $E$ est satisfaite, 0 sinon. Dans le cas $delta_(i, j)$ comprendre $E: i = j$],
  //[$cal(V)(A)$], [Sur un corps $KK$ avec $A subset KK[x_1, ..., x_n]$, $cal(V)(A) = {(a_1, ... ,a_n) in KK^n| forall P in A, P(a_1,...,a_n) = 0}$]
)

\
*Convention :* \
- Les anneaux sont supposées unitaire
- Les corps sont commutatifs
- Le "dé canonique à $n$ faces" est l'unique (à isomorphisme près) dé équilibré à $n$ faces numérotées de $1$ à $n$.



#pagebreak()
]
//------Sommaire-------//
#show outline.entry.where(
  level: 1
): it => {
  v(12pt, weak: true)
  strong(it)
}
#outline(title: "Sommaire", depth: 2, indent: 10pt)
#question[#pagebreak()
#image("image.png")
$ cal("Bonne Chance !") $
]
#show heading: heading_fct
= Algèbre
== Algèbre générale
#include "Alg/Alg_gen.typ"
== Algèbre linéaire
#include "Alg/Alg_lin.typ"
== Polynomes
#include "Alg/Polynome.typ"
= Arithmétique
== Théorie des nombres
#include "Arith/arithmetique.typ"
#include "Arith/combinatoire.typ"
= Géométrie
== Géométrie du plan
#include "Geo/Geo_plan.typ"
== Géométrie algébrique
#include "Geo/Geo_alg.typ"

= Probabilités
== Probabilités discrètes
#include "Proba/Proba.typ"
= Analyse
== Suites
#include "Anal/suites.typ"
== Equations fonctionnelles
#include "Anal/equation_fonctionnelles.typ"
== Equations différentielles
#include "Anal/equa_fidd.typ"
== Intégration
#include "Anal/Integration.typ"
== Série
#include "Anal/serie.typ"