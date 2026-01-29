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

  3) Déterminer $EE (angle.l P, Q angle.r )$

  4) Déterminer $VV ( angle.l P, Q angle.r)$
])

=== Duel - $mushroom$

#question(
  [On prend trois joueurs $A, B, C$ qui se battent en duel. Lors d'un duel, entre $B$ et $C$ par exemple, chaque joueur a 1 chance 2 sur deux de gagner et 1 chance sur 2 de perdre, le perdant d'un duel sort du terrain et celui qui ne jouait pas entre pour faire un duel avec le gagnant précédent. Un joueur gagne le tournoi si il réalise $l in NN$ victoire d'affiler. $A$ et $B$ commencent.

    1) On pose $l = 2$, determiner la probabilité que $A$ gagne, que $B$ gagne et que $C$ gagne.

    2) $ambulance$ $l$ n'est plus fixé. Déterminer un développement asymptotique, en fonction de $l$, de la probabilité $p_l$ que $C$ gagne quand $l$ tend vers $+ oo$
  ],
)

#indic[
  1) Que se passe-t-il après avoir fait 3 duels ?
]

=== Truel - $mushroom$

#question(
  [On prend 3 joueurs $A, B, C$ tirant au pistolet les uns sur les autres. $A$ touche avec une probabilité $2 / 3$, $B$ avec une probabilité $1 / 2$ et $C$ $1 / 3$. A chaque tour chacun vise le joueur le plus dangereux encore en vie (Au premier tour, $B$ et $C$ vise $A$ et $A$ vise $B$).

    Determiner la probabilité que chaque joueur gagne ainsi que celle que le jeu finisse sans vainqueur.
    #pagebreak()
  ],
)

#indic[
  En notant $A B C_n$ (resp. $A B_n$, $A C_n$, $B C_n$) les événements $A$, $B$ et $C$ (resp. $A$ et $B$, $A$ et $C$, $B$ et $C$) sont vivants au tour $n$, exprimer les événements $A$, $B$, $C$ gagne au tour $n$ grâce a des unions et des intersections.
]

=== Dédé - $ambulance$

#question(
  [On prend un dé canonique à $3$ faces. On le lance et on ajoute un dé canonique à $x_1$ faces où $x_1$ est le résultat du lancé. On relance les deux dés et on ajoute un nouveau dé canonique à $x_2$ faces où $x_2$ est la somme des résultats des deux dés. On définit ainsi la suite $x_n$ comme la somme des $n$ dés du $n^"ème"$ lancer et on définit de plus la variable aléatoire $X_n = x_n$.

    1) Déterminer la loi de $X_n$ pour $n in NN^*$ ainsi que son espérance et sa variance.

    2) Généraliser pour un dé initial canonique à $p in NN^*$ faces.
  ],
)

=== $frak(S)_n$ Probabilisé - $baby$

#question(
  [On considère l'ensemble $frak(S)_n$ dans lequel on tire des éléments de manière uniforme. On prend $F$ la variable aléatoire qui compte le nombre de points fixes et $C$ la variable aléatoire qui compte le nombre de cycles dans la décomposition en cycles disjoints.

    1) Determiner $EE(F)$

    2) $mushroom$ Determiner $EE(C)$
  ],
)

=== Le quart de ce qu'on ne vous souhaite pas - $mushroom$

#question(
  [Soit $G$ un groupe fini non commutatif. Montrer que la probabilité que $2$ éléments pris au hasard dans $G$ commutent est majorée par $5 / 8$.
  ],
)

#indic[
  Majorer les cardinaux du centre de $G$ et des commutants des éléments de $G$.
]

=== Zeta ?!? - $moyai$

#question[
  // Montrer que la probabilité que $k > 1$ entiers de $NN$ soient premiers entre eux est $1/zeta(k)$
  Soit $k in NN^*$, pour $n in NN^*$ on note $X_1, ..., X_k$ des variables aléatoires indépendantes suivant la loi uniforme sur $[|1, n|]$. On note de plus:
  $
    r_n := PP {X_1 and X_2 and ... and X_k = 1}
  $

  Montrer que:
  $
    r_n lim_(n --> +oo) 1/zeta(k)
  $
]

