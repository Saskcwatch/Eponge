#import "../lib.typ": *
#show: tmpl
#question[
  #underline[*Définitions*]

  1. #underline[Indicatrice d'Euler]:
  Pour $n in NN$, on définit $phi(n) := |{d in eintl 1, n eintr | n and d = 1}|$.
  La fonction $phi$ est appellée indicatrice d'Euler.

  2. #underline[Fonction de Möbius]:
  Pour $n in NN^*$, on prend:
  $
    mu(n) := cases(1 &"si" n = 1,
    0 &"si" n "contient un facteur premier",
    (-1)^k &"si" n = p_1 dots p_k)
  $

  La fonction ainsi définis est appelé fonction de Möbius.

  3. #underline[Symbole de Legendre]:
  Pour $p in cal(P)$, $n in NN$, on définis le symbole de Legendre $(n/p)$ par:
  $
    (n/p) := cases(
      0 &"si" n eq.triple 0 [p],
      1 &"si" p divides.not n "et" exists k in NN\, n eq.triple k^2 [p],
      -1 &"sinon"
    ) 
  $

  Si $(n/p) = 1$, on dit que $n$ est un résidu quadratique modulo $p$.
]

=== Une suite de PGCD - $chocolate$

#question[Soient $P$ et $Q$ deux polynômes de $ZZ[X]$ premiers entre eux.
  Montrer que la suite $(P(n) and Q(n))_(n in ZZ)$ est périodique.]

=== Not Five - $chocolate$

#question[Soit $P in ZZ[X]$, $x_1, x_2, x_3, x_4, x_5 in ZZ$ distincts tel que pour tout $i in eintl 1, 5 eintr$, $P(x_i) = 7$.

  Montrer que pour $n in ZZ, P(n) != 5$.]

=== Iversion de Möbius - $mushroom sponge$

#question[
  1) Calculer pour $n in NN^*$
  $
    sum_(d divides n) mu(d)
  $

  2) Soit $f, g in cal(F)(NN^*, CC)$. Montrer que les deux conditions suivantes sont équivalentes:
  $
    (i) quad &forall n in NN^*, quad f(n) = sum_(d divides n) g(d) \
    (i i) quad &forall n in NN^*, quad g(n) = sum_(d divides n) mu(d) f(n/d)
  $

  3) Montrer que $id_(NN^*)$ et $phi$ vérifie les relations. 
]

=== Determinant arithmétique - $gorilla$


#question[
  Calculer pour $n in NN$
  $
    det ((i and j)_(1 <=i,j <=n))
  $
  On pourra essayer d'exprimer ce déterminant sous la forme d'un produit de 2 déterminants plus simples.
]

#indic[
  Utiliser la relation de la question 3 de l'exercice précédent sur $i and j$
]

#correction[
  On a que, pour $(i, j) in eintl 1, n eintr^2$:
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

=== Quelques valeurs du symbole de Legendre - $ram sponge$

#question[On prend $p in cal(P), p != 2$.

1) Soit $n, m in NN$ tels que $p divides.not n, m$, en notant $(dot/dot)$ le symbole de Legendre définis plus haut, montrer que:
$
  ((n m)/p) = (n/p)(m/p) \
  (n/p) eq.triple  n^((p-1)/2) [p]
$

2) On note, pour $xi in CC$, $ZZ[xi]$ le plus petit sous anneau $A$ de $CC$ (pour l'inclusion) vérifiant:
$
  ZZ subset A \
  xi in A
$

On définis de plus la relation $cal(R)$ sur $ZZ[xi]$ par:
$
  x cal(R) y <=> exists lambda in ZZ[xi], x-y = lambda p
$

Montrer que $cal(R)$ est une relation d'équivalence sur $ZZ[xi]$ et que si l'on note $ZZ[xi]\/angle.l p angle.r$ l'ensemble des classes d'équivalence,
$ZZ[xi]\/angle.l p angle.r$ hérite de la structure d'anneau de $ZZ[xi]$.
\ \
3) On prend $p > 3$. On considère $ZZ[j]\/angle.l p angle.r$ et $a = j - j^2$.

+ En regardant $a^2$, montrer que $-3$ est un résidus quadratique modulo $p$ ssi $a^p = a$ dans $ZZ[j]\/ angle.l p angle.r$. 

+ En déduire que $3$ est un résidus quadratique modulo $p$ ssi $p eq.triple plus.minus 1 [12]$.

4) En posant $zeta = e^(i pi/4)$, par la même méthode que la question précédente et en considérant $ZZ[zeta]\/angle.l p angle.r$ et $a = zeta + zeta^(-1)$ montrer que
$2$ est un résidus quadratique modulo $p$ ssi $p eq.triple plus.minus 1 [8]$
]

#indic[
  1) Vérifier que $cal(C) = {x^2 | x in FF_p ^*}$ est un sous groupe de $FF_p ^*$ et en calculer son cardinal.

  2) L'écrire

  3) Utiliser la relation de la question 1, ne pas être tenté trop vite de dire que $-3$ est un résidus quadratique par ce que $a^2 = -3$: $a$ n'est pas forcément dans $ZZ$.

]
