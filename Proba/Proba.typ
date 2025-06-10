#import "../lib.typ": *
#show: tmpl

=== Polynômes aléatoires - $ambulance$

#question([On se place dans l'espace préhilbertien $RR[X]$ muni du produit scalaire 
$ angle.l P, Q angle.r := integral_0^1 P (t) Q(t) dif t $ 

On considère une urne remplie initialement d'une boule noire et d'une boule "$0$" et un polynôme $P = 0$.

A chaque étape, si la boule noire est tirée, on s'arrête, sinon on ajoute $X^k$ à P, où $k$ est la valeur de la boule tirée, on remet la boule tirée dans l'urne et on rajoute la boule correspondant au nombre de tirages effectués. 

Le polynôme $P$ est alors obtenu après le premier tirage de la boule noire.

Ce processus est ensuite réitéré pour obtenir un second polynôme $Q$. \
\
1) Montrer que le tirage du polynome fini bien avec une probabilité 1. 

2) On considère le tirage du polynome $P$. On note $C_k$ la variable aléatoire donnant le coefficient devant $X^k$ dans $P$. Trouver la loi de $C_k$ pour $k in NN$. 

3) Déterminer $EE (angle.l P, Q angle.r ) $

4) Déterminer $VV ( angle.l P, Q angle.r)$
])

=== Duel - $mushroom$

#question([On prend trois joueurs $A, B, C$ qui se battent en duel. Lors d'un duel, entre $B$ et $C$ par exemple, chaque joueur a 1 chance 2 sur deux de gagner et 1 chance sur 2 de perdre, le perdant d'un duel sort du terrain et celui qui ne jouait pas entre pour faire un duel avec le gagnant précédent. Un joueur gagne le tournoi si il réalise $l in NN$ victoire d'affiler. $A$ et $B$ commencent. 

1) On pose $l = 2$, determiner la probabilité que $A$ gagne, que $B$ gagne et que $C$ gagne.

2) ($ambulance$)  $l$ n'est plus fixé. Déterminer un développement asymptotique, en fonction de $l$, de la probabilité $p_l$ que $C$ gagne quand $l$ tend vers $+ oo$
])

#indic[
  1) Que se passe-t-il après avoir fait 3 duels ?
]

=== Truel - $mushroom$

#question([On prend 3 joueurs $A, B, C$ tirant au pistolet les uns sur les autres. $A$ touche avec une probabilité $2/3$, $B$ avec une probabilité $1/2$ et $C$ $1/3$. A chaque tour chacun vise le joueur le plus dangereux encore en vie (Au premier tour, $B$ et $C$ vise $A$ et $A$ vise $B$).

Determiner la probabilité que chaque joueur gagne ainsi que celle que le jeu finisse sans vainqueur.
#pagebreak()
])

#indic[
  En notant $A B C_n$ (resp. $A B_n$, $A C_n$, $B C_n$) les événements $A$, $B$ et $C$ (resp. $A$ et $B$, $A$ et $C$, $B$ et $C$) sont vivants au tour $n$, exprimer les événements $A$, $B$, $C$ gagne au tour $n$ grâce a des unions et des intersections.
]

=== Dédé - $ambulance$ 

#question([On prend un dé canonique à $3$ faces. On le lance et on ajoute un dé canonique à $x_1$ faces où $x_1$ est le résultat du lancé. On relance les deux dés et on ajoute un nouveau dé canonique à $x_2$ faces où $x_2$ est la somme des résultats des deux dés. On définit ainsi la suite $x_n$ comme la somme des $n$ dés du $n^"ème"$ lancer et on définit de plus la variable aléatoire $X_n = x_n$.

1) Déterminer la loi de $X_n$ pour $n in NN^*$ ainsi que son espérance et sa variance.

2) Généraliser pour un dé initial canonique à $p in NN^*$ faces.
])

=== $frak(S)_n$ Probabilisé - $baby$

#question([On considère l'ensemble $frak(S)_n$ dans lequel on tire des éléments de manière uniforme. On prend $F$ la variable aléatoire qui compte le nombre de points fixes et $C$ la variable aléatoire qui compte le nombre de cycles dans la décomposition en cycles disjoints.

1) Determiner $EE(F)$ 

2) ($mushroom$) Determiner $EE(C)$
])

=== Le quart de ce qu'on ne vous souhaite pas - $mushroom$

#question([Soit $G$ un groupe fini non commutatif. Montrer que la probabilité que $2$ éléments pris au hasard dans $G$ commutent est majorée par $5/8$.
])

#indic[
  Majorer les cardinaux du centre de $G$ et des commutants des éléments de $G$.
]

=== Zeta ?!? - $moyai$

#question([Montrer que la probabilité que $2$ entiers de $NN$ soient premiers entre eux est $6/(pi^2)$])

=== Une séquence préférée - $chocolate$

#question[On considère une suite de lancers indépendants d’une pièce pour laquelle la probabilité d’obtenir “pile” est $p in ]0, 1[$.

1) Soit $n > 2$. Calculer la probabilité de l’événement $A_n$ : “la séquence PF apparaît pour la première fois (dans cet ordre) aux lancers $n − 1$ et $n$”.

2) Quelle est la probabilité de l’événement “la séquence PF apparait au moins une fois” pour une infinité de lancer ?

3) Quelle est la probabilité de l’événement “la séquence PP apparaît sans que la séquence PF ne soit apparue auparavant” dans cette même configuration ?

4) ($moyai$) On considère à présent un dé à trois faces numéroté par ${1;6;8}$, de probabilité respective $p_1, p_6$ et $p_8$. Quelle est la probabilité de l'événement "la séquence '861' apparaît pour la première fois (dans cet ordre) aux lancer $n - 2, n - 1$ et $n$"
#pagebreak()]


=== - $hammer$

#question[Soit $n in NN^*$ et $(X_(i, j))_((i, j) in eintl 1, n eintr ^2)$ $n^2$ variables aléatoires identiquement distribué muttuellement indépendantes.
On note $Delta_n = det ((X_(i, j))_((i,j) in eintl 1, n eintr ^2))$.

1) On suppose $X_(1,1)$ centrée. Exprimer $VV(Delta_n)$ en fonction de $VV(X_(1, 1))$.

2) ($moyai$) On ne suppose plus $X_(1, 1)$ centré, determiner $VV(Delta_n)$.
]


#indic[
  1) utiliser la formule de Leibniz

  2) impossible
]