#indic[
  On poura introduire $cal(D)_(h; n) := {(a_1, dots, a_k) in eintl 1, n eintr^k | forall i in eintl 1, k eintr, h divides a_i }$
  et calucler son cardinal.

  On pouura de plus traiter au moins la prémière question de l'exercice d'arithmétique sur la formule d'inversion de Möbius.
]

#correction[
  Fixons $k in NN, k > 1$
  On prend:
  $
    cal(R)_n := {(a_1, dots, a_k) in eintl 1; n eintr^k | a_1 and dots and a_k = 1} \
  $
  On remarque que:
  $
    r_n = |cal(R)_n|/n^k
  $

  On prend de plus:
  $
    cal(P)_n := cal(P) inter eintl 1, n eintr = {p_1, dots, p_pi(n)} \
    cal(D)_(h; n) := {(a_1, dots, a_k) in eintl 1, n eintr^k | forall i in eintl 1, k eintr, h divides a_i}
  $

  On recconait que:
  $
    cal(R)_n = inter.big_(p in cal(P)_n) overline(cal(D)_(p; n))
  $

  Ainsi,
  $
    overline(cal(R)_n) = union.big_(p in cal(P)_n) cal(D)_(p; n)
  $

  Or, on a que $|cal(D)_(h; n)| = floor(n/h)^k$, ainsi, par la formule du crible:
  $
    |overline(cal(R)_n)| &= sum_(l = 1)^pi(n) (-1)^(l + 1) sum_(1 <= i_1 < dots < i_l <= n) |inter.big_(j = 1)^l cal(D)_(p_i_j; n)| \
    &= sum_(l = 1)^pi(n) (-1)^(l+1) sum_(1 <= i_1 < dots < i_l <= n) |cal(D)_(p_i_1dots p_i_l ; n)| \
    &= sum_(l = 1)^pi(n) (-1)^(l+1) sum_(1 <= i_1 < dots < i_l <= n) floor(n/(p_i_1dots p_i_l))^k quad (i)
  $

  Montrons que:
  $
    |overline(cal(R)_n)| = n^k - sum_(d = 1)^n mu(d)floor(n/d)^k quad (i i)
  $
  Où $mu$ est la fonction de Möbius (voir Arithmétique).

  On a d'abord que l'absence du terme en $d = 1$ (soit $p_i_1 dots p_i_l = 1$ dans $(i)$) correspond dans $(i i)$. On a ensuite que si $d in eintl 1, n eintr$, $d$ est de la forme
  $d = p_i_1^r_i_1 dots p_i_l^r_i_l$ avec $p_i_1, dots, p_i_l in cal(P)_n$. \
  Notons que si $d$ contient un facteur carré (absent de $(i)$), alors $mu(d) = 0$ et le terme est donc absent de $(i i)$.
  On peut donc se contenter de regarder les $d$ de la forme $d = p_i_1 dots p_i_l$ avec les $p_i_j$ tous distincts.
  On a donc que $mu(d) = (-1)^l$. Le signe $-$ permet donc d'avoir le $(-1)^(l+1)$. Finalement on a bien que:
  $
    |overline(cal(R)_n)| = sum_(l = 1)^pi(n) (-1)^(l+1) sum_(1 <= i_1 < dots < i_l <= n) floor(n/(p_i_1dots p_i_l))^k =
    n^k - sum_(d = 1)^n mu(d)floor(n/d)^k
  $

  On a donc que:
  $
    |cal(R)_n| & = sum_(d = 1)^n mu(d) floor(n/d)^k \
           r_n & = 1/n^k sum_(d = 1)^n mu(d) floor(n/d)^k
  $

  On pose:
  $
    s_n := sum_(d = 1)^n mu(d)/d^k
  $

  Montrons que:
  $
    |r_n - s_n| lim_(n --> +oo) 0
  $

  (Comment faire ?)

  On conclus en calculant la limite de $(s_n)$. On a que, pour $d in NN^*, |mu(d)|<=1$, ainsi, $(s_n)$ converge absolument.
  On note $s$ la série et on regarde $zeta(k) s$
  $
    zeta(k) s = (sum_(m >= 1) 1/m^k) (sum_(d >= 1) mu(d)/d^k)
  $
  Comme tout converge absolument, par Fubini,
  $
    zeta(k) s = sum_((d, m) in NN^*^2) mu(d)/(m d)^k
  $

  On prend maintenant
  $
    cal(A) := {(a,b) in NN^*^2 | a divides b}
  $
  $
    phi: NN^*^2 & earrow cal(A) \
         (x, y) & asarrow (x, x y)
  $

  On a que $phi$ est une bijection (on pourra expliciter la réciproque pour s'en convaincre).
  En appliquant $phi^(-1)$ aux indice de la somme, on a donc:
  $
    zeta(k) s & = sum_((d, l) in NN*^2, d divides l) mu(d)/l^k \
              & = sum_(l >= 1) 1/l^k sum_(d divides l) mu(d) \
              & = sum_(l >= 1) 1/l^k delta_(1, l) = 1
  $

  On a donc que $zeta(k) s = 1$, soit $s = 1/zeta(k)$. On en déduit le résultat final:
  $
    r_n lim_(n --> +oo) 1/zeta(k)
  $



]

