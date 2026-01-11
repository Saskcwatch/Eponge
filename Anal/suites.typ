#import "../lib.typ": *
#show: tmpl

=== Private Joke - $chocolate monkey$

#question[
Soit $(x_n)_(n in NN) in RR^NN$ vérifiant pour $n in NN$:
$
x_(n+1) = x_n - x_n^862
$

Trouver les deux premiers termes du DA de $(x_n)$]

=== OHVB - $chocolate$

#question[
  Pour $n in NN^*$, on prend:
  $
    P_n = product_(k = 0)^n (X-k)
  $

  1) Justifier que pour $n in NN^*$, $P_n '$ s'annule une unique fois dans $bracket.r 0, 1 bracket.l$, on appelle $x_n$ cette racine.

  2) Donner un équivalent à $(x_n)_(n >= 1).$
  ]


#indic[
  Penser à un DES.
]

=== - $mushroom$

#question[
  Soit $(u_n)_(n in NN) in RR^NN$ tel que pour $n in NN$,
  $
    u_n sum_(k = 0)^n u_k ^2= 1
  $

  Determiner un équivalent à $u_n$
]

=== Mines Con - $gorilla$

#question[
  Montrer que la suite $(floor(n sqrt(2))_n)$ admet une infinité de terme de la forme une puissance de $2$.
]

=== Tuproc - $moyai$

#question[
  Soit $P in (RR \ QQ)[X]$, $deg(P) >= 2$ et $f in cal(C)^0 (RR, CC)$. On suppose de plus $f$ $1$-périodique. Montrer que:
  $
    1/n sum_(k=1)^n f(P(n)) lim_(n --> +oo) integral_0^1 f
  $ 
]

#indic[
  Faire Math C 2017.
]
