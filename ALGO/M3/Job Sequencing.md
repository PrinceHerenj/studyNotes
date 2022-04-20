Given an array of jobs where every job has a deadline and associated profit, if the job is finished before the deadline.

Solution is to generate all subsets of given set of jobs and check individual subets for the feasibility of jobs in that subset.

**Time Complexity**
$O(n^2)$

**Algorithm**
* Sort all jobs in decreasing order of profit.
* Iterate on jobs indecreasing order of profit. For each:
	* Find time slot, such that slot is empty and i < deadline and i is greatest. Put the job in this slot and mark this slot filled.
	* If no such i exists, then ignore the job.

```cs
using System;
using System.Collections.Generic;

class GFG : IComparer<Job> {
    public int Compare(Job x, Job y) {
        if (x.profit == 0 || y.profit==0) return 0;
        return (y.profit).CompareTo(x.profit);
    }
}

public class Job {
    char id;
    public int deadline, profit;

    public Job() {}
    public Job(char id, int deadline, int profit) {
        this.id = id;
        this.deadline = deadline;
        this.profit = profit;
    }

    void printJobScheduling(List<Job> arr, int t) {
        int n = arr.Count;

        GFG gg = new GFG();
        arr.Sort(gg);
        bool[] result = new bool[t];
        char[] job = new char[t];

        for (int i = 0; i < n; i++) {
            for (int j = Math.Min(t-1, arr[i].deadline - 1); j >= 0; j--) {
                if (result[j] == false) {
                    result[j] = true;
                    job[j] = arr[i].id;
                    break;
                }
            }
        }

        foreach (char jb in job) {
            Console.Write(jb+" ");
        }
        Console.WriteLine();
    }

    static void Main(string[] args) {
        List<Job> arr = new List<Job>();

        arr.Add(new Job('a', 2, 100));
        arr.Add(new Job('b', 1, 19));
        arr.Add(new Job('c', 2, 27));
        arr.Add(new Job('d', 1, 25));
        arr.Add(new Job('e', 3, 15));

        Job job = new Job();
        job.printJobScheduling(arr, 3);
    }
}
```