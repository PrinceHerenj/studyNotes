#### Algorithm
##### For simple Matrix Multiplication
$\Large c_{i,j} = \sum _{k=1}^n a_{ik} . b_{kj}$
$\Omega(n^3)$

##### DAC
```
Simple Standing man shooting tech
```

**Time Complexity**
$T(n)=8T(n/2)+O(n^2)$

##### Strassen's DAC
```
1. divide A B and C into n/2 x n/2 matrices
2. create 10 matrices [s1 to s10]
3. use matrices in step 1 and step 2 with certain combinations
4. compute output C
```
![[Pasted image 20220420114119.png]]

**Time Complexity**
$T(n)=7T(n/2)+O(n^2)$
