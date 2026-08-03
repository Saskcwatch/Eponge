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
  On définit la matrice de Gram d'une famille $(x_1, ..., x_n)$ de $E$ par : $ G (x_1, ... , x_n) := (chevron.l x_i, x_j chevron.r)_(i, j in [|1, n|]) $
  Montrer que, pour tout $x in E$,  la distance $d$ de $x$ à $F$ vérifie : $ d(x, F) = det(G(e_1,...,e_n,x))/det(G(e_1,...,e_n)) $]

#indic[
  On pourra commencer par montrer l'équivalence entre :\

  (i) $(x_1,...,x_n)$ est une famille libre de $E$.

  (ii) $G(x_1,...,x_n)$ est une matrice inversible.

]

=== Des pinaillages - $ramranch$

#question[
  1) Montrer que $dim_QQ (RR) = oo$.

  2) On admet (avec l'axiome du choix) pouvoir compléter la famille $(1, sqrt(2))$ en une $QQ$-base de $RR$.\
  Montrer qu'il existe $f, g$ deux fonctions périodiques définies sur $RR$ telles que pour tout $x in RR$, $f(x) + g(x) = x$]

#indic[
  1) Considérer la famille $(log p)_(p in cal(P))$

  2) Dual...
]

=== Les vaches de l'ENS - $ramranch$

#question[
  Un paysan possède $2p + 1$ vaches, a chaque fois que l'on choisis une vache, le paysan réussit a répartir les $2p$ restantes en deux groupes de $p$ vaches de même poid total.

  Montrer que toutes les vaches font le même poid.
]

#indic[
  On pourra essayer de modéliser la situation a l'aide de matrices: on prend $v in RR^(2p + 1)$ qui contient le poids des vaches et considérer des formes linéaires qui traduise le choix et la répartition des vaches.
]

=== Inutile infinité - $moyai$

#question[
  Soit $I$ un ensemble et $KK in {RR, CC}$. On note $underline(e)$ une base de $KK^I$. Montrer que $I$ est infini si et seulement si $underline(e)$ et $KK^I$ sont équipotents.
]

=== - $ramranch$

#question[
  #pagebreak()
  Soit $n >= 2$ et on note $cal(A) subset.eq cal(M)_n (CC)$ une sous algèbre unitaire (l'unité n'étant pas forcément $I_n$). On suppose de plus que le seul élément nilpotent de $cal(A)$ est $0$.

  Montrer que tous les élèments de $cal(A)$ sont co-diagonalisable.
]


=== - $hammer$

#question[
  Soit $E$ un $CC$-ev de dimension finie et $cal(A) subset.eq cal(L)(E)$ tel que pour tout $x in E$, $cal(A)dot x = E$. Montrer que $cal(A) = cal(L)(E)$


]

#indic[
  // En notant, pour $u in E$, $attach(u, tl: t) in cal(E^*)$ définis par, pour $phi in E^*$ $attach(u, tl:t)(phi) = phi compose u$
  Montrer que $cal(A)$ contient 1 puis tous les endomorphisme de rang 1.
]

