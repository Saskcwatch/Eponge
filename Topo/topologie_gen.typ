#import "../lib.typ": *
#show: tmpl

#question[
  #underline[* Définitions *]

  1. #underline[Espace Topologique]:
  On appelle #emph[espace topologique] la donné de $(X, cal(T))$ où $X$ est un ensemble et $cal(T) subset.eq cal(P)(X)$ vérifiant:
  $
    (i) quad &X in cal(T), emptyset in cal(T). \
    (i i) quad &(U_i)_(i in I) in cal(T)^I, space.quarter I "quelconque", space.quarter union.big_(i in I) U_i in cal(T). \
    (i i i) quad &(U_1, ..., U_n) in cal(T)^n, inter.big_(i = 1)^n U_i in cal(T)
  $
  $cal(T)$ est appelé #emph[topologie] de $X$ et ses éléments sont les #emph[ouverts]. Le complémentaire d'un ouvert est dit #emph[fermé]. \
  On dit qu'une partie $V$ de $X$ est un #emph[voisinage] de $x in X$ s'il existe $U in cal(T)$ tel que $U subset.eq V$ et $x in U$

  2. #underline[Intérieur, adhérence]:
  Soit $(X, cal(T))$ un espace topologique, $A subset.eq X$.

  On appelle #emph[intérieur] de $A$, noté $accent(A, circle)$, est le plus grand ouvert inclus dans $A$:
  $
    accent(A, circle) := union.big_(U in cal(T), U subset.eq A) U
  $

  On appelle #emph[adhérence] de $A$, noté $overline(A)$, est le plus petit fermé contenant $A$:
  $
    overline(A) := inter.big_(U in cal(T), A subset.eq U^c) U^c
  $

  3. #underline[Continuité]:
  Soient $(X, cal(T)_X)$ et $(Y, cal(T)_Y)$ deux espaces topologiques, $f in cal(F)(X, Y)$. On dit que $f$ est #emph[continue] si:
  $
    forall U in cal(T)_Y, space.quarter f^(-1)(U) in cal(T)_X.
  $

  On vérifie aisément que si $X,Y$ sont des espaces métriques munis de leur topologie induite par la distance, cette définition correspond à celle connue.

  4. #underline[Kompact]:
  Soit $(X, cal(T))$ un espace topologique, $K subset.eq X$ est dit kompact si il est sépraré et qu'il vérifie la propriété de Borel-Lebesgue.Plus précisément, on a: \

  Si $x != y in K$, on dispose de $U$ (resp. $V$) voisinage de $x$ (resp. $y$) tels que $U inter V = emptyset$. (Séparation (Au sens de Hausdorf)).

  Pour tout recouvrement de $K$ par des ouverts, on peut en extraire un sous-recouvrement fini (Borel-Lebesgue / Quasi-compacité):
  $
    "Si" (U_i)_(i in I) in cal(T)^I "vérifie" K subset.eq union.big_(i in I) U_i, "alors il existe" J subset.eq I "fini tel que" K subset.eq union.big_(j in J) U_j.
  $
  \ \ 
]



=== Rocailleux - $hammer$ / $gorilla$

#question[
  Soit $X$ un espace topologique kompact et $E := cal(C)^0(X, RR)$ muni de sa structure d'espace vectoriel normé par $norm(dot)_oo$.
  On a de plus que $E$ est une algèbre d'unité $x asarrow 1$.
  On dit d'une sous algèbre (unitaire) $cal(A)$ de $E$ qu'elle sépare les points si:
  $
    forall x != y in X, exists f in cal(A) "tq" f(x) != f(y).
  $

  1) On note pour $a < b in RR$:
  $
    g: [a, b] & earrow RR \
            x & asarrow abs(x)
  $

  Montrer que l'on dispose de $(P_n)_n in RR[X]^NN$ tq:
  $
    norm(P_n - g)_oo lim_(n --> +oo) 0
  $

  // On prend $X = [0,1] subset.eq RR$ muni de sa topologie usuelle et $cal(A)$ l'ensemble des fonctions polynomiales de $X$ dans $RR$.

  // 2) Montrer que $cal(A)$ sépare les points.

  // 3) Montrer que $cal(A)$ est dense.

  2) Soit $cal(A)$ une sous-algèbre de $E$ qui sépare les points. Montrer que:

    1. $overline(cal(A))$ est une sous algèbre de $cal(C)^0 (X, RR)$.

    2. Si $f in overline(cal(A))$ et $P in RR[X]$,
    $ P compose f in overline(cal(A)) quad "et" quad abs(f) in overline(cal(A)) $

    3. Si $f_1, ... , f_n in overline(cal(A))$,
    $ max(f_1, ... , f_n) in overline(cal(A)) quad "et" quad min(f_1, ... , f_n) in overline(cal(A)) $ 

    4. Si $a != b in X$ et $alpha != beta in RR$, on dispose de $f in cal(A)$ tel que:
    $ f(a) = alpha quad f(b) = beta $

  3) Montrer que $cal(A)$ est dense.

]

=== Pour brillier en société - $mushroom$

#question[
  Pour $a, b in ZZ$, on note $S(a,b) := {a + n b | n in ZZ}$.

  On dit d'un ensemble $cal(U)  subset.eq ZZ$ qu'il est ouvert si il est réunion de $S(a,b)$.
  Formellement, on considère $(ZZ, cal(T))$ où:
  $
    cal(U) in cal(T) "ssi" space.quarter exists (a_i)_(i in I), (b_i)_(i in I) in ZZ^I "tq" space.quarter cal(U) = union.big_(i in I) S(a_i, b_i). 
  $

  1) Montrer que $cal(T)$ définis bien une topologie sur $ZZ$.

  2) En déduire qu'il existe une infinité de nombre premier.
] 
#indic[
  2) On pourra constater que pour $a,b in ZZ$, $S(a, b)$ est fermé et que tout sous ensemble finis non vide de $ZZ$ ne peut pas être ouvert. 
]
