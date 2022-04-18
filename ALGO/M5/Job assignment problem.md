Let there are N workers and N jobs. Any worker can be assigned to perform any job, incurring some cost that varies depending on the worker-job assignment. Total cost has to be found while each worker doing only one job.
![[Pasted image 20220415224820.png]]

For each worker, we choose job with minimum cost from a list of unassigned jobs. (which is row-wise calculation)
or
For each job, we choose worker with minimum cost from a list of unassigned workers. (which is column-wise calculation)

**Algorithm** (row wise)
* If Worker 1 selects a particular job, calculate total cost by adding all other minimum job costs excluding row and column.
* Calculate a set of jobs, and select the minimum that worker 1's cost can provide.
* Repeat for Workers 2 3 and 4
* Final Point reached.

