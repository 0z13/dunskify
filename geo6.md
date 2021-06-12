Author: Jonathan Zielinski
Title : Geom afl 6.

Aligned { replace:"~Math&nl;\begin{aligned}&nl;&source;&nl;\end{aligned}&nl;~" }

[TITLE] 

Lad $\sigma : \mathbb{R}^2 \to \mathbb{R}^2$ være givet ved 

~ Math 
\sigma(u,v) =   (u+v, v, 2u^2+4uv+v^2-4u-2v+3).
~


### a) Vis, at $\sigma$ er en regulær flade. {-}

Fladen $\sigma$ er regulær hvis de afledte $\sigma'_u$ og $\sigma'_v$ er lineart uafhængige,
hvilket er tilfældet hvis og kun hvis krydsproduktet for de to afledte er
forskelligt fra nul i $p$.

~ Math 
\sigma'_u =  (1, 0, 4(u+v-1))
~ 

~ Math 
\sigma'_v = (1, 1, 2(2u+v-1)) 
~ 

$\sigma'_u \times \sigma'_v = (-4 + 4 u + 4 v, 2 - 2 v, -1)$
hvilket er forskelligt fra 0 for alle $p \in \mathbb{R}^2$ på grund af det additivskift i z-koordinaten.


### b) Beregn matricen for Weingarten afbildningen $W_p$ med hensyn til basen $(\sigma'_u, \sigma'_v)$ i punktet p = (-1,2). {-}  

For at finde Weingarten afbildningen, må vi først finde samtlige komponenter for 1. og 2. fundementalform.  


~ Aligned 
E(p) &= ||\sigma'_u(p)||^2 =  1 
~

~ Aligned 
G(u,v) &= ||\sigma'_v(p)||^2 = 2 + 4 (-1 + -2 + 2)^2 = 6
~

~ Aligned  
F(u,v) &= \sigma'_u(p) \cdot \sigma'_v(p) = 1 
~

Komponenterne til den anden fundamentale form i $p=(-1,2)$ bliver så, 
~ Math 
det[\sigma'_u\sigma'_v \sigma''_{uv}] = 
det
\begin{pmatrix}
1        &      1         &   0 \\
0        &      1         &   0  \\
4(u+v-1) & 2(2u+v-1)      &   4 
\end{pmatrix}
= 
4
~

~ Math 
det[\sigma'_u\sigma'_v \sigma''_{vv}] = 
det
\begin{pmatrix}
1        &      1         &   0 \\
0        &      1         &   0  \\
4(u+v-1) & 2(2u+v-1)      &   2 
\end{pmatrix}
= 
2
~

~ Math 
det[\sigma'_u\sigma'_v \sigma''_{uu}] = 
det
\begin{pmatrix}
1        &      1         &   0 \\
0        &      1         &   0  \\
4(u+v-1) & 2(2u+v-1)      &   4 
\end{pmatrix}
= 
4
~

Normen for krydsproduktet evalueret i $p$ er desuden $\sqrt{1 + (2 - 2 v)^2 + (-4 + 4 u + 4 v)^2} = \sqrt{5}$. Det bruger vi til at finde komponenterne til anden fundementalform og endelig den efterspurgte afbildning.


~ Math 
L &= \mathbf{N} \cdot \sigma''_uu = \frac{det[\sigma'_u\sigma'_v
\sigma''_{uu}]}{||\sigma'_u \times \sigma'_v||} = \frac{4}{\sqrt{5}}
~

~ Math 
M &= \mathbf{N} \cdot \sigma''_{uv} = \frac{det[\sigma'_u\sigma'_v
\sigma''_{uv}]}{||\sigma'_u \times \sigma'_v||} = \frac{2}{\sqrt{5}}
~

~ Math 
N &= \mathbf{N} \cdot \sigma''_{vv} = \frac{det[\sigma'_u\sigma'_v
\sigma''_{vv}]}{||\sigma'_u \times \sigma'_v||}  = \frac{4}{\sqrt{5}}
~

