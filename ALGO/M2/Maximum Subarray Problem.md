This problem involves maximizing the sum of a subarray to create maximum proft.

Say for example, investing in a volatiel company to get maximum profit
![[Pasted image 20220420093554.png]]

**Brute Force Method** involves trying every possible pair of buying and selling dates, in which buy date < sale date. A period of n days has $\Large \left( n \atop 2 \right)$ such dates. So it has $\Omega(n^2)$ time complexity.

We find a sequence of days over which the net change from first day to last is maximum. This is known as **maximum subarray**. This is only fruitous when negative numbers are present in the array, else the entire array is maximum subarray.

#### Time Complexity of Maximum Subarray
$T(n)=\begin{dcases}\theta(1),& \text{if } n=1\\ 2T(n/2)+\theta(n), & \text{if } n\gt1\end{dcases}$

``` cs
using System;
class maxSub {
    int[] maxCross(int[] arr, int l, int m, int h) {
        int leftSum, rightSum;
        leftSum =  rightSum = -9999;
        int sum = 0;
        int maxLeft = 0, maxRight = 0;
        for(int i = m; i >= l; i--) {
            sum += arr[i];
            if(sum > leftSum) {
                leftSum = sum;
                maxLeft = i;
            }
        }
        sum = 0;
        for(int i = m+1; i <= h; i++) {
            sum += arr[i];
            if(sum > rightSum) {
                rightSum = sum;
                maxRight = i;
            }
        }
        return new int[] {maxLeft, maxRight, leftSum+rightSum};
    }
    int[] maxSubf(int[] arr, int low, int high) {
        if(high==low){
            return new int[] {low, high, arr[low]};;
        }
        else {
            int mid = (int)((low+high)/2);
            int[] left  = maxSubf(arr, low, mid);
            int[] right  = maxSubf(arr, mid+1, high);
            int[] cross = maxCross(arr, low, mid, high);
            int leftLow = left[0];
            int leftHigh = left[1];
            int leftSum = left[2];
            int rightLow = right[0];
            int rightHigh = right[1];
            int rightSum = right[2];
            int crossLow = cross[0];
            int crossHigh = cross[1];
            int crossSum = cross[2];
            if(leftSum >= rightSum && leftSum >= crossSum) return new int[] {leftLow, leftHigh, leftSum};
            else if(rightSum>=leftSum&&rightSum>=crossSum) return new int[] {rightLow, rightHigh, rightSum};
            else return new int[] {crossLow, crossHigh, crossSum};
        }
    }

    void printer(int[] arr, int[] p) {
        int i = p[0], j = p[1], sum = p[2];
        Console.Write("[");
        while(i<=j){
            Console.Write(arr[i]+" ");
            i++;
        }
        Console.Write("]\nSum = "+sum+"\n");
    }
    static void Main() {
        maxSub ob = new maxSub();
        int[] arr = {13, -3, -25, 20, -3, -16, -23, 18, 20, -7, 12, -5, -22, 15, -4, 7};
        int[] p = ob.maxSubf(arr, 0, arr.Length - 1);
        ob.printer(arr, p);
    }
}

```