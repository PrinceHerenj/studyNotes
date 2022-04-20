#### Algorithm
```
Find Mininum Element in Array and place it at beginning
	Fix First position
find minimum element in [1 - END]
	Fix Second position
find minimum element in [2 - END]
```

```java
for(int i = 0; i < arr.length - 1; i++) {
	for(int j = i+1; j < arr.length; j++) {
		if(arr[j]<arr[i]) swap(arr[j], arr[i])
	}
}
```

##### Time Complexity
$\text{Best: }\theta (n^2)$
$\text{Worst: }O (n^2)$
