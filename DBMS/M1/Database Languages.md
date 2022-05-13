Database provides a data definition language (DDL) to specify the database schema and data manipulation language (DML) to express database queries and updates.

#### Data Definition Language
* Database schema expressed by a set of definitions in DDL.
* Storage structure and access methods used by database system are specified using **data storage and definition** DDL.
* Domain Constraints: Every attribute has a domain/type.
* Referential Integrity: Ensure that same value appears in multiple relations
* Authorization: Differentiation of users based on permission to **read, insert, update or delete**
* The output of DDL is stored in the **data dictionary** which contains **metadata**.

##### SQL DDL
Sequential Query Language DDL is a rich DDL that allows to define tables with data types and integrity contraints.

```sql
create table department
	(dept_name char(20),
	building char(15),
	budget numeric(12,2));
```

#### Data Manipulation Language
* A DML is a language that enabels users to access or manipulate data as organized by the apropriate data model.
	* **Retrieval** of information stored
	* **Insertion** of new information
	* **Delete** of information stored.
	* **Modification** of information stored.
* There are two basic types of DML.
	* **Procedural** DMLs requires user tos specify what data and how to get those data.
	* **Declarative** DMLs require users to specify only what data without specifying how to get those data.

**Query** is a statement reqresting the retrieval of information. DMLs portion that involed information retrieval is called a query language.

##### SQL DML
```sql
select instructor.name
from instructor where instructor.dept_name='History';
```

#### Database access from Applications
SQL being a Non-Procedural query Language, is not powerful as a universal Turing machine, i.e. some computataion that are possible using a general purpose programming language but are not possible usign SQL. SQL does not suprot actions such as input, output to display or communication
Such computations and actions must be written in a host language with embedded SQL queries that access the data in the database. Application programs are programs that are used to interact with the database.