**FP Computation**

$UFP=(\text{inputs}\times4)+(\text{outputs}\times5)+(\text{inquiries}\times4)+(\text{files}\times10)+(\text{interfaces}\times10)$ 
Scale $S$ varies from 0 to 5.
$F$ is calculated as $F=14\times S$
Complexity Adjustment Factor $CAF=0.65+(0.01\times F)$
Final Function Point = $FP=CAF\times UFP$

---
**General Form of Basic COCOMO**
$\text{Effort}=a_1\times (KLOC)^{a_2} PM$ 
$Time_{dev}=b_1\times \text{Effort}^{b_2} \text{ months}$
$\text {Cost}=Effort\times \text{ Cost per month} = 91\times 15k = 1,465k$

---
##### Risk Assesment
Likelihood of risk becoming real (r)
Consequence of problems associated with that risk (s)
$p=r*s$

---
Gunning's Fog Index
	$\large F=0.4\times\frac{\text{Number of Words}}{\text{Number of Sentences}}+\text{Percentage}(words\ge3 Syllables)$

---
#### Error Seeding
Artificially created errors are introduced to systema and then testing is carried out to tet the error detection
* N is total errors, n found by testing
* S is total number of seeded errors, s is detected seeded errors
* Remaining Defects
  $N-n=n((S-s)/s)$

---
Corrective:Adaptive:Perfective = 22:28:50

---
#### Halstead's Software Science
$n_1$ = number of unique operators
$n_2$ = number of unique operands
N1 = total operators
N2 = total operands

Length N = N1+N2
Vocabulary $n$= $n_1+n_2$

Volume V = N $log_2\ n$ is minumum no of bits
$V^*$ = Potential mimum volume = $(2+n_2^*)\times log_2\ (2+n_2^*)$
Program Level L = $V^*/$ V
Language Level $\lambda = L^2\times V$ 
Effort E = V/L = $V^2/V^*$
Time T = E/S where S is speed of mental discriminations

Estimated Length N = $n_1log\ n_1+ n_2log\ n_2$
