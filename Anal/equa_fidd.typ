#import "../lib.typ": *
#show: tmpl

=== CMP - $chocolate$

#question[
  Soit $phi in cal(C)^2(RR, RR)$, tel que:
 $ 
 phi(x) limits(lrarrow)_(x -> +oo) l in RR \
 exists alpha > 0, forall x in RR,  phi(x) >= alpha
 $


 Montrer que l'équation $(E)$ définie par:
 $
 (E): phi y prime.double= phi prime.double y
 $

 Admet une solution qui tend vers $+oo$ en $+oo$
]

#indic[
  ajouter $phi'y'$ aux deux membres de $(E)$ pour se ramener à une équation différentielle d'ordre 1.
]

 === Dérivée absolue - $chocolate$

#question[
  Trouver toutes les fonctions $y$ dans $cal(C)^1 (RR, RR)$ tel que
 $
  y' = |y|
 $
]