=== Une séquence préférée - $chocolate$

#question[On considère une suite de lancers indépendants d’une pièce pour laquelle la probabilité d’obtenir “pile” est $p in ]0, 1[$.

  1) Soit $n > 2$. Calculer la probabilité de l’événement $A_n$ : “la séquence PF apparaît pour la première fois (dans cet ordre) aux lancers $n − 1$ et $n$”.

  2) Quelle est la probabilité de l’événement “la séquence PF apparait au moins une fois” pour une infinité de lancer ?

  3) Quelle est la probabilité de l’événement “la séquence PP apparaît sans que la séquence PF ne soit apparue auparavant” dans cette même configuration ?

  4) $moyai$ On considère à présent un dé à trois faces numéroté par ${1;6;8}$, de probabilité respective $p_1, p_6$ et $p_8$. Quelle est la probabilité de l'événement "la séquence '861' apparaît pour la première fois (dans cet ordre) aux lancer $n - 2, n - 1$ et $n$"]


=== Determinant deterministe ? - $ramranch$

#question[Soit $n in NN^*$ et $(X_(i, j))_((i, j) in eintl 1, n eintr^2)$ $n^2$ variables aléatoires identiquement distribuées mutuellement indépendantes.
  On note $Delta_n = det ((X_(i, j))_((i,j) in eintl 1, n eintr^2))$.

  1) On suppose $X_(1,1)$ centrée. Exprimer $VV(Delta_n)$ en fonction de $VV(X_(1, 1))$.

  2) On ne suppose plus $X_(1, 1)$ centré, determiner $VV(Delta_n)$.
]


#indic[
  1) Utiliser la formule de Leibniz

  2) Absolument impossible
]



=== Un bon moment de probabilité - $mushroom$

#question[
  On se place dans un espace probabilisé fini $(Omega, PP)$.
  Soient $X$ et $Y$ deux variables aléatoires réelles telles que $ forall n in NN, EE(X^n)=EE(Y^n) $
  On supposera par convention $0^0 = 1$

  Montrer que $X$ et $Y$ suivent la même loi.
]

#indic[
  Lagrange...
]

#correction[
  On remarque que, par linéarité de l'espérence, pour tout polynôme $P$ de $RR[X]$, $EE(P(X)) = EE(P(Y))$

  En prenant $A = X(Omega) union Y(Omega)$, on a:
  $ EE(P(X)) = sum_(x in A) P(x) PP(X=x) quad " et " quad EE(P(Y)) = sum_(y in A) P(y) PP(Y=y) $

  Pour $x in Omega$, on prend, par interpolation de Lagrange, $P$ comme étant un polynôme qui s'annule sur $Omega \\ {x}$ et tel que $P(x)=1$

  Alors, $PP(X=x) = EE(P(X)) = EE(P(Y)) = PP(Y = x)$.

  Ceci étant vrai pour tout $x in A$, $X$ et $Y$ suivent la même loi.
]

