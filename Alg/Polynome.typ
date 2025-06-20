#import "../lib.typ": *
#show: tmpl

=== NP - $baby$

#question[Montrer que la fonction $log$ n'est pas une fraction rationelle.]

=== Un joli automorphisme - $mushroom$

#question[On définit $ phi: &CC[X] &stretch(->, size: #300%) & cal(F)(CC, CC) \ & P &stretch(arrow.r.bar, size: #300%) &( z barow e^(-z) sum_(n gt.eq.slant 0) P(n)/(n!) z^n)  $

On identifie les polynômes de $CC[X]$ et les fonctions polynomiales de $CC$ dans $CC$.\
1) Montrer que $phi$ est un automorphisme d'espace vectoriel.

2) Est-ce un morphisme d'anneau ?
]

=== - $mushroom$

#question[
  Soit $P in QQ[X]$ et $alpha in CC^*$ tel que:
  $
    (X - alpha)^m divides P
  $
  Avec $m > deg(P)/2$.

  Montrer que $alpha in QQ$
]

#indic[
  Décomposer $P$ comme un produit d'irréductible de $QQ[X]$.
]

#correction[
  Notons d'abord que $alpha$ est algèbrique sur $QQ$, on note $Pi_alpha$ son polynome minimal.
  
  On prend
  $
    P = product_(i = 1)^d P_i 
  $
  Avec les $P_i$ irréductible sur $QQ[X]$.

  On a que comme $(X - alpha) divides P$, quitte a réordoner, $(X - alpha) divides P_1$.

  Montrons que $alpha$ est racine simple de $P_1$.

  Supposons que $alpha$ racine de multiplicité au moins $2$ de $P_1$.
  On a donc que $(X - alpha) divides P_1 '$, ainsi,
  $
  Pi_alpha divides P_1 ' divides P_1
  $

  Cependant, $P_1 '$ divise strictement $P_1$, on a donc que $Pi_alpha$ divise lui aussi strictement $P_1$ ce qui est absurde car on suppose $P_1$ irréductible sur $QQ$.

  On a donc que $alpha$ racine simple de $P_1$ et, quitte a multiplier par un scalaire puis diviser,
  $
    P_1 = Pi_alpha
  $

  On recommence avec $P_2$ en divisant $P$ par $P_1$, par réccurence on a que:
  $
    P = lambda Pi_alpha ^m R
  $
  avec $R in QQ[X]$.

  On a donc que $Pi_alpha ^m divides P$.

  Montrons que $deg(Pi_alpha) = 1$.

  Supposons $deg(Pi_alpha) >= 2$. On a donc que $deg(Pi_alpha ^m) >= 2 m > deg(P)$. Or, $Pi_alpha ^m divides P$,
  absurde donc:
  $
  deg(Pi_alpha) = 1 \
  <=> alpha in QQ
  $

]
