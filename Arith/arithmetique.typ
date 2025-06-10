#import "../lib.typ": *
#show: tmpl
#question[
#underline[*Définitions*]

+ #underline[Indicatrice d'Euler]
Pour $n in NN$, on définis $phi(n) := |{d in eintl 1, n eintr | n and d = 1}|$.
La fonction $phi$ est appellé indicatrice d'euler.
]

=== Une suite de PGCD - $chocolate$

#question[Soient $P$ et $Q$ deux polynômes de $ZZ[X]$ premiers entre eux.
Montrer que la suite $(P(n) and Q(n))_(n in ZZ)$ est périodique.]

=== Not Five - $mushroom$

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
On pourra essayer d'exprimer ce determinant sous la forme d'un produit de 2 déterminants plus simples.
]

#indic[
  Utiliser la relation de la question 1 sur $i and j$
]
