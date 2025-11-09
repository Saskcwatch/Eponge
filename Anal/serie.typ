#import "../lib.typ": *
#show: tmpl



=== Merci Euler ! - $chocolate$

#question[
  Pour $n, m in NN$, on définit
  $
    I(n, m) := integral_0^1 x^n (1-x)^m d x
  $

  1) Donner une expression utilisant des factorielles de $I(n, m)$ pour tous $n, m in NN$

  2) En déduire que $ sum_(n=0)^(+infinity) (n!)^2/(2n+1)! =( 2 pi sqrt(3))/9 $
]

=== De la réciprocité - $hammer$

#question[
  Pour $n in NN$, on pose $ W_n := integral_0^(pi/2) cos^n (t) dif t $

  1) Calculer
  $ S(x) :=sum_(n=0)^(+infinity) W_(2n)x^(2n) $
  pour les réels $x$ tels que $S(x)$ converge.

  2) En déduire
  $
    integral_0^1 log(t^2 - t -1)/(t^2 - t) dif t
  $
  On pourra s'interesser a
  $
    sum_(n gt.eq.slant 1) 1/(n^2 binom(2n, n))
  $
]



=== Un peu de trigo - $chocolate$

#question[
  On note $T_n$ et $U_n$ les n-ème polynôme de Tchebychev respectivement de première et de seconde espèce.
  Soient $x, t in RR$.

  Discuter de la convergence, et calculer :
  $ T(x,t) := sum_(n=0)^(+infinity) T_n (x) t^n quad "et" quad U(x, t):=sum_(n=0)^(+infinity) U_n (x) t^n $

  #pagebreak()
]

=== Fibo ? - $ram$

#question[On définit la suite de fibbonacci par :
  $cases(F_0 = 0, F_1=1, forall n in NN ", " F_(n+2) = F_(n+1) + F_n)$

  Calculer $ sum_(n=0)^(+oo) arctan(1/F_(2n+1)) $]

#indic[
  Commencer par montrer que, pour tout $n in NN^*$, $F_(n+1)^2 - F_(n+2)F_n = (-1)^n$, puis trouver un télescopage.
]

#correction[
  On montre sans trop de difficultés par récurrence que pour tout $n in NN$, $F_(n+1)^2 - F_(n+2) F_n = (-1)^n$.

  On va faire apparaître un télescopage de la forme $arctan(1/F_(2 n)) - arctan(1/F_(2 n + 2))$

  Pour cela, on remarque que, pour tout $n in NN^*$
  $
    tan(arctan(1 / F_(2 n)) - arctan(1 / F_(2 n + 2))) & = tan(arctan(F_(2 n + 2)) - arctan(F_(2 n))) \
                                                       & = (F_(2 n + 2) - F_(2 n))/ (1 + F_(2 n + 2) F_(2 n)) \
                                                       & = F_(2 n + 1) / (F_(2 n + 1)^2) \
                                                       & = 1/F_(2 n + 1)
  $

  Comme $0 <= 1/F_(2 n) <= 1$ et $0 <= 1/F_(2 n + 2) <= 1$, on a $-pi/4 <= arctan(1 / F_(2 n)) - arctan(1 / F_(2 n + 2)) <= pi/4$.

  Ainsi, pour tout $n in NN^*$, $ arctan(1 / F_(2 n)) - arctan(1 / F_(2 n + 2)) & = arctan(tan(arctan(1 / F_(2 n)) - arctan(1 / F_(2 n + 2)))) \
                                                & = arctan(1/F_(2 n + 1)) $

  Par télescopage, $ sum_(n=1)^(+oo) arctan(1/F_(2 n + 1)) = sum_(n = 1)^(+oo) arctan(1/F_(2 n)) - arctan(1/F_(2 n + 2)) = pi/4 $
  D'où $ sum_(n=0)^(+oo) arctan(1/F_(2 n + 1)) = pi/2 $
]

=== Une petite odeur de Cesàro - $chocolate$

#question[
  Soit $(u_n)_(n in NN)$ une suite à valeurs dans $CC$.
  On pose $ S_n := sum_(k = 0)^n u_k quad "et" quad sigma_n := 1/ (n + 1)sum_(k=0)^n S_k $

  1) On suppose que $(u_n)$ est à valeurs dans $RR^+$. Montrer que $ (S_n) "converge" <==> (sigma_n) "converge" $

  2) Même question si on suppose $u_(n+1) - u_n = cal(o)(1/n)$

  3) $hammer$ Même question si on suppose $u_(n+1) - u_n = cal(O)(1/n)$.
]


=== Casse-tête normalien - $ambulance$

#question[
  Déterminer la nature de la série $ sum_(n in NN^*)1/n^(2 + cos(n)) $]


=== Que pensez-vous des DÉS ? - $hammer$

