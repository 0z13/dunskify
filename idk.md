Author: Jonathan Zielinski
Title : An1: Opgave 1 
Title Running: True

Aligned { replace:"~Math&nl;\begin{aligned}&nl;&source;&nl;\end{aligned}&nl;~" }

[TITLE] 

## Opgave 1.1 {-}

Lad $z \in \mathbb{C}$ vaere givet ved  

~ Math 
  z = \sqrt{3} \frac{5}{12} + i\frac{5}{12}
~
Vi faar saa givet foelgen $\{a_n\}_n\in\mathbb{N}$ ved $(b \cdot z)^n$, hvor $b \in
\mathbb{R}$. 


### a) {-}


Vi leder efter polarformen af $z$, $z^3$ og $z^6$. Derefter viser vi $z^6$ er
reel. Modulus for $z$ regnes

~ Aligned 
  |z| &= \sqrt{(\sqrt{3} \frac{5}{12})^2   (\frac{5}{12})^2} = \frac{5}{6}
~
Nu finder vi argumentet

~ Aligned
  \cos \theta &= \frac{\sqrt{3} \frac{5}{12}}{\frac{5}{6}} = 
  \frac{\sqrt{3}}{2} \\
  \sin \theta &= \frac{\frac{5}{12}}{\frac{5}{6}} = \frac{1}{2} 
~

De to tal evalueres ved enhedscirklen og vi finder at $\theta =
\frac{\pi}{6}$, og at polarformen er

~ Math
  z = \frac{5}{6}(\cos \frac{\pi}{6} + \sin \frac{\pi}{6})
~

Saa $z^3$ og $z^6$ gives ved

~ Aligned
z^3 &= \frac{5}{6} \cdot 3(\cos (\frac{\pi}{6})^3 + \sin (\frac{\pi}{6})^3) \\
~

~ Aligned
z^6 &= \frac{5}{6} \cdot 6(\cos (\frac{\pi}{6})^6 + \sin (\frac{\pi}{6})^6) \\
~

Det kan ses at $z^6 \in \mathbb{R}$ saaledes, vi betragter $z^6$,
nu ikke paa polarformen. Foerst sammensaettes broeken

~ Aligned
  z^6 = \left( \sqrt{3} \frac{5}{12} + i\frac{5}{12} \right)^6 = \left(\frac{5(\sqrt{3} + 5i)}{12}\right)^6
~

Vi fordeler eksponenten

~ Aligned
  z^6 = \left(\frac{5^6 (\sqrt{3} + 5i)^6}{12^6}\right)
~
Og kigger nu paa den imaginaere del af udtrykket

~ Aligned
 (\sqrt{3} + 5i)^6 = ((\sqrt{3} + 5i)(\sqrt{3} + 5i)^2)^2 = (4i \cdot 2)^2 =
 8i^2 = -64
~
Derfor maa $z^6 \in \mathbb{R}$. Hvilket vel er tilfaeldet for hvert multiplum
af to.
### b)  {-}

Et udtryk for $|\{a_n\}|$ kunne vaere:

~ Aligned
|\{a_n\}| = (\frac{5}{6}b)^2
~

### c) {-}

Vi ved at en kompleks talfoelge kun konvegere naar $|z| < 1$, hvor foelgen gaar
mod 0, og i det tilfaelde $z = 1$, hvor foelgen mod 1. Vi leder efter
de $b \in \mathbb{R}$ hvor det er tilfaeldet. 

## Opgave 1.2 {-}
En foelge er givet ved

~ Math
 \{a_n\} = \frac{1}{n^2} - \frac{1}{(n+1)^2}
~

### a) {-}

Foelgen ${\{a_n\}$ konvegere mod 0 eftersom

~ Math
\{a_n\} = \frac{1}{n^2} - \frac{1}{(n+1)^2} = \frac{(n+1)^2 - n^2}{n^2(n+1)^2} =
\frac{1+2n}{n^2(n+1)^2}
~
Vi ved fra oevelserne at $\{a_n\} \to 0$ som $n \to \infty$, eftersom naevneren
vokser en stoerrelsesorden hurtigere.

Nu betragtes $\{n^2a_n\}$, som ogsaa konvegere mod 0.

~ Aligned 
  \{n^2a_n\} = \frac{n^2}{n^2} - \frac{n^2}{(n+1)^2} = 1 - \frac{n^2}{(n+1)^2}
~ 

Eftersom  $\frac{n^2}{(n+1)^2} \to 1$, igen et udtryk vi har set foer, som $n \to \infty$, vil $\{n^2 a_n\}$ gaa
mod $0$.

### b) {-}

Foelgen $\{a_n n^3\} \to 2 $ naar  $n \to \infty$, hvilket ses let ved at gange
parenteserne ud og forlaenge med den stoerste eksponent.

~ Aligned 
  \{a_n n^3\} &= \frac{n^3}{n^2} - \frac{n^3}{(n+1)^2} \\
  \{a_n n^3\} &= \frac{n^3(n^2+1+2n)-5}{n^2(n+1)^2} \\
  \{a_n n^3\} &= \frac{n^3+2n^4}{n^4+n^2+2n^3} \\
  \{a_n n^3\} &= \frac{n^3/n^4+(2n^4)/n^4}{n^4/n^4+n^2/n^5+2n^3/n^5}
~
Hvis vi betragter taeller og naevner som to foelger, og 
lader $n \to \infty$, finder vi saa ved saetning 1.39 at $\{a_n n^3\}$ konvegere mod 2.

## Opgave 1.3

### a) {-}
Foelgen $\{X_b\}$ nedenunder kreaver $a = [0, \infty)$ for
~ Math
  X_b = \frac{1-ab}{1+ab} 
~

Vi kan saaledes betragte foelgen som en afbildning $f : A \sub
\mathbb{r}} \to \mathbb{r}}$ 

~ Aligned 
   f(a) &= \frac{1-ab}{1+ab}  = \frac{1}{1+ab}  - \frac{ab}{1+ab} \\
~

Vi laegger foerst maerke til at (1 + ab) i foerste led stiger monotont, og
dermed gaar foerste led mod 0, paa samme maade som $1/x$ som vi har set foer, 
det andet led er en kvotient af to lineare stoerrelser og gaar dermed mod 1. 
saetning 1.39 tillader at vi betragter udtrykket ledvis og vi siger at $f(a) \to
-1$ naar $a \to \infty$ 
