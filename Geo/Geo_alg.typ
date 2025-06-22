#import "../lib.typ": *
#show: tmpl
#question[
  #underline[* Définitions *]

  1. #underline[Espace projectif]:
  Pour un corps $K$, on considère la relation d'équivalence $tilde$ sur $K^(n+1) \\ {0}$ par
  $ a tilde b <=> exists lambda in K "tq" a = lambda b $

  On définit ainsi l'espace projectif de dimension $n$ de $K$, $PP^n (K)$ par:
  $
    PP^n (K) := K^(n+1) \/ tilde
  $
]




=== Où sont les cônes ? - $chocolate$


// On peut utiliser la notation $C = cal(V)(x^2 + y^2 - 3) (l'ensemble des zero de ce polynome dans RR^2) qui est la notation standard en geometrie algébrique$
// après, je pense que là on s'en fout : comme ça on est amateur-friendly
#question[On se place dans le plan euclidien $RR^2$ muni d'un repère orthonormé $(O, i, j)$

  Soient $cal(C)_1$ la courbe d'équation $(x + 21y + 1)^2 + 41x + 42 = 0$ et $cal(C)_2$ la courbe d'équation \ $x^2 + y^2 = 3$

  1) Trouver un point $M$ appartenant à la courbe $cal(C)_1$ dont les coordonnées sont rationnelles, c'est-à-dire un point de $cal(C)_1 inter QQ^2$.

  2) En considérant des droites dont la pente est rationnelle, trouver tous les points de $cal(C)_1 inter QQ^2$

  3) Montrer que $cal(C)_2 inter QQ^2=emptyset$]

#indic[
  1) Commencer par essayer d'annuler $41x + 42$

  2)

  3) Raisonner par l'absurde et faire de l'arithmétique.
]

=== Une feuille dans $FF_p$ - $moyai gorilla$


#question[On prend $p in cal(P)$, $p > 3$ et on considère
  la courbe $cal(F)$ définie sur $PP^2 (FF_p)$ par l'équation
  $
    x^3 + y^3 - 3 x y = 0
  $

  Trouver une condition néscecaire et suffisante sur $p$ pour que $cal(F)$ admette trois point a l'infini distincts.
]

#indic[

]
