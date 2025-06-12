#import "../lib.typ": *
#show: tmpl

=== Pour bien commencer - $chocolate$

#question[
  Déterminer toutes les fonctions $f$ définies sur $RR$ telles que 
  $ forall x in RR, f(f(x)) + x f(x) = 1 $
]

#incid[
  On pourra s'intéresser à la valeur en $0$.
]
  
===  Fonctionellement dense (?) - $mushroom$

#question[
  Déterminer toutes les fonctions $f$ continues sur $RR$ telles que
  $ forall (x, y) in RR^2, f(x y - x^2) + f(y - x^2) = f(x y) + f(x) + f(y) $
]

#correction[
  ($monkey$)
  Par analyse synthèse:

  *Analyse*
  
  On commence par évaluer en $(x,y) = (0,0)$ ce qui nous donne $f(0) = 0$. On peut étudier l'équation pour $y = 0$ et on trouve l'équation :
  $ f(x) = 2 f(-x^2) quad quad (*) $

  De cela, on peut conclure que $f$ est paire, et en évaluant en $x = 1$ on obtient $f(1) = 0$ (donc $f(-1) = 0$).

  En évaluant l'équation initiale en $(x, y) = (-1, 1)$ on a $f(-2) = 0 = f(2)$.

  Par récurrence, si, pour $n in NN, f(-n) = 0$ alors l'évaluation en $(x, y) = (-1, n)$ nous donne $f(-n-1) = 0$. Dès lors, $f(ZZ) = {0}$.

  On en déduit alors grâce à $(*)$ que $f({root(2^k, n) | k in NN^*, n in NN*}) = {0}$.

  Par densité dans $[1, +oo[$, $ f(]-oo, -1] union {0} union [1, +oo[) = {0} $

  Enfin, pour tout $x in ]0, 1[$ $ f(x) = 2f(x^2) $
  Donc $ f(x) = 2^k f(x^(2k)) $

  Avec $x^(2k) limits(stretch(arrow, size: #400%))_(x->0) 0$

  Donc par continuité de $f$: $ forall x in RR, f(x) = 0 $.

  *Synthèse* ok
  
  
]


=== Une équation symétrique ? - $mushroom$

#question[
  Déterminer toutes les fonctions de classe $cal(C)^2$ sur $[0, 1]$ à valeurs dans $RR$ telles que 
  $ forall x in [0, 1], f(x) = 2 f(x/2) + 2 f(1 - x/2) $
]

#indic[
  Raisonner par analyse-synthèse.
  Dériver deux fois $f$ et montrer que $f ' '$ est constante.
]
