#import "../lib.typ": *
#show: tmpl
#question[
  #underline[*Définitions*]

  1. #underline[Indicatrice d'Euler]:
  Pour $n in NN$, on définit $phi(n) := |{d in eintl 1, n eintr | n and d = 1}|$.
  La fonction $phi$ est appellée indicatrice d'euler.
]

=== Une suite de PGCD - $chocolate$

#question[Soient $P$ et $Q$ deux polynômes de $ZZ[X]$ premiers entre eux.
  Montrer que la suite $(P(n) and Q(n))_(n in ZZ)$ est périodique.]

=== Not Five - $chocolate$

#question[Soit $P in ZZ[X]$, $x_1, x_2, x_3, x_4, x_5 in ZZ$ distincts tel que pour tout $i in eintl 1, 5 eintr$, $P(x_i) = 7$.

  Montrer que pour $n in ZZ, P(n) != 5$.]

=== Determinant arithmétique - $gorilla$


#question[1) Montrer que pour $n in NN$
  $
    n = sum_(d divides n) phi(d)
  $

  2) Calculer pour $n in NN$
  $
    det ((i and j)_(1 <=i,j <=n))
  $
  On pourra essayer d'exprimer ce déterminant sous la forme d'un produit de 2 déterminants plus simples.
]

#indic[
  Utiliser la relation de la question 1 sur $i and j$
]

#correction[
  2) On a que, pour $(i, j) in eintl 1, n eintr^2$:
  $
    i and j &= sum_(d divides (i and j)) phi(d) \
    &= sum_(d divides i, d divides j) phi(d) \
    &= sum_(d= 1)^n phi(d) delta_(d divides i) delta_(d divides j)
  $

  On considère deux matrices:
  $ B = (phi(i) delta_(i divides j))_((i,j) in eintl 1, n eintr^2) $
  $ A = (delta_(j divides i))_((i, j) in eintl 1, n eintr^2) $

  On a donc que
  $
    (A B)_(i, j) = sum_(k = 1)^n phi(k) delta_(k divides j) delta_(k divides i) = i and j
  $

  On a donc que $A B = (i and j)_((i, j) in eintl 1, n eintr^2)$.

  On remarque que si $i > j$, $i divides.not j => delta_(i divides j) = 0$. On a donc que $A$ et $B$
  sont triangulaires. On remarque de plus que les termes diagonaux de $B$ sont de la forme $phi(i)$ pour $i in eintl 1, n eintr$ et que
  $A$ ne contient que des $1$. Finalement, on a que:
  $
    det((i and j)_((i,j) in eintl 1, n eintr^2)) = product_(k = 1)^n phi(k)
  $
]
