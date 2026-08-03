#import "../lib.typ": *
#show: tmpl

== Combinatoire

=== Merci Frank !

#question[
  Une partie $M$ de $RR$ est dite *spéciale* ssi : \
  - $"pour tous" x, y in M "distincts", "exactement un nombre parmi" x y "et" x + y "est rationnel"$\
  - $"pour tout" x in M, x^2 in.not QQ$

  Quel est le cardinal maximum possible d'une partie spéciale de $RR$ ?
]


#indic[

  Pour trouver une majoration, prendre $M$ spéciale, et considérer le graphe (non-orienté) complet arête-bicolore $G_M$ dont l'ensemble des sommets est $M$, et ${x, y}$ est rouge ssi $x y in QQ$
]

#correction[
  Commençons par établir la majoration $abs(M) <= 4$.

  $triangle.r$ Soit $M$ spéciale. Considérons le graphe complet arête-bicolore $G_M = (M, rho)$, $rho({x, y}) = delta_{x y in QQ}$.

  Supposons par l'absurde l'existance d'un cycle $x_0 x_1 dots.c x_(2 n) x_(2 n + 1) = x_0$ monochrome de longueur impaire.

  $"  "$ cas 1: $x_i x_(i + 1) in QQ$ pour tout $i$.\
  $"      "$ Alors, $x_0^2 = (x_0 x_1) times 1/(x_1 x_2) times (x_2 x_3) times dots.c times (x_(2 n) x_(2 n + 1) ) in QQ$.

  $"  "$ cas 2: $x_i + x_(i + 1) in QQ$ pour tout $i$.\
  $"      "$ Alors, $2x_0 = (x_0 + x_1) - (x_1 + x_2) + (x_2 + x_3) - dots.c + (x_(2 n) + x_(2 n + 1) ) in QQ$.

  Ces deux cas contredisent (ii) donc $G_M$ n'a pas de cycle monochrome de longueur impaire.

  \ \
  En particulier, $G_M$ ne contient pas de triangle monochrome, donc possède au plus 5 sommets.

  De plus, il existe l'unique graphe (à isomorphisme près) complet arête-bicolore sans triangle monochromatique est le suivant :
  #figure(image("graphe_pentagone_bicolore.svg"))

  Ce graphe possède un 5-cycle monochrome, ce qui est interdit.

  Finalement, $abs(M) <= 5$ et $abs(M) != 5$ donc $abs(M) <= 4$
  #align(right)[$triangle.l$]


  Pour conclure, il suffit de trouver un ensemble spécial à $4$ élément.
  Il me semble que le plus simple est $M = {plus.minus 1 + sqrt(2), plus.minus 2 - sqrt(2)}$
]
