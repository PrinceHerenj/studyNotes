Transaction processing system usually allow multiple transactions to run concurrently. Allowing multiple transactions to update data concurrently causes several complications with consistency of the data. Ensuring consistency in spite of concurrent execution of transactions requires extera work. it is far easier to insist that transactions run serially - that is one at a time, each starting only after the previous one has completed

However, there are two good reasons for allowing concurrency: 
* Improved throughput and resource utilization.
* Reduced waiting time

When several transactions execute concurrently on the database, the consistency of data may no longer be preserved. It is therefore necessary for the system to control the interaction among the concurrent transactions. 
* Since a transaction is a unit that preserves consistency, a serial execution of transactions guarantees that consistency is preserved.
* A schedule captures the key actions of transactions that affect concurrent execution, such as read and write operations, while abstracting away internal details of the execution of the transaction.
* We require that any schedule produced by concurrent processing of a set of transactions will have an effect equivalent to a schedule produced when these transactions are run serially in some order.
* A system that guarantees this property is said to ensure **serializability**.
* There are several different notions of equivalence leading to the concepts of conflict serializability and view serializability

##### Recoveribility
A recoverable schedule is one where, for each pair of transactions Ti and Tj such that Tj reads a data item previously written by Ti , the commit operation of Ti appears before the commit operation of Tj . For the example of schedule 9 to be recoverable, T7 would have to delay committing until after T6 commits

##### Cascadeless Schedules
Even if a schedule is recoverable, to recover correctly from the failure of a transaction Ti , we may have to roll back several transactions. Such situations occur if transactions have read data written by Ti . As an illustration, consider the partial schedule of Figure 17.15. Transaction T8 writes a value of A that is read by transaction T9. Transaction T9 writes a value of A that is read by transaction T10. Suppose that, at this point, T8 fails. T8 must be rolled back. Since T9 is dependent on T8, T9 must be rolled back. Since T10 is dependent on T9, T10 must be rolled back. This phenomenon, in which a single transaction failure leads to a series of transaction rollbacks, is called cascading rollback
![[Pasted image 20220723192351.png]]
Cascading rollback is undesirable, since it leads to the undoing of a significant amount of work. It is desirable to restrict the schedules to those where cascading rollbacks cannot occur. Such schedules are called cascadeless schedules. Formally, a cascadeless schedule is one where, for each pair of transactions Ti and Tj such that Tj reads a data item previously written by Ti , the commit operation of Ti appears before the read operation of Tj . It is easy to verify that every cascadeless schedule is also recoverable.

* Schedules must be recoverable, to make sure that if transaction a sees the effects of transaction b, and b then aborts, then a also gets aborted.
* Schedules should preferably be cascadeless, so that the abort of a transaction does not result in cascading aborts of other transactions. Cascadelessness is ensured by allowing transactions to only read committed data.
* The concurrency-control management component of the database is responsible for handling the concurrency-control policies

#### Concurrency Control Policies
One of the fundamental properties of a transaction is isolation. When several transactions execute concurrently in the database, however, the isolation property may no longer be preserved. To ensure that it is, the system must control the interaction among the concurrent transactions; this control is achieved through one of a variety of mechanisms called concurrency-control schemes.

##### Lock Based Protocols
1. Shared. If a transaction Ti has obtained a shared mode lock on item Q, then Ti can read but cannot write Q
2. Exclusive. If a transaction Ti has obtained an exclusive mode lock on item Q, then Ti can both read and write Q

Every transaction must request a lock in an appropriate mode on data item Q, depending on the types of operations that it will perform on Q. The transaction makes the request to the concurrency control manager. The transaction can proceed with the operation only after the concurrency control manager grants the lock to the transaction. The use of these lock modes allow multiple transactions to read a data item but limits write access to just one transaction at a time.
![[Pasted image 20220723194617.png]]

##### Deadlock
Consider the partial schedule of Figure 18.7 for T3 and T4. Since T3 is holding an exclusive-mode lock on B and T4 is requesting a shared-mode lock on B, T4 is waiting for T3 to unlock B. Similarly, since T4 is holding a shared-mode lock on A and T3 is requesting an exclusive mode lock on A, T3 is waiting for T4 to unlock A. Thus, we have arrived at a state where neither of these transactions can ever proceed with its normal execution. This situation is called deadlock. When deadlock occurs, the system must roll back one of the two transactions. Once a transaction has been rolled back, the data items that were locked by that transaction are unlocked. These data items are then available to the other transaction, which can continue with its execution.
![[Pasted image 20220723195527.png]]

##### Granting of Locks
Suppose a transaction T2 has a shared-mode lock on a data item, and another transaction T1 requests an exclusive-mode lock on the data item. T1 has to wait for T2 to release the sharedmode lock. Meanwhile, a transaction T3 may request a shared-mode lock on the same data item. The lock request is compatible with the lock granted to T2, so T3 may be granted the shared-mode lock. At this point T2 may release the lock, but still T1 has to wait for T3 to finish. But again, there may be a new transaction T4 that requests a shared-mode lock on the same data item, and is granted the lock before T3 releases it. In fact, it is possible that there is a sequence of transactions that each requests a sharedmode lock on the data item, and each transaction releases the lock a short while after it is granted, but T1 never gets the exclusive-mode lock on the data item. The transaction T1 may never make progress, and is said to be starved.

##### The Two-Phase Locking Protocol
One protocol that ensures serializability is the two-phase locking protocol. This protocol requires that each transaction issue lock and unlock requests in two phases: 
1. Growing phase. A transaction may obtain locks, but may not release any lock. 
2. Shrinking phase. A transaction may release locks, but may not obtain any new locks

