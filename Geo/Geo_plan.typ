#import "../lib.typ": *
#show: tmpl

=== Des tiroirs de compétition - $moyai$

#question[On colorie tous les points du plan euclidien, en utilisant $n$ couleurs. On note $K(X)$ la couleur du point $X$. 
On fixe deux points distincts $O$ et $A$.

Pour tout point $X$ différent de $O$, on définit $C(X)$ comme étant le cercle de centre $O$ et de rayon $ O X + ((accent(O A, ->), accent(O X, ->)))/(O X) " où l'angle " (accent(O A, ->), accent(O X, ->)) " est pris dans " [0, 2pi[  $

\
Montrer qu'il existe un point $Y$ différent de $O$ tel que $(accent(O A, ->), accent(O Y, ->)) eq.not 0$ et tel que $K(Y) in K(C(Y))$]

#indic[
  Utiliser le principe des tiroirs pour trouver deux points $X_1$ et $X_2$ tels que $K(C(X_1)) = K(C(X_2))$. En déduire l'existence de $Y dots$
]

#correction[
  L'ensemble des couleurs présentes sur un cercle est une partie non vide de l'ensemble des couleurs. Un tel ensemble peut donc prendre au maximum $2^n - 1$ valeurs différentes.
  \ On prend $2^n$ points distincts tels que les rayons de leurs cercles associés soient tous distincts et inférieurs à $sqrt(2 pi)$. \
  Par le principe des tirroirs, il existe, parmi ces points, deux points $X_1$ et $X_2$ tels que $K(C(X_1))=K(C(X_2))$.

  On suppose sans perte de généralité que le rayon $R_1$ de $C(X_1)$ est strictement inférieur au rayon $R_2$ de $C(X_2)$.
  
  On cherche un point $Y$ appartenant au cercle $C(X_1)$ tel que $C(Y)=C(X_2)$.

  Cela revient à résourdre $ R_1 + ((arrow(O A), arrow(O Y)))/ R_1 = R_2 <==> (arrow(O A), arrow(O Y)) = R_1(R_2 - R_1) $

  Comme $R_1 <= sqrt(2 pi)$, $R_2 <= sqrt(2pi)$ et $R_1 != R_2$, cette équation admet bien une solution $Y$ avec $(arrow(O A), arrow(O Y)) != 0$.

  On a $K(Y) in K(C(X_1)) = K(C(X_2)) = K(C(Y))$ ok!
]

=== Beaucoup trop de cercles - $mushroom$

#question[Montrer qu'il est impossible de partitionner $RR^2$ en cercles de rayons strictement positifs.]