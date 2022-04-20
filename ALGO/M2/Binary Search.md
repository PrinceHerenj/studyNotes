#### Algorithm
```
Sort the array
primary interval is complete array
divide the arrray into lower half and upper half
if value to search < mid of primary interval
	disregard upper half
if value to search > mid of primary interval
	disregard lower half
primary array is array after disregard.
repeat until found.
```

#### Time Complexity
$T(n)=O(log\ n)$

```cs
using System;

class binarySearch {
    static int BS(int[] arr, int l, int r, int x) {
        if(r >= l) {
            int mid = (r+l)/2;
            if (arr[mid] == x) return mid;
            if (arr[mid] > x) return BS(arr, l, mid-1, x);
            if (arr[mid] < x) return BS(arr, mid+1, r, x);
        }
        return -1;
    }

    static void Main() {
        int[] arr = { 2, 3, 4, 10, 40 };
        int n = arr.Length;
        int x = 10;
        int result = BS(arr, 0, n - 1, x);
        if (result == -1)
            Console.WriteLine("Element not present");
        else
            Console.WriteLine("Element found at index "+ result);
    }
}
```