#### Deadlock Handling
A system is in a deadlock state if there exists a set of transactions such that every transaction in the set is waiting for another transaction in the set. More precisely, there exists a set of waiting transactions {T0, T1, …, Tn} such that T0 is waiting for a data item that T1 holds, and T1 is waiting for a data item that T2 holds, and … , and Tn−1 is waiting for a data item that Tn holds, and Tn is waiting for a data item that T0 holds. None of the transactions can make progress in such a situation.

The only remedy to this undesirable situation is for the system to invoke some drastic action, such as rolling back some of the transactions involved in the deadlock. Rollback of a transaction may be partial: That is, a transaction may be rolled back to the point where it obtained a lock whose release resolves the deadlock

There are two principal methods for dealing with the deadlock problem. We can use a **deadlock prevention** protocol to ensure that the system will never enter a deadlock state. Alternatively, we can allow the system to enter a deadlock state, and then try to recover by using a **deadlock detection** and **deadlock recovery scheme**

##### Deadlock Prevention
There are two approaches to deadlock prevention. One approach ensures that no cyclic waits can occur by ordering the requests for locks, or requiring all locks to be acquired together. The other approach is closer to deadlock recovery, and it performs transaction rollback instead of waiting for a lock whenever the wait could potentially result in a deadlock
The simplest scheme under the first approach requires that each transaction locks all its data items before it begins execution.
Another approach for preventing deadlocks is to impose an ordering of all data items and to require that a transaction lock data items only in a sequence consistent with the ordering.

1. The wait–die scheme is a nonpreemptive technique. When transaction Ti requests a data item currently held by Tj , Ti is allowed to wait only if it has a timestamp smaller than that of Tj (i.e., Ti is older than Tj ). Otherwise, Ti is rolled back (dies). For example, suppose that transactions T14, T15, and T16 have timestamps 5, 10, and 15, respectively. If T14 requests a data item held by T15, then T14 will wait. If T16 requests a data item held by T15, then T16 will be rolled back
2. The wound–wait scheme is a preemptive technique. It is a counterpart to the wait– die scheme. When transaction Ti requests a data item currently held by Tj , Ti is allowed to wait only if it has a timestamp larger than that of Tj (i.e., Ti is younger than Tj ). Otherwise, Tj is rolled back (Tj is wounded by Ti )

##### Deadlock Detection
Deadlocks can be described precisely in terms of a directed graph called a wait-for graph. This graph consists of a pair G = (V , E), where V is a set of vertices and E is a set of edges. The set of vertices consists of all the transactions in the system. Each element in the set E of edges is an ordered pair Ti → Tj . If Ti → Tj is in E, then there is a directed edge from transaction Ti to Tj , implying that transaction Ti is waiting for transaction Tj to release a data item that it needs.

• Transaction T17 is waiting for transactions T18 and T19. • Transaction T19 is waiting for transaction T18. • Transaction T18 is waiting for transaction T20.![[Pasted image 20220723202750.png]]

Since the graph has no cycle, the system is not in a deadlock state. Suppose now that transaction T20 is requesting an item held by T19. The edge T20 → T19 is added to the wait-for graph, resulting in the new system state in Figure 18.14. This time, the graph contains the cycle: T18 → T20 → T19 → T18 implying that transactions T18, T19, and T20 are all deadlocked
![[Pasted image 20220723202804.png]]

##### Recovery from Deadlock
When a detection algorithm determines that a deadlock exists, the system must recover from the deadlock. The most common solution is to roll back one or more transactions to break the deadlock. Three actions need to be taken: 
1. Selection of a victim
2. Rollback
3. Starvation

#### Timestamp Based Protocols
Timestamps With each transaction Ti in the system, we associate a unique fixed timestamp, denoted by TS(Ti ). This timestamp is assigned by the database system before the transaction Ti starts execution. If a transaction Ti has been assigned timestamp TS(Ti ), and a new transaction Tj enters the system, then TS(Ti ) < TS(Tj ). There are two simple methods for implementing this scheme: 
1. Use the value of the system clock as the timestamp; that is, a transaction’s timestamp is equal to the value of the clock when the transaction enters the system. 
2. Use a logical counter that is incremented after a new timestamp has been assigned; that is, a transaction’s timestamp is equal to the value of the counter when the transaction enters the system.

To implement this scheme, we associate with each data item Q two timestamp values: 
1. W-timestamp(Q) denotes the largest timestamp of any transaction that executed write(Q) successfully. 
2. R-timestamp(Q) denotes the largest timestamp of any transaction that executed read(Q) successfully.
These timestamps are updated whenever a new read(Q) or write(Q) instruction is executed.

##### The Timestamp-Ordering Protocol 
The timestamp-ordering protocol ensures that any conflicting read and write operations are executed in timestamp order. This protocol operates as follows: 

Suppose that transaction Ti issues read(Q). 
* If TS(Ti ) < W-timestamp(Q), then Ti needs to read a value of Q that was already overwritten. Hence, the read operation is rejected, and Ti is rolled back.
* If TS(Ti ) ≥ W-timestamp(Q), then the read operation is executed, and R timestamp(Q) is set to the maximum of R-timestamp(Q) and TS(Ti)

Suppose that transaction Ti issues write(Q). 
* If TS(Ti ) < R-timestamp(Q), then the value of Q that Ti is producing was needed previously, and the system assumed that that value would never be produced. Hence, the system rejects the write operation and rolls Ti back.
* If TS(Ti ) < W-timestamp(Q), then Ti is attempting to write an obsolete value of Q. Hence, the system rejects this write operation and rolls Ti back.
* Otherwise, the system executes the write operation and sets W-timestamp(Q) to TS(Ti ).