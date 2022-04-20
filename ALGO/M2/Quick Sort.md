#### Algorithm
Quick Sort performs:
```
select a partition element
1. Divide: Partition the array into two subarrays where elements less than partition are in one array and the larger ones in the other.
2. Conquer: Sort the two subarrays by recursive calls to quicksort
3. Combine 
```

#### Time Complexity
$T(n) = O(n.logn\ n)$

```cs
using System;

class QuickSort {
    void quicksort(int[] arr, int l, int r) {
        if(l < r) {
            int pi = partition(arr, l, r);
            quicksort(arr, l, pi - 1);
            quicksort(arr, pi + 1, r);
        }
    }
    int partition(int[] arr, int l, int r) {
        int pivot = arr[r];
        int i = l - 1;
        for(int j = l; j <= r - 1; j++) {
            if(arr[j] < pivot) {
                i++;
                swap(arr, i, j);
            }
        }
        swap(arr, i+1, r);
        return (i+1);
    }
    void swap(int[]arr, int a, int b) {
        int temp = arr[a];
        arr[a] = arr[b];
        arr[b] = temp;
    }
    void arrPrinter(int[] arr) {
        foreach (var item in arr)
        {
            Console.Write(item+" ");
        }
    } 
    public static void Main() {
        int[] arr = {5,4,3,2,1};
        QuickSort ob = new QuickSort();
        ob.arrPrinter(arr);
        ob.quicksort(arr, 0, arr.Length - 1);
        Console.Write("\nSorted Array: \n");
        ob.arrPrinter(arr);
    }
}

```