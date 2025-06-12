#import "../lib.typ": *
#show: tmpl

#question[
#underline[*Définitions*]

+ #underline[Forme quadratique]
Soit $E$ un $KK$-espace vectoriel.
\
On appelle forme quadratique sur $E$ toute application de la forme $u mapsto B(u, u)$ où $B$ est une forme bilinéaire symétrique sur $E$

]

=== De jolies surfaces - $mushroom$

#question[
  1) Soit $phi$ une forme linéaire non nulle de $RR^n$ dans $RR$. \
  Trouver les éventuels extrema locaux et globaux de la fonction $f$ définie sur $RR^n$ par 
  $ f(x) = phi(x) e^(-norm(x)^2) $

  \
  2) Soit $psi$ une forme quadratique sur $RR^n$. Déterminer les éventuels extrema globaux de la fonction $f$ définie sur $RR^n$ par 
  $ f(x) = psi (x) e^(- norm(x)^2) $ 
]

#indic[
  2) Chercher les points critiques de $f$. 
  On pourra penser à utiliser les éléments propres de la matrice de la forme bilinéaire associée à $psi$ dans une base orthonormée.
]


#correction[
  2) On remarque que $f$ est $cal(C)^1$ sur $RR^n$.
\ Soit $M$ la matrice de la forme bilinéaire associée à $psi$.
\  On note $g$ la fonction définie sur $RR^n$ par $g(x)= e^(-norm(x)^2)$.

  Alors, $ grad f(x) =& grad psi (x) times g(x) + psi(x) grad g(x) \ 
  =& 2 M x times e^(-norm(x)^2) - psi(x) times 2 x e^(-norm(x)^2) \ 
  =& 2 e^(-norm(x)^2) (M x - psi(x) x) $
\ \
  #underline[Analyse]: Supposons $x$ un point critique de $f$.

  Alors, $M x - psi(x) x = vec(0, dots.v, 0)$
  \ Donc x est un vecteur propre de $M$ ou $x = 0$.

  On a alors $ psi(x) x= (x^"T" M x) x = (x^"T" psi(x) x) x = psi(x) norm(x)^2 x $
  Donc $psi(x) = 0$ ou $norm(x) = 1$.

  #underline[Synthèse]: Réciproquement, si $x$ est un vecteur propre de $M$ unitaire ou associé à la valeur $0$, alors $x$ est un point critique de $f$.
  \
  De plus, $0$ est un point critique de $f$.

  
  \
  \
  Les points critiques qui ne sont pas un vecteur propre unitaire de $M$ sont d'image nulle par $f$.

  Soit $x$ un vecteur propre unitaire de $M$.
  Alors, $ f(x) = psi(x) e^(-norm(x)^2) = psi(x) / e $
  Comme $psi(x)$ est une valeur propre de $M$, cette quantité est maximale quand $psi(x)$ est la plus grande valeur propre $lambda_"max"$ de $M$.

  \
  On distingue deux cas: 
  - si $lambda_max <= 0$, alors $f$ est clairement toujours négative donc les maxima sont les points qui annulent $f$.
  
  - si $lambda_max > 0$, alors les points critiques avec une valeur maximale sont les vecteurs propres de $M$ unitaires associés à $lambda_"max"$
  

  Montrons que dans ce deuxième cas, $lambda_max / e$ est un maximum global de $f$ :
  \ On a $f(u) limits(stretch(arrow, size: #400%))_(norm(u)->+oo) 0$ \ Donc il existe $R > 0$ tel que pour tout $x in RR^n \\ overline(B)(0_(RR^n), R)$, $f(x) <= lambda_max / 4$

  Par le théorème des bornes atteintes, $f$ admet un maximum sur $overline(B)(0_(RR^n), R)$. \
  Ce maximum est un point critique de $f$, donc la valeur de ce maximum est $lambda_max / e$ et il est atteint en les vecteurs propres unitaires de $M$ associés à la valeur propre $lambda_max$.
  Ce maximum est alors un maximum global de $f$.


  \
  \ 
  Finalement, $f$ admet toujours une valeur maximale, qui vaut $max(0, lambda_max / e)$.
  Les maxima globaux sont :
  - les vecteurs propres unitaires de $M$ associés à $lambda_max$ si $lambda_max > 0$
  - $f^(-1) ({0})$ si $lambda_max <= 0$

  \
  Par le même raisonnement, $f$ admet toujours un minimum, qui vaut $min(0, lambda_min / e)$.
  Les minima globaux sont :
  - Les vecteurs propres unitaires de $M$ associés à $lambda_min$ si $lambda_min < 0$
  - $f^(-1)({0})$ si $lambda_min >= 0$
]
