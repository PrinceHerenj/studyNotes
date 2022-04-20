#### Algorithm
```
1. Iterate from arr[1] to arr[n] over the array
2. Compare the current element (key) to its predecessor
3. If key element smaller than its predecessor, compare it to elements before. Move greater elements one position up to make space for the swapped element.
```

```Java
void insertionSort(int arr[]) {
	int n = arr.length;
	for(int i = 1; i < n; ++i) {
		int key = arr[i];
		int j = i - 1;
		while(j>=0 && arr[j]>key) {
			arr[j+1]=arr[j];
			j=j-1;
		}
		arr[j+1]=key;
	}
}
```

##### Time Complexity
$\text{Best: }\theta (n)$
$\text{Worst: }O (n^2)$