#correction[
  #lemme()[
    Les seuls sev de $E$ stable par tous les éléments de $cal(A)$ sont ${0}$ et $E$ tout entier.
  ]
  #preuve()[
    Si $F subset.eq E$ est stable par tous les éléments de $cal(A)$ et que l'on dispose de $x in F$, $x != 0$ alors:
    $
      cal(A) dot x = E subset.eq F
    $
    Finalement $F in {{0}, E} quad qed$
  ]

  #lemme()[

    Si l'on note:
    $
      T: E & earrow (E^*)^* \
         x & asarrow til(x)
    $
    où $til(x) := phi |-> phi(x)$ \
    Alors $T$ est un isomorphisme entre $E$ et son bi-dual.

  ]

  #preuve()[
    Par injectivité et égalité des dimensions. $qed$
  ]

  On s'autorise ainsi à confondre $x$ et $til(x)$ et on notera pour $(x, phi) in E times E^*$:
  $
    cl phi, x cr = cl x, phi cr := phi(x) = x(phi)
  $

  #def([Endomorphisme transposé])[
    On note de plus, pour $u in cal(L)(E)$, $trans(u) in cal(L)(E^*)$ _l'endomorphisme transposé de  $u$_ définis par:
    $
      forall phi in E^*, trans(u)(phi) := phi compose u
    $

    Pour $X subset.eq cal(L)(E)$, on note alors:
    $ trans(X) := {trans(u) | u in X} subset.eq cal(L)(E^*) $

  ]

  On vérifie aisaiment que $u |-> trans(u)$ est un morphisme d'algèbre unitaire et que, comme nous pouvions identifier $x$ et $til(x)$, on peut aussi identifier $u$ et $trans((trans(u)))$

  #lemme()[
    $trans(cal(A))$ est une sous-algèbre unitaire de $cal(L)(E^*)$ et les seuls sev de $E^*$ stable par tous les éléments de $trans(cal(A))$ sont ${0}$ et $E^*$ tout entier.
  ]

  #preuve()[
    $trans(cal(A))$ est une sous-algèbre unitaire comme l'image d'un morphisme.

    // On montre que les seuls sev de $E^*$ stable par tous les éléments de $trans(A)$ sont ${0}$ et $E^*$

    #def([Orthogonal])[
      Soit $F subset.eq E$ un sev. On note $F^perp$ _l'orthogonal de F_ définis par:
      $ F^perp := {phi in E^* | forall x in E, cl phi, x cr = 0} $
      C'est un sev de $E^*$ et $(F^perp)^perp = F$
    ]
    #lemme()[
      Si $F subset.eq E$ est stable par $u in cal(L)(E)$ alors $F^perp$ est stable par $trans(u)$
    ]
    #preuve()[
      Soit $phi in F^perp$. \
      Soit $x in F$, alors comme $F$ est stable par $u$, $u(x) in F$, ainsi
      $
        cl trans(u)(phi), x cr = cl phi compose u, x cr = phi(u(x)) = 0
      $
      Vrai pour tout $x in F$ puis tout $phi in F^perp$, ainsi $F^perp$ est stable par $trans(u) quad qed$

    ]
    Soit maintenant $F subset.eq E^*$ stable par tous les éléments de $trans(cal(A))$.
    par suite $F^perp$ est stable par tous les éléments de $trans((trans(cal(A)))) = cal(A)$ soit $F^perp in {{0}, E^*}$ puis:
    $
      F in {{0}, E} quad qed
    $



  ]

  #lemme()[
    On a:
    $
      forall phi in E^* \\ {0}, trans(cal(A)) dot phi = E^*
    $
  ]
  #preuve()[
    Soit $phi in E^* \\ {0}$, alors $trans(cal(A)) dot phi$ est un sev de $E^*$ non réduit à ${0}$ stable par tous les éléments de $trans(cal(A))$, par suite $trans(cal(A)) dot phi = E^* quad qed$
  ]

  #lemme()[
    Si l'on dispose de $u in cal(A)$ de rang $r >= 2$ alors on dispose de $u' in cal(A)$ non nul tel que $"rg"(u') < r$.

    On dispose donc de $u in cal(A)$ tel que $"rg"(u) = 1$
  ]

  #preuve()[
    On note $pi.alt, theta.alt in u(E)$ tels que $(pi.alt, theta.alt)$ soit libre. On note $x, y in E$ tels que $u(x) = pi.alt$ et $u(y) = theta.alt$. Comme $pi.alt != 0$, $cal(A) dot pi.alt = E$, on dispose donc
    de $v in cal(A)$ tel que $v(pi.alt) = y$.

    On remarque que $u(E)$ est stable par $u compose v$, on note $psi$ l'endomorphisme induit. Comme $CC$ est algébriquement clos, on dispose de $lambda in CC$ tel que $chi_psi (lambda) = 0$. Par suite, $psi - lambda id_u(E)$ n'est pas injective et
    $
      (psi - lambda id_u(E))(pi.alt) = u(v(pi.alt)) - lambda pi.alt = theta.alt - lambda pi.alt != 0
    $
    Ainsi, $u' := u compose v compose u - lambda u$ est non nul et vérifie $"rg"(u') < "rg"(u) quad qed$

  ]

  #lemme()[
    $cal(A)$ contient tous les endomorphismes de rang 1.
  ]
  #preuve()[
    Soit $u in cal(L)(E)$ de rang $1$. Alors on dipose de $cal(l) in E^* \\ {0}$ et $y in E \\ {0}$ tel que:
    pour tout $x in E, u(x) = cal(l)(x) y$

    On note $u in cal(A)$ de rang 1 grâce au lemme précédent et $v in cal(L)(E)$ un endomorphisme de rang 1 quelquonque. On dispose donc de $cal(l), cal(l') in E^* \\ {0}$ et $y, y' in E \\ {0}$ tels que pour tout $x in E$, $u(x) = cal(l)(x)y$ et $v(x) = cal(l')(x)y'$

    Comme $cal(A) dot y = E$, on dipose de $alpha in cal(A)$ tel que $alpha(y) = y'$. De même comme $trans(cal(A)) dot cal(l) = E^*$ on dispose de $beta in cal(A)$ tel que $cal(l) compose beta = cal(l')$
    \
    Par suite, pour $x in E, alpha compose u compose beta (x) = cal(l)(beta(x))alpha(y) = cal(l')(x)y' = v(x)$. Ainsi $v in cal(A)$. \
    Vrai pour tout $v$ donc $cal(A)$ contient tous les endomorphismes de rang $1 quad qed$
  ]

  Finalement, $cal(A)$ contient tous les endomorphisme de rang 1, si l'on note $(e_1, ..., e_n)$ une base de $E$ et pour $i in [|1, n|]$ $pi_i$ le projecteur sur $cl e_i cr$ parrallémélent a $cl e_1, ... e_(i-1), e_(i + 1), ..., e_n cr$, pour $u in cal(L)(E)$, on a:
  $
    forall i in [|1, n|], pi_i compose u in cal(A) \
    u = sum_(i = 1)^n pi_i compose u
  $
  Soit finalement $u in cal(A)$. Vrai pour tout $u$ donc:
  $
    cal(A) = cal(L)(E) quad qed
  $


]



