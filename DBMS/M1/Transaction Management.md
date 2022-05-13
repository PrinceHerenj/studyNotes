Several operations on the database form a single logical unit of work. For example, funds transfer.

* Funds transfer must happen in its entirety or not at all. This is known as **atomicity**.
* It is essential that the execution of the fundsTransfer() preserves the **consistency** of the database.
* Afer successful execution of fundsTransfer() new balances of say A and B must persist, despite system failure. known as **durability**.

A **transaction** is a collection of operations that performs a single logical function in a database apllication. Each transaction is a unit of both atomicity and consistency.

* Ensuring atomicity and durability is the responsibility of **recovery manager**.
* For ensuring atomicity, a failed transaction must have no effect on the state of database. Thus, the database must be restored to the state it was in before execution started. Thus DBMS must perform **failure recovery**.
* When several transactions update the database concurrently, the consistency may change, even though each individual transaction is correct. It is the responsibility of th **concurrecy-control manager** to control the action among the concurrent transactions.

* **Transaction manager** consists fo concurrecy-control manager and recovery manager.