=== Des dés pipés ? - $ramranch$

#question[
  Peut-on construire 2 dés à $6$ faces numérotés de $1$ à $6$ tels que la variable aléatoire qui compte la somme des valeurs obtenues suive une loi uniforme ?

]

#indic[
  Supposer par l'absurde l'existence de ces dés, en prennant $F$ et $S$ les V.A. qui comptent les valeurs prisent par chacun des dés et en notant pour $k in eintl 1, 6 eintr$,
  $
    p_(k-1) = PP(F = k) \
    q_(k-1) = PP(S = k)
  $

  Etudier
  $
    P = sum_(i = 0)^5 p_i X^i \
    Q = sum_(i = 0)^5 q_i X^i
  $

]

#correction[
  On suppose par l'absurde l'existence des ces dés. On note:
  - $F$ et $S$ les V.A. qui correspondant au premier et au deuxième dés.
  - Pour $k in eintl 1, 6 eintr$, $p_(k-1) := PP(F = k)$, $q_(k-1) := PP(S = k)$

  On a donc par hypothèse que:
  $
    (F + S) sui cal(U)(eintl 2, 12 eintr)
  $

  Ainsi, pour $k in eintl 2, 12 eintr$,
  $
    PP(F + S = k) = 1 / 11
  $

  Or,
  $
    PP(F + S = k) & = PP(F = 1)PP(S = k - 1) + dots + PP(F = k-1)PP(S = 1) \
                  & = p_0 q_(k-2) + dots + p_(k - 2)q_0
  $
  On introduit:
  $
    P := sum_(i = 0)^5 p_i X^i \
    Q := sum_(i = 0)^5 q_i X^i
  $

  On a donc que $PP(F + S = k)$ est exactement le coefficient devant $X^(k - 2)$ dans $P Q$.
  Ainsi, comme $F + S sui cal(U)(eintl 2, 12 eintr)$,
  $
    P Q & = sum_(k = 0)^10 1 / 11 X^k \
        & = 1 / 11 sum_(k = 0)^10 X^k \
        & = 1 / 11 (X^11 - 1) / (X - 1)
  $

  On remarque que $P$ et $Q$ sont de degrès $5$, ainsi ils admettent tout deux au moins une racine dans $RR$, on a donc que $P Q$ aussi admet au moins une racine dans $RR$.
  Cependant, $(X^11 - 1) / (X - 1)$ n'as de racine que dans $CC$ (les racines $11$ ème de l'unité sauf $1$).
  Absurde ! Il est donc impossible de piper des dés a $6$ de tel sorte que la somme des valeurs suivent une loi uniforme.

]

=== Probable irréducibilité - $hammer$

#question[
  On prend $p in cal(P)$ et on note $I_n$ la probabilité qu'un polynome tiré au hasard dans $FF_p [X]$ soit
  irréductible, unitaire et de degré au plus $n$.

  Determiner un dévelopement asymptotique à $1$ terme de $I_n$ quand $n$ tend vers l'infini.
]

#indic[
  En notant $N_p^n$ le nombre de polynome irrécutible unitaire de degré $n$, exprimer $N_p^n$ a l'aide d'une convolution de Dirichlet.
]

=== More Zeta ! - $ramranch$

#question[
  Soient $s > 1$ et $X$ une variable aléatoire à valeur dans $NN^*$ de loi définie par:
  $
    forall n >= 1, PP {X = n} = n^(-s)/zeta(s)
  $
  où $zeta$ est la fonction de Riemann.

  On note de plus $(p_k)_(k>=1)$ la suite croissante des nombres premiers.

  En s'intérressant à $A_k := {p_k divides X}$ montrer que:
  $
    1/zeta(s) = product_(k>=1)(1-1/p_k)
  $
]
