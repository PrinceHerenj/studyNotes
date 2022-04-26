```cs
using System;
 
class GFG
{
     
// function to return minimum
// element using recursion
public static int findMinRec(int []A,
                             int n)
{
// if size = 0 means whole array
// has been traversed
if(n == 1)
    return A[0];
     
    return Math.Min(A[n - 1],
                    findMinRec(A, n - 1));
}
 
// Driver code
static public void Main ()
{
    int []A = {1, 4, 45, 6, -50, 10, 2};
    int n = A.Length;
     
    // Function calling
    Console.WriteLine(findMinRec(A, n));
}
}
```

```cs
using System;
 
class GFG
{
     
// function to return minimum
// element using recursion
public static int findMaxRec(int []A,
                             int n)
{
// if size = 0 means whole array
// has been traversed
if(n == 1)
    return A[0];
     
    return Math.Max(A[n - 1],
                    findMaxRec(A, n - 1));
}
 
// Driver code
static public void Main ()
{
    int []A = {1, 4, 45, 6, -50, 10, 2};
    int n = A.Length;
     
    // Function calling
    Console.WriteLine(findMaxRec(A, n));
}
}
```