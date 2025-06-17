#import "../lib.typ": * 
#show: tmpl


#question[
#underline[* Définitions *]

+ #underline[Action de groupe]:
On appelle action de groupe d'un groupe $(G, star)$ sur un ensemble $X$ une application $dot: G times X arrow.r.long X$ vérifiant :
$ (i) & forall x in X, e dot x = x \ (i i) & forall (g, h) in G^2, g dot (h dot x) = (g star h) dot x $

+ #underline[Orbite]
Soient $G$ un groupe, $X$ un ensemble et $dot$ une action de groupe de $G$ sur $X$.
On appelle orbite de $x in X$ l'ensemble $ O(x) = {g dot x; g in G} $


#underline[Produit semi direct]
Soient $G, H$ deux groupes et $f$ un morphisme de $H$ dans $"Aut"(G)$.
On appelle produit semi-direct de $G$ par $H$ relativement à $f$ l'ensemble $K = G times H$ muni de la structure de groupe :
$(g_1, h_1) (g_2, h_2) = (g_1 f(h_1)(g_2), h_1 h_2$

Ce groupe est noté $G times.r_f H$ ou $G times.r H$

]

=== Un isomorphisme - $baby$

#question[On prend
$ 
UU_oo := union.big_(n in NN) UU_n $

Montrer que $UU_infinity$ est isomorphe en tant que groupe à $QQ\/ZZ$
]
=== 42 ! - $moyai$

#question[
  Soit $G$ un groupe d'ordre $42$. Montrer que $G$ admet un sous groupe d'ordre $6$.
]

#indic[
  Utiliser les théorèmes de Sylow, et éventuellement un produit semi-direct.
]

=== $horn + tree = oo$ - $baby$

#question[Montrer qu'un corps algébriquement clos est nécessairement infini.]

=== Deux espaces matriciels - $baby monkey$

#question[Montrer que $cal(M)_(n m)(RR)$ et $cal(M)_n (cal(M)_m (RR))$ sont isomorphes en tant que $RR$-algèbre.]

=== Crucialement radical - $gorilla$

#question[Montrer que pour $n in NN \\ {0, 1}$
$
sum_(k = 0)^n sqrt(k) in.not QQ
$
]

#indic[
  Prendre $p_1, dots , p_n$ les $n$ premier nombre premier et considérer $QQ[sqrt(p_1), dots, sqrt(p_n)]$ 
]


=== Des groupes pour compter des dés - $mushroom$

#question[
  Soit $n >= 1$. On se place dans l'espace vectoriel $RR^n$ muni de sa structure euclidienne canonique.
\
  On appelle hypercube l'ensemble $C = {-1, 1}^n$.
  
  On note $G$ le groupe des isométries qui fixent $C$, c'est à dire $ G = {f in cal(L)(RR^n) | f(C) = C} $

  1) Montrer que $G$ est isomorphe à $UU_2^n times.r frak(S)_ n $.
\

  2) On appelle facette de $C$ une face de dimension $n - 1$. On admet qu'il y en a $2n$.
  Calculer le nombre de manières de numéroter les facettes d'un dé hypercubique de dimension $n$ par $eintl 1; 2n eintr$ de manière injective, à isométrie près.

  On pourra admettre que le groupe des isométries qui fixent les facettes de $C$ est $G$.

  \
  3) $ambulance$ Pour $k in eintl 1; n - 2 eintr$, calculer le nombre de manières de numéroter les $k$-faces d'un dé hypercubique de dimension $n$ de manière injective et à isométrie près.
]

#indic[
  1) Construire un isomorphisme

  2) Assimiler les faces à $UU_2 times eintl 1; n eintr$ et remarquer que compter le nombre d'étiquetage modulo isométrie correspond à compter le nombre d'orbites sous l'action de $G$.
]

#correction[
  1) On note $(e_1, dots.c, e_n)$ la base canonique de $RR^n$.

  Construisons un isomorphisme $phi$ de $G$ dans le produit semi-direct $UU_2^n times.r frak(S)_n$.

  #underline[Construction de $phi$] : Soit $f in G$
  \ Pour tout $i in eintl 1; n eintr$, comme $f in G$, il existe $a_1, dots.c, a_n, b_1, dots.c, b_n in UU_2$ tels que:
  $ f vec(1, dots.v, 1) = sum_(k=1)^n a_k e_k quad "et" quad f vec(1, dots.v, 1, -1, 1, dots.v, 1) = sum_(k=1)^n b_k e_k $

  Par différence, $ 2 f(e_i) = sum_(k=1)^n (a_k - b_k) e_k $

  S'il existe plusieurs $k$ tels que $a_k - b_k != 0$, alors $norm(f(e_i)) >= 2$, ce qui n'est pas possible car $f$ est une isométrie.

  Donc il existe un unique $j_i in eintl 1; n eintr$ tel que $a_(j_i) - b_(j_i) != 0$.\
  En posant $c_i = (a_(j_i) - b_(j_i)) / 2 in UU_2$, on a $f(e_i) = c_i e_(j_i)$
