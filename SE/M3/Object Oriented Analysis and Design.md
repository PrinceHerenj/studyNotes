### OOAD
* From Requirement Specifications initial model is developed using **Object Oriented Analysis**
* **Object Oriented Design** Model is implemented using Object Oriented Concepts.

![[Pasted image 20220423143115.png]]

### Object Oriented Analysis
#### [[SRS]]
#### [[User Interface Design]]
#### [[Use Case Model]]
#### Domain Modelling
* Represent Concepts or object appearing in the problem.
* Relations among objects

##### Class Stereotypes
* **Boundary Objects**: Interact with Actors i.e. UI objects
	* Include screens, menus, forms, dialogs
* **Entity Objects**: Hold Information
	* Data Tables, files
	* Dumb Servers
	* Storing and Fetching data
	* Functions such as searching and sorting.
	* Identified by Nouns
* **Controller Objects**
	* Coordinate the activites of a set of entity objects
	* Interface with boundary objects
	* Realize use case behaviour
	* Logic portionof the Domain
![[Pasted image 20220423144506.png]]

##### Class Responsibility Collaborator Cards
* Index cards prepared one each per class
* Class Responsibility written on these cards
* Collaborating Object is also written.
* Requried for developing Interaction Diagrms of complex use cases.
![[Pasted image 20220423144822.png]]

### Object Oriented Design
#### Object
A system is designed as a set of interacting opbjects
* onsist of data **attributes** and operation **functions**.
* Hide organization of internal information.

##### Class
Class is set of objects having similar properties, like attributes, operations, relationships and semantics.
* Instance are objects
* Template for object creation.
* Considered as Abstract Data Type
* Abstract Classes don't produce instances

##### Operations supported by an object
* Manipulate data of other objects
* Object invocation performed via method call.

#### Relationships among Classes
1. **Inheritance**: Define a new class by extending/modifying existing class. Methods can be overriden. Sub-divided into
	* **Generalization**: subclass -> superclass relationship
		* Transparent Filled Arrow
	* **Specialization**: superclass -> subclass relationship

2. **Association**: Enable objects to communicate with each other.
	* Class can be recursively associated to itself.
	* Multiplicity is number of instances taking part in the relation
	* Link: An instance of association.
	* Single line

3. **Aggregation**/ **Composition**: 
	* **Aggregation**: Represent whole part relationship. Integration of smaller class into larger class.
		* Aggregate object conatin other objects. Limited to tree hierarchy
		* Example: Array
		* Diamond Transparent
	* **Composition**: Life of composed class samet to General class.
		* Diamond Filled

[[Aggregation vs Inheritance]]
[[Aggregation vs Composition]]

4. **Dependency**
	* One class depends on another.
		* Dotted non-filled arrow.

#### Abstraction
Hide non-useful aspects

**Types:**
* Data abstraction
* Behavior abstraction

**Advantages**
* Reduce complexity
* Enhance understandability
* Increase productivity

#### Encapsulation
Objects communicate with outside world though messages.
* Data of objects encapsulated within its methods.
* Data accessbile only through methods.

#### Polymorphism
Many Forms
* Same message to same object can result in different actions
	* **Static Binding**: Method Overloading
	* **Dynamic Binding**: Method Overriding, calling function of parent object.

##### Advantages
* Reuse
* Increased productivity
* Good Design: Low coupling, high cohesion

### Goodness Criteria
* Low Coupling
* High Cohesion
	* at Individual Methods
	* Data and methods within a class
	* of entire class hierarchy
* Simple Messages
* Low number of individual class methods.
* Height of inheritance tree must be low.
* Response for a class (RFC): The response for a class is defined as the max number of methods and constructors of other objects that an instance of this class invokes.