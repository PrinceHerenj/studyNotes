#### Definition
* Used to make meaningful statements about efficiency of an algorithm. Help us make meaningful assumtions.
* The most efficient algorithm is chosen to solve any problem.
* System config ignored. Order of Growth important.

#### Types
$\text{Big O Notation}$ : Upper Bound
$\text{Big }\Omega\text{ Notation}$ : Lower Bound
$\text{Big }\Theta\text{ Notation}$ : Average Bound/ Tight Bound

##### Time Dependency on
Operations
Comparison
Loops
Pointer References
Function calls

##### Space Dependency on
Variable
Data Structure
Allocation
Function calls for storage

#### Precedence of Time Complexity
$1 < log N < sqrt(N) < N < N log N < N^2 < N^3 .. 2^N < 3^N < N^N$

#### $\text{Big O Notation}$
The function $f(N)$ = $O\ g(N)$, if and only if $\exists$ constants c and $n_0$  such that
$f(N)\le c*g(N)\ ,\forall\ n \ge n_0$

#### $\text{Big }\Omega \text{ Notation}$
The function $f(N)$ = $O\ g(N)$, if and only if $\exists$ constants c and $n_0$  such that
$f(N)\ge c*g(N)\ ,\forall\ n \ge n_0$

#### $\text{Big }\Theta \text{ Notation}$
The function $f(N)$ = $O\ g(N)$, if and only if $\exists$ constants c1, c2 and $n_0$  such that
$c1*g(N)\le f(N)\le c2*g(N)\ ,\forall\ n \ge n_0$


#### Frequency Count Method
The loop statements executes for $n+1$ times
statements inside loop execute for $n$ times
initialization return and other statements execute once.