#question[
  Calculer $ sum_(n=1)^(+oo) 2^(-n)/(1+2^(2^(-n))) $
]

#indic[
  Développer en éléments simples $1/(1+x^2)$ et l'utiliser pour télescoper la somme
]

=== Bertrand pour sûr - $quest$

#question[Soit
  $
    f : RR_+^* & --> RR \
        x quad & barow cases(x "si" x lt.eq.slant e, x f(log(x)) "si " x > e)
  $

  Determiner la nature de
  $
    S_n = sum_(k = 1)^n 1/f(k)
  $
]

=== Double somme ? - $mushroom$

#question[
  Discuter, en fonction de $alpha in RR$ de la convergence de
  $
    limits(sum)_(n in NN) cos(n) / (1 + n^alpha)
  $
]

=== Utile contre-exemple - $hammer$

#question[
  1) Determiner la nature de
  $
    sum_(p in cal(P)) 1/p
  $

  2) $gorilla$ Trouver un équivalent simple de:
  $
    sum_(p in cal(P), p <= n) 1/p
  $
]


=== Des séries palindromiques - $chocolate$

#question[
  Soit $P$ l'ensemble des entiers naturels non nuls qui sont palindromes en base 10.\

  1) La famille $(1/i)_(i in P)$ est-elle sommable ?

  2) $ambulance$ Déterminer un équivalent asymptotique de $ pi_n := sum_(limits(i in P)_(i <= n)) 1/sqrt(i) $
]

#indic[
  1) Majorer ou minorer les sommes partielles de tous les palindromes inférieurs à $10^N$.

  2) Problème ouvert à la connaissance des auteurs. \En revanche, on peut montrer sans trop de difficultés que $ pi_n = Theta(log n) $
]

#correction[
  1) Notons $K_n = P inter eintl 10^(n-1); 10^n - 1 eintr$. \
  Alors, $( union.sq.big_(k=1)^n K_k)_(n in NN)$ est une suite exhaustive de $P$.
  On cherchera donc à majorer $ sum_(k=1)^n sum_(i in K_k) 1/i $.
  \

  Calculons $abs(K_n)$:
  - Si $n = 2 k$ est pair, tout palindrome de $K_n$ est de la forme $overline(a_1 a_2 dots.c a_k a_k dots.c a_2 a_1)^10$ où $a_1 in eintl 1, 9 eintr$ et $a_2, dots.c a_k in eintl 0, 9 eintr$.
    Donc $abs(K_n) = 9 times 10^(k-1)$
  - Si $n = 2 k + 1$ est impair, tout palindrome de $K_n$ est de la forme $overline(a_1 a_2 dots.c a_k a_(k + 1) a_k dots.c a_2 a_1)^10$, avec $a_1 in eintl 1, 9 eintr$ et $a_2, dots.c, a_(k+1) in eintl 0, 9 eintr$
    Donc $abs(K_n) = 9 times 10^k$
  \
  Dans les deux cas, $ abs(K_n) = 9 times 10^(floor((n-1)/2)) $

  \
  On a donc $ sum_(k=1)^n sum_(i in K_k) 1/i <=&sum_(k=1)^n (abs(K_k) times max_(i in K_k) 1/i) &<=& 9 sum_(k=1)^n 10^floor((k-1)/2)times 1/(10^(k-1)) \ && <=& 9 sum_(k=1)^n 10^((k-1)/2) times 10^(1-k) \ && <=& 9 sum_(k=0)^(n-1) (1/sqrt(10))^k \ && <=& (9 sqrt(10))/(sqrt(10) - 1) $


  Comme la famille $(1/i)_(i in P)$ est à termes positifs, elle est sommable.


  Donc la série de terme général $1/p_i$ converge.


  \
  \
  \
  2) Par le même raisonnement que pour la 1), on montre que $ (9 n)/10 <= sum_(k=1)^n sum_(i in K_k) 1/sqrt(i) <= 9 n $

  On en déduit, pour $n in NN^*$ : $ pi_n >= pi_(10^floor(log_10 (n))) = sum_(k=1)^floor(log_10 (n)) sum_(i in K_k) 1/sqrt(i) >= 9/10 log_10 (n) $
  \
  De même, $ pi_n <= pi_(10^(1 + floor(log_10 (n)))) = sum_(k=1)^(floor(log_10 (n)) + 1) sum_(i in K_k) 1/sqrt(i) <= 9 log_10 (n) + 9 $

  \
  \
  D'où $pi_n = Theta(log n)$


  \
  Si quelqu'un a une estimation plus précise de $pi_n$, je suis preneur $face.inv$
]

=== Combien de trou ? - $gorilla$

#question[
  On considère:
  $
    phi : {-1, 1}^NN^* & earrow RR \
        (u_n)_(n >= 1) & asarrow sum_(n=1)^oo u_n/n^2
  $

  Determiner $img(phi)$
]

