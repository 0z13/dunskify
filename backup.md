Author: Jonathan Zielinski
Title : Geom: Opgave 2; Reafl.
Title Running: True

Aligned { replace:"~Math&nl;\begin{aligned}&nl;&source;&nl;\end{aligned}&nl;~" }

[TITLE] 

Vi betragter $\sigma : \mathbb{R} \to \mathbb{R}$.

~ Aligned
\sigma(u,v) &= (u, u + v, (u+v)^2) \\
~

# I WILL PASS THIS ASSIGNMENT. GARANTEED.
# AND I WILL DO A LITTLE BIT OF WORK ON THE NEXT ONE.

### a) Goer rede for, at $\sigma$ er en glat flade og beregn $\sigma'_{u}$ og $\sigma'_{v}$ i ethvert punkt (u,v)  {-}

Vi regner de to gradienter:

~ Aligned 
  \sigma_{u}' &= (1, 1, 2(u+v)) \\
~

~ Aligned
  \sigma_{v}' &= (0, 1, 2(u+v)) \\
~

De to vektore er soejler i jacobi-matricen.

~ Math 
  D\sigma &= 
  \begin{pmatrix}
    1 & 1 \\ 
    1 & 0 \\
    2(u+v)  & 2(u+v) \\
  \end{pmatrix}
~

Desuden er fladen $\sigma$ glat, da samtlige funktioner i $\sigma$ er kendte kontinuerte funktioner.


fact check and anti-bullshit on this one please!

### b) Vis at $\sigma$ er en regulaer flade og bestem enhedsnormalvektor i hvert punkt. {-}

Vi ved at regulaeritets betingelsen svare til $\sigma_{u}' \times \sigma_{v}' \neq 0$ (fra def. 2.1.3)

~ Aligned
 \sigma_{u}' \times \sigma_{v}' &=
 \left( \begin{vmatrix} 
         1 &  1 \\
         2(u+v) & 2(u+v)
        \end{vmatrix} 
        , -
        \begin{vmatrix}
        1  &  0 \\
        2(u+v) & 2(u+v)
        \end{vmatrix}
        ,
        \begin{vmatrix}
        1  &  0 \\
        1  & 1 
        \end{vmatrix}
        \right)
 \\
 \sigma_{u}' \times \sigma_{v}' &= 4(u+v)^2 + 1
~
Siden $\sigma_{u}' \times \sigma_{v}' \geq 1$ er fladen regulaer for alle $p \in \mathbb{R}$. Eftersom $\sigma$ er regulaer, kan vi finde enhedsnormalvektoren.

~ Aligned
\mathbf{N} = \mathbf{N}(p) &= \frac{\sigma_{u}' \times \sigma_{v}'}{||\sigma_{u}' \times \sigma_{v}'||} \\
&= \frac{4(u+v)^2 + 1}{||1 + 4(u + v)^2||}  
~
Da $p \in \mathbb{R}$ og $\sigma_{u}' \times \sigma_{v}' > 0$, kan man sige $\mathbf{N}(p) = 1$, eller at orienteringen bevares.

### c) Vis at vektoren (2,1,0) tilhoerer tangentrummet $T_{(0,0)}\sigma$ og angiv en kurve $\gamma(t) = \sigma(\mu(t))$ paa $\sigma$, saaledes at $\gamma(0) = (0,0,0)$ og $\gamma'(0) = (2,1,0)$. {-}

Der vises foerst at vektoren (2,1,0) er en del af $T_{(0,0)}\sigma$. V er en linearkombination af $T_{\sigma}p = \text{Span}((1,1,2(u+v)), (1,0,2(u+v)))$ evalueret ved $(0,0)$

~ Aligned 
 v &=  
  \sigma_{u}'(0,0)
  +
  \sigma_{v}'(0,0)
  &= 
 \begin{pmatrix}
 1 \\
 1 \\
 0
 \end{pmatrix}
 +
 \begin{pmatrix}
 1 \\
 0 \\
 0
 \end{pmatrix}
 &= (2,1,0)
~

En kurve der opfylder betingelserne sammensat med $\sigma$ er $\gamma(t) = (2t, t)$. 

### d) Goer rede for, at vektoren $v = (1,0,2)$ ikke tilhoerer tangentrummet $T_{p}\sigma$ for noget $p \in \mathbb{R}^2$ {-}

Eftersom $T_{p}\sigma$ er et lineart subspace af \mathbb{R}^3, kan vektoren med
z koordinat = 2, ikke vaere en del af tangentrummet. Hvis man forsoeger at
opstille en en linear kombination, vil man ikke kunne finde en sum af to multiplum
af to som giver 2. 

