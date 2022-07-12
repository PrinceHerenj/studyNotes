#### Functional Dependency
* A functional dependency is a property of the information represented by the relation. It defines the most commonly encountered type of relatedness property between data items of a database.
* It is a constraint between two attributes or two sets of attributes
* A FD is a property of the semantics or meaning of the attributes in a relation. The semantics indicate how attributes relate to one anotehr and specify the FD's between attributes.

#### Decomposition
A functional decomposition is the process of breaking down the functions of the original into progressively greater and finer level of details. It is done to break the module into smallest one to convert the data models in normal form to avoid redundancies. Helps in eliminating bad design such as redundancy, inconsistencies and anomalies.
* Lossy
* Lossless
* Dependency Preserving

#### Normalization
```
Redundancy
Insertion anomalies
Update anomalies
Deletion anomalies.
```
It is a process of decomposing a set of relations with anomalies to produce smaller and well structures relation that contain minimum or no redundancy. It provies the designer with a systematic and scientific process of grouping of attruibutes in a relation.
It can be defined as a procedure of successive reduction of agiven collection of relation schemas based on their functional dependencies and primary keys to achieve some desirable form.