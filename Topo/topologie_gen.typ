#import "../lib.typ": *
#show: tmpl

#question[
#underline[* Définitions *]

1. #underline[Espace Topologique]:
On appelle espace topologique la donné de $(X, cal(T))$ où $X$ est un ensemble et $cal(T) subset.eq cal(P)(X)$ vérifiant:
$
  (i) quad &X in cal(T), emptyset in cal(T). \
  (i i) quad &(U_i)_(i in I) in cal(T)^I, space.quarter I "quelconque", space.quarter union.big_(i in I) U_i in cal(T). \
  (i i i) quad &(U_1, ..., U_n) in cal(T)^n, inter.big_(i = 1)^n U_i in cal(T)
$
$cal(T)$ est appelé topologie de $X$ et ses éléments les ouverts. Le complémentaire d'un ouvert est fermé.
Un voisinage de $x in X$ et un ouvert contenant $X$.

2. #underline[Intérieur, adhérence]:
Soit $(X, cal(T))$ un espace topologique, $A subset.eq X$.

On appelle intérieur de $A$, noté $accent(A, circle)$, est le plus grand ouvert inclus dans $A$:
$
  accent(A, circle) := union.big_(U in cal(T), U subset.eq A) U
$

On appelle adhérence de $A$, noté $overline(A)$, est le plus petit fermé contenant $A$:
$
  overline(A) := inter.big_(U in cal(T), A subset.eq U^c) U^c
$

3. #underline[Continuité]:
Soit $(X, cal(T)_X)$ et $(Y, cal(T)_Y)$ deux espaces topologiques, $f in cal(F)(X, Y)$. On dit que $f$ est continue si:
$
  forall U in cal(T)_Y, space.quarter f^(-1)(U) in cal(T)_X.
$

On vérifie aisément que si $X,Y$ sont des espaces métriques munis de leur topologie induite par la distance, cette définition correspond à c'elle connue.

4. #underline[Kompact]:
Soit $(X, cal(T))$ un espace topologique, $K subset.eq X$ est dit kompact si il est sépraré et qu'il vérifie la propriété de Borel-Lebesgue.Plus précisément, on a: \

Si $x != y in K$, on dispose de $U$ (resp. $V$) voisinage de $x$ (resp. $y$) tels que $U inter V = emptyset$. (Séparation (Au sens de Hausdorf)).

Pour tout recouvrement de $K$ par des ouverts, on peut en extraire un sous-recouvrement fini (Borel-Lebesgue / Quasi-compacité):
$
  "Si" (U_i)_(i in I) in cal(T)^I "tq" K subset.eq union.big_(i in I) U_i, space.quarter exists J subset.eq I "tq" abs(J) < +oo "et" K subset.eq union.big_(j in J) U_j. 
$

]

=== Rocailleux - $hammer$ / $gorilla$

#question[
  Soit $X$ un espace topologique kompact et $E := cal(C)^0(X, RR)$ muni de sa structure d'algèbre normé par $norm(dot)_oo$. On dit d'une sous algèbre (unitaire) $cal(A)$ de $E$ qu'elle sépare les points si:
  $
    forall x != y in X, exists f in cal(A) "tq" f(x) != f(y).
  $ 

  1) On note
  $
    g: [0, 1] &earrow RR \
        x &asarrow abs(x)
  $

  Montrer que l'on dispose de $(P_n)_n in RR[X]^NN$ tq:
  $
    norm(P_n - g)_oo lim_(n --> +oo) 0
  $
   
  2) On prend $X = [0,1] subset.eq RR$ muni de sa topologie usuelle et $cal(A)$ l'ensemble des fonctions polynomiales. Montrer que $cal(A)$ sépare les points.

  3) Avec les mêmes définition que précédement, montrer que $cal(A)$ est dense.

  4) Généraliser.
]
