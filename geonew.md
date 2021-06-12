Author: Jonathan Zielinski
Title : Geom afl 4; genafl.

Aligned { replace:"~Math&nl;\begin{aligned}&nl;&source;&nl;\end{aligned}&nl;~" }

[TITLE] 

Lad $ \gamma : \mathbb{R} \to \mathbb{R}^3$ være givet ved 

~ Math 
  \gamma(t) = (t, t^2 + t^3, t^4-t^2),
~

og lad
~ Math 
\Pi =  {(x,y,z) \in \mathbb{R}^3 : y + z = 0}.
~


### a. Gør rede for, at $\gamma$ er en regulær kurve og beregn dens krumning i $t = 0$ {-}

Først differentiere vi vektorfunktionen 

~ Math 
 \gamma'(t) = (1, 2t + 3t^2, 4t^3 - 2t),
~

eftersom $\gamma'(t) \neq (0,0,0)$ er kurven regulær i $\mathbb{R}$. Krumningen $\kappa(t)$ i $t = 0$ findes,

~ Equation 
 \kappa(t) = || \gamma''(t) || = \left(\sqrt{0}\right)^2 + \left(\sqrt{2 + 6t}\right)^2 + \left(\sqrt{12t^2 - 2}\right)^2\ = 12t^2 + 6t + 4,
~

De ses at $\kappa(0) = 4$. Det er eftersom $\gamma(t)$ har enhedslængde at (1) gælder.


### b. Bestem de værdier af t, for hvilke $\gamma'(t)$ er indeholdt i planen $\Pi$ {-}

Vektoren $\gamma'(t)$ vil ligge i fladen $\Pi$, hvis den er vinkelret med fladens normalvektor. Planen givet ved formen $ax + by + cz = d$ ved vi har normalvektor $(a,b,c)$, så normalvektor til $\Pi$ må være

~ Math 
\Pi_N(t) =  (0, 1, 1).
~

Vi finder nu prikproduktet mellem normalvektoren og $\gamma'(t)$,

~ Math 
 \gamma'(t) \times \Pi_N(t) = (1, 2t+3t^2,-2t+4t^3) \times (0,1,1) = (4 t + 3 t^2 - 4 t^3, -1, 1)
~

Hvor prikproduktet $\gamma'(t) \times \Pi_N(t)$  bestemmer de værdier af $t$ hvor $\gamma'(t)$ er indeholdt i planen
### c. Bestem de værdier af t, for hvilke den osculerende plan til $\gamma$ er parallel med $\Pi$. {-}


Vi ved at to planer er parallelle hvis og kun hvis deres normalvektorer er proportionale. Vi er derfor primært interesserede i normalvektoren til den osculerende flade. Normalvektoren til den oskulerende flade i et punkt er naturligvis binormal vektoren $\mathbf{b}(s)$ som vi finder nu,

~ Math 
\mathbf{n}(s) =  \frac{\gamma''(s)}{||\gamma''(s)||}  =
\frac{(0,2+6t,-2+12^2)}{||(0,2+6t,-2+12^2)||} = \left(0, \frac{2 + 6 t}{\sqrt{20164 + (2 + 6 t)^2}}, \frac{142}{\sqrt{20164 + (2 + 6 t)^2}} \right)
~

~ Math 
\mathbf{b}(s) =  \mathbf{t}(s) \times \mathbf{n}(s) = (1, 2t+3t^2, 2t +4t^3)
\times \left(0, \frac{2 + 6 t}{\sqrt{20164 + (2 + 6 t)^2}}, \frac{142}{\sqrt{20164 + (2 + 6 t)^2}} \right)
~
~ Aligned 
 \mathbf{b}(s) = (\frac{288t}{\sqrt{20164 + (2 + 6 t)^2}} - \frac{438 t^2}{\sqrt{20164 + (2 + 6 t)^2}} + \frac{6t^2}{\sqrt{20164 + (2 + 6 t)^2}} \\
 + \frac{18 t^4}{\sqrt{20164 + (2 + 6 t)^2}},  
 \frac{142}{\sqrt{20164 + (2 + 6 t)^2}}, \frac{-2}{\sqrt{20164 + (2 + 6 t)^2}} - \frac{6t}{\sqrt{20164 + (2+6t)^2}})
~

Så for de værdier af $t$ hvor $\mathbf{b}(s)$ og $\Pi$ er proportionale, vil de
to flade også være paralelle.

### d. Beregen torsionen af $\gamma$ i $t = 1$ {-}

Vi beregner torsionen ved 

~ Math 
\tau(t) = \frac{det[\gamma'(t) \gamma''(t) \gamma'''(t)]}{||\gamma'(t) \times \gamma''(t)||^2 },
~

og finder først at $\gamma'''(t) = (0,6,24t)$, og ser dernæst at determinaten $det[\gamma'(t) \gamma''(t) \gamma'''(t)]$ er givet ved

~ Math 
det[\gamma'(t) \gamma''(t) \gamma'''(t)] = 
\begin{pmatrix}
1            & 0           & 0        \\
2t+3t^2      & 2+6t        & 6        \\
2t + 4t^3    & -2 + 12t^2  & 24t
\end{pmatrix}
=
(2+6t)24t - (-2+12t^2)6
=
48t+72t^2+12
~

Prikproduktet $\gamma'(t) \times \gamma''(t)$ er regnes til

~ Math 
  ||\gamma'(t) \times \gamma''(t)||= \sqrt{(2 + 6 t)^2 + (2 - 12 t^2)^2 + (-8 t - 18 t^2 + 16 t^3 + 12 t^4)^2},
~

vi lader nu $t=1$ og regner $\tau(t)$,

~ Math 
 \tau(t)=  \frac{48+72+12}{2\sqrt{42}} =  11\sqrt{\frac{6}{7}}}.
~

