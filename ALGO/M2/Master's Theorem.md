Let $a\ge1\ b\gt1\ f(n)$ is a function.
$T(n)=aT(n/b)+f(n)$

Then T(n) has following bounds:
1. If $f(n) = \large O(n^{log_b\ a-\epsilon})$, then $T(n)=\large \Theta(n^{log_b\ a-\epsilon})$
   (when $f(n)<n^{log_b\ a}$)
2. If $f(n) = \large \Theta(n^{log_b\ a})$, then $T(n)=\large \Theta(n^{log_b\ a}lg\ n)$
   (when $f(n)=n^{log_b\ a}$)
3. If $f(n) = \large \Omega(n^{log_b\ a})$, and if $af(n/b)\le cf(n)$ then $T(n)=\large \Theta(f(n))$
   (when $f(n)>n^{log_b\ a}$)

![[Pasted image 20220424223558.png]]

