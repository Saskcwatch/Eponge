#import "../lib.typ": *
#show: tmpl

=== Une intégrale de  Fresnel ? - $chocolate$

#question[
Étudier la convergence de $ integral_0^(+oo) sin(t) sin(t^2) dif t $
]
#indic[
  Multiplier l'intégrande par $(2t)/(2t)$.
]

=== Des parties entières - $chocolate$

#question[
Pour $x in RR$, on note $floor(x)$ la partie entière de $x$. 
Trouver
$
integral_0^1 x floor(1/x) dif x
$
]

=== Un calcul de E-M - $hammer$

#question[
Calculer 
$ int_0^(+oo) e^(-x)log(x) dif x $
]

#indic[
  Quelle est la limite de $(1+x/n)^n ?$
]

=== Des parties fractionnaires - $ambulance$

#question[
Pour $x in RR$, on note ${x}$ la partie fractionnaire de $x$.

Montrer la convergence et calculer : 
$ integral_0^(pi/2) {tan(x)} dif x $
]

=== Sympathique résultat - $mushroom$

#question[
Determiner

$
int_0^1 arctan(x)log(x)dif x
$
]

#indic[
  Les séries sont vos amis.
]

=== La fonction Collao - $mushroom$

#question[
  Pour tout $x in RR \\ {-1, 1}$, on pose $ I(x) = int_0^pi log(1 - 2 x cos(t) + x^2) dif x $

  En étudiant le polynôme $X^(2 n) - 1$ pour $n in NN^*$, calculer $I(x)$ pour tout $x in RR \\ {-1, 1}$
]

#indic[
  Décomposer $X^(2 n) - 1$ comme produit d'irréductibles sur $RR[X]$.
]
