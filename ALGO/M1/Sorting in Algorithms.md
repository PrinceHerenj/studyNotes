#### Types of Sorting
Internal Sorting: When a sorting algorithm does not require additional memory apart from space acquired by the problem.
External Sorting: Vice Versa

#### Selection Sort
##### Algorithm
```
Find Mininum Element in Array and place it at beginning
	Fix First position
find minimum element in [1 - END]
	Fix Second position
find minimum element in [2 - END]
```

```java
for(int i = 0; i < arr.length - 1; i++) {
	int minIdx = i;
	for(int j = i+1; j < arr.length; j++) {
		if(arr[j]<arr[minIdx])
			minIdx=j;
	}
	 swap(arr[minIdx], arr[i])
}
```

##### Time Complexity
$\text{Best: }\theta (n^2)$
$\text{Worst: }O (n^2)$

#### Insertion Sort
##### Algorithm
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

#### Bubble Sort
##### Algorithm
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
