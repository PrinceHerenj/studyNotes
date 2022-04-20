#### Algorithm
Bubble Sort is the simplest sorting algorithm that works by repeatedly swapping the adjacent eleements if they are in the wrong order.

```Java
void bubbleSort(int arr[]) {
	int n = arr.length;
	for(int i = 0; i < n - 1; i++) {
		for(int j = 0; j < n - i - 1; j++) {
			if(arr[j] > arr[j+1]) swap(arr[j], arr[j+1]);
		}
	}
}
```

##### Time Complexity
$\text{Best: }\theta (n)$
$\text{Worst: }O (n^2)$
