#### SRS to Software Design
Design phase transforms SRS into a **design document** that can be easily implemented in Programming Language.
Classified into:
* High-Level Design
* Detailed Design

##### High Level Design
Structure Chart or Tree is usually used. Outcome of high-level design: Program structure/ Software Product architecture.

##### Detailed Design
Data Structures, Algorithms are used. Outcome: Module Specification.

#### Types of Design Techniques
1. Procedural
2. Object Oriented
3. Aspect Oriented
4. Component Based.

[[Analysis vs Design]]

##### Good/Bad Designs
Designs are 
Better is one that:
* Implements all functionalities correctly
* Easily Understandable
* Efficient
* Easily changable

#### Outcome of Design Phase
* Module structures to implement
* Control relationship among modules
* Interface among different modules
* Data structures of individual modules
* Algorithms for individual modules

Module consists of several functions and associated data structures. 

#### Usage of Abstraction and Decomposition
##### Modularity
* Decomposition of problem into modules
* Independent to each other
* Divide and Conquer.
Modules should display **High Cohesion** and **Low Coupling**

##### Layered Design
* Neat arrangement of modules in a hierarchy.
* Low Fan-out
* Control abstraction

#### [[Cohesion and Coupling]]
#### Abstraction
* Low Level Modules do not invoke the functions of high level modules.
* aka Layered Design
* High-Level Design maps functions into modules such that
	* High Cohesion
	* Low Coupling
	* Modules are organized in a neat hierarchy.

#### Software Design Approaches
These two designs are different but complimentary.
##### Function Oriented Design
* A system that performs a set of functions
* Each Function is refined, mapped to module structure.
* Each function split into subfunctions.
* Examples: Structured Design, Jackson's SD

##### Object Oriented Design
* System Viewed as a collection of objects
* State is dentralized/ divided among objects. Each object manages its own state.
* Objects have their own internal data.
* Similar objects create a class.
* May inherit features.
* Objects communicate by message passing.

##### [[Difference between FOD and OOD]]

##### Fan-In Fan-Out
Fan In: of a module is the number of immediately superordinate modules. Small Function being used inside many big funtions.
Fan Out: of a module is the number of immediately subordinate modules.