Komponenterne udgør en matrice som repræsentere afbildningen
$W_p : T_p\sigma \to T_p\sigma$

~ Aligned 
W_p &= 
\begin{pmatrix}
E        &      F \\
F        &      G  
\end{pmatrix}^{-1}
\begin{pmatrix}
L        &      M \\
M        &      N  
\end{pmatrix} \\

&=
\begin{pmatrix}
6/5        &      -1/5 \\
-1/5        &      1/5 
\end{pmatrix}
\begin{pmatrix}
\frac{4}{\sqrt{5}}  & \frac{2}{\sqrt{5}}   \\
\frac{2}{\sqrt{5}}  &  \frac{4}{\sqrt{5}} 
\end{pmatrix}
=
\begin{pmatrix}\frac{22}{5\sqrt{5}}&\frac{8}{5\sqrt{5}}\\ -\frac{2}{5\sqrt{5}}&\frac{2}{5\sqrt{5}}\end{pmatrix}

~

### c) Bestem hovedkrumningerne $\kappa_1$ og $\kappa_2$ og Guass krumningen $\kappa$ for $sigma$ i $p$. {-}

Hovedkrumningerne $\kappa_1$ og $\kappa_2$ er rødderne til nedenstaænde
ligning, matricerne sættes ind og determinanten regnes.

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

Som desuden er præcist eigenværdierne for Weitgarten afbildningen, vi finder,
~ Math 
\quad \kappa_1=\frac{2\left(6\sqrt{5}+\sqrt{105}\right)}{25},\:\kappa_2=\frac{2\left(6\sqrt{5}-\sqrt{105}\right)}{25}.
~


Guass krumningen i $p$ er blot produktet af de to hovedkrumninger,

~ Aligned
K(p) &=  \kappa_1 \cdot \kappa_2 \\
K(p) &= \frac{2\left(6\sqrt{5}+\sqrt{105}\right)}{25} \frac{2\left(6\sqrt{5}+\sqrt{105}\right)}{25} = \frac{12\left(19+4\sqrt{21}\right)}{125}.
~
### d) Angiv en enhedsvektor $e \in T_p\sigma$, langs hvilken normalkrumingen er 0. {-}


Vi ved at $e = a\sigma_u' + b\sigma_v'$ betegner enhedsvektoren i det tilfæle
hvor $|e|^2 = 1$. Det kan vi bruge til at opsætte en ligning med to ubekendte, 
~ Aligned 
1 &= |a\sigma'_u + b\sigma'_v|^2 \\
1 &= |(a, 0, 4a) + (b, b, -2b)|^2 = \sqrt{17 a^2 - 14 a b + 6 b^2}
~
Desuden beskriver definition 5.5. s. 83 at $K_n = w \cdot W_p(w) = \lambda$, enhedsvektoren og dens korrosponderende normalkrumning. Det skal derfor også gælde at,

~ Aligned 
 0 &=  (a,b) \cdot 
\begin{pmatrix}\frac{22}{5\sqrt{5}}&\frac{8}{5\sqrt{5}}\\ -\frac{2}{5\sqrt{5}}&\frac{2}{5\sqrt{5}}\end{pmatrix}
\begin{pmatrix}
a  \\
b   
\end{pmatrix}.\\
0 &= (a,b) \cdot \begin{pmatrix}\frac{22a+8b}{5\sqrt{5}}\\ \frac{-2a+2b}{5\sqrt{5}}\end{pmatrix} \\
0 &= \frac{22a^2+6ab+2b^2}{5\sqrt{5}}
~

Vi løser nu vha. maple ligningen sat med to ubekendte og for $a=0$ og $b=0$,
der er nok en regnefejl, eller to, i en af vores ligninger, men hæfter for 
at fremgangsmåden er forsvarlig nok.