\
\
  Comme $f(RR^n)=RR^n$, $(f(e_1), dots.c, f(e_n))$ est une base de $RR^n$.\
  Donc les $j_i$ sont tous distincts.

  Il existe donc $sigma in frak(S)_n$ telle que pour tout $i in eintl 1; n eintr$, $i = sigma(j_i)$ \ 
  On pose $beta_i = c_(sigma(i))$.

  \
  Alors, pour tout $i in eintl 1; n eintr$, $f(e_i) = beta_(sigma^(-1)(i)) e_(sigma^(-1)(i))$

  \
  On pose $phi(f) := ((beta_1, dots.c, beta_n), sigma^(-1))$.

  \
  \
  #underline[Vérification que $phi$ est un isomorphisme] :
  - Soient $f, g in G$. On pose $((beta_1, dots.c, beta_n), sigma^(-1)) = phi(f) quad "et" quad ((gamma_1, dots.c, gamma_n), pi^(-1)) = phi(g)$ \
    Pour tout $i in eintl 1; n eintr$, $f compose g(e_i) = f(gamma_(pi^(-1)(i)) e_(pi^(-1)(i))) = gamma_(pi^(-1)(i)) beta_(sigma^(-1)(pi^(-1)(i))) e_(sigma^(-1)(pi^(-1)(i)))$\
    Donc $phi(f compose g) = ((beta_1 gamma_(sigma(1)), dots.c, beta_n gamma_(sigma(n))), sigma^(-1) pi^(-1)) = phi(f)phi(g)$
  
    $phi$ est bien un morphisme.

  - Pour $((beta_1, dots.c, beta_n), sigma^(-1)) in UU_2^n times frak(S)_n$, on vérifie aisément que l'application définie par $f(e_i) = beta_(sigma^(-1)(i)) e_(sigma^(-1)(i))$ est une ismétrie de $G$.\
    Donc $phi$ est surjective.

  - Si $phi(f) = ((1, dots.c, 1), id)$, alors pour tout $i in eintl 1; n eintr$, $f(e_i)=e_i$. \
    Donc $f = id_(RR^n)$.
    \
    \
    $ker phi = {id_(RR^n)}$ donc $phi$ est injective.


  \
  Finalement, $phi$ est un isomorphisme de $G$ dans $UU_2^n times.r frak(S)_n$.

  \ Donc $G tilde.eq UU_2^n times.r frak(S)_n$


\ \
  2) On repère la face inclue dans  l'hyperplan d'équation $x_i = a$ par $(a, i) in UU_2 times eintl 1; n eintr$.
  \
  Alors, un étiquetage des faces est une application bijective de $UU_2 times eintl 1; n eintr$ dans $eintl 1; 2 n eintr$
  
  Les isométries de $UU_2^n times.r frak(S)_n tilde.eq G$ agissent alors sur $E := "Bij"(F)(UU_2 times eintl 1; n eintr, eintl 1; 2 n eintr)$ par : 
  $ ((beta_1, dots.c, beta_n), sigma^(-1)) dot f = ((a, i) mapsto.long f(a beta_(sigma^(-1)(i)), sigma^(-1)(i))) $

  \
  Chercher le nombre d'étiquetages modulo isométrie revient à chercher le nombre d'orbites de $E$ sous l'action de $UU_2 times.r frak(S)_n$.
  \ \
  Or, pour $f in E$, si $g_1 = ((beta_1, dots.c, beta_n), sigma^(-1)) in UU_2^n times.r frak(S)_n$ et $g_2 = ((gamma_1, dots.c, gamma_n), pi^(-1)) in UU_2^n times.r frak(S)_n$ sont telles que $g_1 dot f = g_2 dot f$, alors
  $ forall i in eintl 1; n eintr, cases(beta_(sigma^(-1)(i)) = gamma_(pi^(-1)(i)), sigma^(-1)(i) = pi^(-1)(i)) $
  \ Donc $g_1 = g_2$.

  La fonction définie sur $UU_2^n times.r frak(S)_n$ par $g mapsto g dot f$ est injective donc $|O(f)| = |UU_2^n times.r frak(S)_n| = 2^n n!$

  \
  \
  Comme $E = limits(union.sq.big)_(f in E\/(UU_2^n times.r frak(S)_n)) O(f)$, on a $|E| = |E\/(UU_2^n times.r frak(S)_n)| times 2^n n!$

  Or, $|E| = (2n)!$

  Le nombre d'orbites est donc $(2n)!/(2^n n!)$


  Il y a $(2 n)!/(2^n n!)$ manières d'étiqueter les facettes d'un hypercube de manière injective par $eintl 1; 2 n eintr$ modulo isométrie.
]

