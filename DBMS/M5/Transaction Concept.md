#### Questions
* Question 1: What is a transaction? What are desirable properties of a transaction? (2+4)
* Question 2: What are the possible states that a transaction can exist in? Describe. (4)

#### Transaction Concept
---
* A transaction is a unit of program execution that accesses and possibly updates various data items.
* It is initated by a user program like SQL or JDBC
* A transaction is delimited by statements of the form **begin transaction** and **end transaction**. It consists of all operations executed betweent he begin transaction and end transaction.

#### ACID Properties (desirable properties)
---
##### Atomicity
* This collection of operations must be a single, indivisible unit. Therefore executing in its entirety or not at all. This 'all-or-none' property is referred to as **atomicity**.

##### Consistency
* A transaction must preserve database consistency - if a transaction is run **atomically** in **isolation** starting from a **consistent** database, the database must again be consistent at the end of the transaction.

##### Isolation
* Since a transaction is a single unit, its actions cannot appear to be separated by other database operations not part of the transaction. Even a single SQL statement involves many separate accesses to the database, and a transaction may consist of several SQL statements. Therefore the DBMS has to take special actions to ensure that transactions operate properly without interference from concurrectly executing statements. This property is referred to as **isolation**.

##### Durability
* Even if the system ensures correct execution of transaction, if the system crashes, then it forgets about the transaction. Thus a transaction's action must persist across crashes. This property is referred to as **durability**.

#### Transaction States
---
A transaction may not always complete its execution successfully. Such a transaction is termed **aborted**.

If we are to ensure the atomicity property, an aborted transaction must not have any effect on the state of the database. Thus, any changes that the aborted transaction must have no effect on the state of the database. Once undone, we say the transaction has been **rolled back**.

A transaction that completes its execution successfully is said to be **committed**. A commited transaction that has performed updates transforms the database into a new consistent state, which must persist even if there is a system failure.

Once a transaction has commited, we cannot undo its effects by aborting it. The only way to undo the effects of committed transaction is to execute a **compensating transaction**. For example, if a transaction of +$20 is committed, a compensating transaction of -$20 is required to return the database into the previous state.

A transaction must be in one of the following states:
* **Active**: the initial state; the transaction stays in this state while it is executing.
* **Partially committed**: after the final statement has been executed.
* **Failed**: after the discovery that normal execution can no longer proceed.
* **Aborted**: after the transaction has been rolled back and the database has been restored to its state prior to the start of the transaction.
* **Committed**: after successful completion.
* ![[Pasted image 20220712205716.png]]