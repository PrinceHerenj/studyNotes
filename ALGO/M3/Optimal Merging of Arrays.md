#### Algorithm
* Create a recursive function which takes k arrays and return the output array.
* In the recursive function, if the value of k is 1 then return the array else if the value of k is 2 then merge the two arrays in  linear time and return the array.
* If the value of k is greater than 2 then divide the group of k elements into two equal halves and recursively call the function.
* Print the output array.

```cs
using System;

class GFG {
    static readonly int n = 4;

    public static int[] getRow(int[,] matrix, int row) {
        var rowLength = matrix.GetLength(1);
        var rowVector = new int[rowLength];
        for(var i = 0; i < rowLength; i++) {
            rowVector[i] = matrix[row, i];
        }
        return rowVector;
    }

    static void mergeArrays(int[] arr1, int[] arr2, int n1, int n2, int[] arr3) {
        int i = 0, j = 0, k = 0;

        while (i < n1 && j < n2) {
            if (arr1[i]<arr2[j]) arr3[k++] = arr1[i++];
            else arr3[k++] = arr2[j++];
        }

        while (i < n1) arr3[k++] = arr1[i++];
        while (j < n2) arr3[k++] = arr2[j++];
    }

    static void printArray(int[] arr, int size) {
        for (int i = 0; i < size; i++) Console.Write(arr[i]+" ");
    }

    static void mergeKArrays(int[,] arr, int i, int j, int[] output) {
        if (i==j) {
            for(int p = 0; p < n; p++) output[p] = arr[i, p];
            return;
        }
        if (j-i==1) {
            mergeArrays(getRow(arr, i), getRow(arr, j), n, n, output);
            return;
        }
        int[] out1 = new int[n*(((i+j)/2)-i+1)];
        int[] out2 = new int[n*(j-((i+j)/2))];

        mergeKArrays(arr, i, (i+j)/2, out1);
        mergeKArrays(arr, (i+j)/2 + 1, j, out2);
        mergeArrays(out1, out2, n*(((i+j)/2) - i + 1), n * (j - ((i + j) / 2)), output);
    }

    public static void Main(string[] args) {
        int[,] arr = { { 2, 6, 12, 34 },
                    { 1, 9, 20, 1000 },
                    { 23, 34, 90, 2000 } };
        int k = arr.GetLength(0);
        int[] output = new int[n*k];
        mergeKArrays(arr, 0, 2, output);

        printArray(output, n*k);
    }
}
```

##### Time Complexity
$O(n*k*log(n*k))$
