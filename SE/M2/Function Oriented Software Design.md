Start with functional requirements in [[SRS]].

During the design process
* High Level Functions are successively decomposed into more detailed sub-functions.
* Detailed functions are then mapped to a module aka top-down decompositition.

#### Structured Analysis/ Structured Design
contains essential features of FOD methods.
* Need to use a specific design method later on can be easily done with small effort.

used to perform: High Level Design

**Structured Analysis:** Functional Decomposition takes place.
**Structured Design:** Module structure is formalized.

##### Functional Decomposition
* Functions are Hierarchically decomposed into more detailed functions.
* Simultaenous decomposition of high level data.

In Structured Analysis:
Text problem is visualized using Data Flow Diagrams
DFDs represent the result of structured analysis.

#### Structured Analysis
* Top Down Approach
* Divide and Conquer Principle
	* Each function individual
* Data Flow Diagrams

##### Data Flow Diagrams
DFD used as a modelling technique for:
* Representing result of structured analysis
* Showing flow of documents or items.

It is a hierarchical graphical model that :
* shows different function of the system
* handles data interchange among the processes.

Each Function is considered as processing station as each function consumes some input and produces some output.

DFD model uses limited typed of symbols, simple set of rules, easy to understand.
DFD notations

![[Pasted image 20220418210608.png]]

External entity: input data to system; cosume data produced by system.
Function Symbol: aka process, bubble, transform; should be verbs.
Data Flow: represents flow of data; named accordingly
Data Store: represents storage/file; arrow out of data store represents entire database/file

Synchronous Operation: If two bubbles are directly connected by a data flow arrow.
Asynchronous Operation: If two bubbles connected via data store.

**Method of SA**
* Represent the complete software at abstract level called **context diagram** wherein
	* the whole system is one function bubble
	* shows data inputl, output, external entities.
	* aka level 0 DFD
* Level 1 DFD
	* each high level function has a bubble
	* data input to every bubble
	* data ouput from each bubble
* Higher Level DFDs
	* Same as level 1 DFD but for subfunctions

##### Decomposition
* aka factoring or bubbling
* each bubble decomposed into 3 to 7 bubbles.
* should take place until the smallest child bubble can be expressed as an algorithm

##### Data Dictionary
* DFD accompanied by Data Dictionary
* Define all composite data items in terms of their component data items.
* provides all with standard terminology
* CASE helps automatically generate Data Dictionary
* primitive data defination
	* $+$ denotes composition of data/ joining of variables a+b
	* [,,,] represents selection [a,b]
	* () represent optional data a+(b)
	* {} represent iterative data definition. {name}4
	* {}* represents 0 or more instances
	* = equivalence
	* $*$ comment

##### Balancing a DFD
* Data flowing into or out of bubble must match the data flows of the next level of DFDs
* Number the bubbles in DFD

##### Example DFD
![[Pasted image 20220418212241.png]]
![[Pasted image 20220418212250.png]]
![[Pasted image 20220418212302.png]]


#### Structured Design
All functions in DFD are mapped to a module structure.
Also known as Software Product Architecture.

**Detailed Design**
* Software Architecture is refined through detailed design
* can be directly implemented using a programming language.

[[Structure Analysis vs Structured Design]]
