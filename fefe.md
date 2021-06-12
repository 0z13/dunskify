Author: Jonathan Zielinski
Title : Geom afl 5; genafl.

Aligned { replace:"~Math&nl;\begin{aligned}&nl;&source;&nl;\end{aligned}&nl;~" }

[TITLE] 

Lad fladen $\sigma : \mathbb{R}^2 \to \mathbb{R}^3$ være givet ved 

~ Math 
 \sigma(u,v) = (u, uv - v, u^2v).
~

### a) Vis, at $\sigma$ parametriserer løsninger til ligningen $x^2y - xz + z =  0$ {-}


$\sigma(u,v)$ er en løsning til ligningen for alle $(u,v) \in \mathbb{R}^2$, og at enhver løsning kan skrives på denne måde.

Fladen $\sigma(u,v)$ kan parametrisere, x og y for ligningen ved
$u=x$, og $v= \frac{y}{x-1}$. Det ses at ved disse valg vil første koorinaten
være $x$, og anden koordinaten vil forkorte til y.


### b) Gør rede for, at $\sigma$ er en regulær flade og bestem for ethvert $p = (u, v) \in \mathbb{R}^2$ en normalvektor $(\neq (0,0,0))$ til $T_p \sigma$. Vis at $T_p \sigma = (e_1, e_3)$, hvis og kun hvis $p = (1,0)$. {-}

~ Math 
 \sigma'_v \times \sigma'_u =  (0, u - 1, u^2) \times (1, v, 2uv) = (-2 u v + u^2 v, u^2, 1 - u) \neq 0
~
Fladen er regulær for alle $p \in \mathbb{R}^2$. Desuden er vektoren normalvektor til $T_p\sigma$. I tilfældet hvor $p = (1,0)$, 

~ Math 
 \sigma'_v = (0,0,1)
~

~ Math 
 \sigma'_u = (1,0,0)
~

ser vi at vektorene i tangentrummet udspænder de to enhedsvektore $e_1 =
(1,0,0)$ og $e_3=(0,0,1)$.

### c) Lad nu $p = (1,0)$. Bestem komponenterne $E,F,G$ og $L,M,N$ af den første og anden anden fundamentalform for $\sigma$ i p.{-}

Komponenterne til den første fundamentalform i $p=(1,0)$ er,

~ Aligned 
E(u,v) &= ||\sigma'_u(p)||^2 = ||(1, v, 2 u v)||^2 = \left(\sqrt{1 + v^2 + 4 (u v)^2}\right)^2 \\
E(p)  &= 1,
~

~ Aligned 
G(u,v) &= ||\sigma'_v(p)||^2 = ||( 0, u-1, u^2)||^2 = \left(\sqrt{(-1 + u)^2 +
u^4}\right)^2 \\
G(p) &= 1,
~

~ Aligned  
F(u,v) &= \sigma'_u(p) \cdot \sigma'_v(p) = (0, v(u-1), u^2 \cdot 2uv) \\
F(p) & = 0 
~


Komponenterne til den anden fundamentale form $p=(1,0)$ findes så,
~ Math 
|(-2 u v + u^2 v, u^2, 1 - u)||  = 1
~
~ Math 
det[\sigma'_u\sigma'_v \sigma''_{uv}] = 
det
\begin{pmatrix}
1 &   0  & 0 \\
v &   u-1 &   1  \\
2uv & u^2 &   2u 
\end{pmatrix}
= 
u(u - 2)
~

~ Math 
det[\sigma'_u\sigma'_v \sigma''_{vv}] = 
det
\begin{pmatrix}
1 &   0  &  \\
v &   u-1 &   0  \\
2uv & u^2 &   0 
\end{pmatrix}
= 
0
~

~ Math 
det[\sigma'_u\sigma'_v \sigma''_{uu}] = 
det
\begin{pmatrix}
1 &   0  & 0 \\
v &   u-1 &   0  \\
2uv & u^2 &   2v 
\end{pmatrix}
= 
2v(u - 1)
~


~ Math 
L &= \mathbf{N} \cdot \sigma''_uu = \frac{det[\sigma'_u\sigma'_v
\sigma''_{uu}]}{||\sigma'_u \times \sigma'_v||} = \frac{0}{0}= 0  

 
~

~ Math 
M &= \mathbf{N} \cdot \sigma''_{uv} = \frac{det[\sigma'_u\sigma'_v
\sigma''_{uv}]}{||\sigma'_u \times \sigma'_v||} = \frac{-2}{1}  = -2

 \\
~

~ Math 
N &= \mathbf{N} \cdot \sigma''_{vv} = \frac{det[\sigma'_u\sigma'_v
\sigma''_{vv}]}{||\sigma'_u \times \sigma'_v||}  = \frac{0}{1}  =
0
~

### d) Bestem hovedkrumningerne $\kappa_1$ $\kappa_2$ i (det samme punkt) p og tilhørende hovedkrumningsretninger i $T_p\sigma$. {-}


Hovedkrumningerne $\kappa_1$ og $\kappa_2$ er rødderne til 

~ Math 
det \left(
\begin{pmatrix}
E &   F \\
F &   G
\end{pmatrix}
^{-1}
\begin{pmatrix}
L & M \\
M & N 
\end{pmatrix}
-k 
\begin{pmatrix}
1 & 0 \\
0 & 1 
\end{pmatrix}
\right),
~


Eftersom 

~ Math 
\begin{pmatrix}
E &   F \\
F &   G
\end{pmatrix} 
=
\begin{pmatrix}
1 &   0 \\
0 &   1
\end{pmatrix}
=
\begin{pmatrix}
E &   F \\
F &   G
\end{pmatrix}^{-1}
~

Ender vi med følgende regnestykke. Vi starter med at multiplicere
matricerne,

~ Math 
det \left( 
\begin{pmatrix}
0 & -2 \\
-2 & 0 
\end{pmatrix}
-k
\begin{pmatrix}
1 & 0 \\
0 & 1 
\end{pmatrix}
\right)
= 
k^2-4
~

Hvor rødderne naturligvis er hhv $\kappa_1 = 2$
og $\kappa_2 = -2$. Eigenværdierne beskriver hovedkrumningerne, og deres
retninger beskrives af vektorene $v_1 = (1,1)$ og $v_2 = (-1,1)$.



