#import "../lib.typ": * 
#show: tmpl

#question[
#underline[*Définitions*]

1. #underline[Forme quadratique]:
Soit $E$ un $KK$-espace vectoriel.
\
On appelle forme quadratique sur $E$ toute application de la forme $u mapsto B(u, u)$ où $B$ est une forme bilinéaire symétrique sur $E$

]

=== Une leçon de vie importante - $chocolate$

#question[Montrer que $cal(F_n) = (x stretch(arrow.r.bar, size: #200%) ln(x + k))_(k in eintl 0, n eintr)$ est libre pour tout $n in NN^*$]

#indic[
  S'interesser au comportement à l'infini.
]

=== Déterminant et produit scalaire - $mushroom$

#question[Soit $E$ un espace-préhilbertien réel muni de son produit scalaire et $(e_1, ..., e_n)$ une famille libre de E. On pose $F = "Vect"(e_1, ..., e_n)$.\
On définit la matrice de Gram d'une famille $(x_1, ..., x_n)$ de $E$ par : $ G (x_1, ... , x_n) := (angle.l x_i, x_j angle.r)_(i, j in [|1, n|]) $
Montrer que, pour tout $x in E$,  la distance $d$ de $x$ à $F$ vérifie : $ d(x, F) = det(G(e_1,...,e_n,x))/det(G(e_1,...,e_n)) $]

#indic[
  On pourra commencer par montrer l'équivalence entre :\

  (i) $(x_1,...,x_n)$ est une famille libre de $E$.
  
  (ii) $G(x_1,...,x_n)$ est une matrice inversible.
  
]

=== Des pinaillages - $hammer$

#question[
1) Montrer que $dim_QQ (RR) = oo$. 

2) On admet (avec l'axiome du choix) pouvoir compléter la famille $(1, sqrt(2))$ en une $QQ$-base de $RR$.\
Montrer qu'il existe $f, g$ deux fonctions périodiques définies sur $RR$ telles que pour tout $x in RR$, $f(x) + g(x) = x$]

#indic[
  1) Considérer la famille $(log p)_(p in cal(P))$
  
  2) Dual...
]
