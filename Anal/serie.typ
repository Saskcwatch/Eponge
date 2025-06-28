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
$ T(x,t) := sum_(n=0)^(+infinity) T_n (x) t^n quad "et" quad  U(x, t):=sum_(n=0)^(+infinity) U_n (x) t^n $

#pagebreak()
]

=== Fibo ? - $ram$

#question[On définit la suite de fibbonacci par :
$cases(F_0 = 0, F_1=1, forall n in NN ", " F_(n+2) = F_(n+1) + F_n)$

Calculer $ sum_(n=0)^(+oo) arctan(1/F_(2n+1)) $]

#indic[
  Commencer par montrer que, pour tout $n in NN^*$, $F_n ^2 - F_(n+1)F_(n-1) = (-1)^n$
]

=== Une petite odeur de Cesàro - $mushroom$

#question[
Soit $(u_n)_(n in NN)$ une suite à valeurs dans $CC$.
On pose $ S_n := sum_(k = 0)^n u_k  quad "et" quad sigma_n := 1/ (n + 1)sum_(k=0)^n S_k  $


1) On suppose que $(u_n)$ est à valeurs dans $RR^+$. Montrer que $ S_n "converge" <==> sigma_n "converge" $
2) ($hammer (gorilla quest)$) On suppose que $u_(n+1) - u_n = cal(O)(1/n)$. Montrer que $ S_n "converge" <==> sigma_n "converge" $]


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
f : RR_+^* &--> RR \
    x quad  &barow cases(x "si" x lt.eq.slant e, x f(log(x)) "si " x > e)
$

Determiner la nature de 
$
S_n = sum_(n >= 1) 1/f(n)
$
\
]

=== Double somme ? - $mushroom$

#question[
Discuter, en fonction de $alpha in RR$ de la convergence de
$
  limits(sum)_(n in NN) cos(n) / (1 + n^alpha)
$
]

=== Utile contre-exemple - $hammer$

#question[Determiner la nature de
$
sum_(p in cal(P)) 1/p
$]
