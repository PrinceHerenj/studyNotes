#### Definition
The life cycle of a software represents the stages through which it evolves during its life time.
**Stages:**
* Feasibility Study
* Requirement analysis and specification
* Design
* Coding
* Testing
* Maintenance

#### Life Cycle Model
* Descriptive and Diagrammatic model of Life Cycle.
* Establishes order of phases of life cycle

**Uses**
* We use LCM to identify inconsistencies, redundancies and ommisions.
* Helps in development in systematic and disciplined manner.
* Easier to track progress. Manager can tell which stage project is.

Defines structured phases having entry and exit criteria.

#### Classical Waterfall Model
* Relative Effort: $Requirement<Design<Coding<Testing<Maintenance$
* Output Standards Defined at end of every phase.
* Entry and Exit criteria at every phase.

##### Feasibility Study
Product is
* Financially worthwhile
* Technically Feasible

rough requirement analysis.
different solutions proposal
select best solution based on
* Resources
* Cost
* Development Time

may not select any solution if
* high cost
* resources unavailable
* technically unproducable.

##### Requirement Analysis and Specification
Exact Requirements of customer. Proper Documentation.
contains two activities
1. Requirements Gathering and Analysis
   Collect all relevant information regarding software to be developed from the customer point of view. Collected from enduser through interviews and discussions.
   Find out Incompleteness and inconsistencies.
2. Requiremenes Specification
   After the above activites are complete, the requirements are documented. This is known as the **[[SRS]]**.    

##### Design
SRS document is transformed into a programmable structure.
* Function Oriented Data Flow design Model
* Object Oriented Design Model

##### Coding and Unit Testing
aka Implementation phase
Conversion of the Design into source code.
Individually testing each component after coding

##### Integration and System Testing
Multiple components are integrated one at a time, or in common groups such as Core Integration, in which only the essential components are integrated. Testing of group modules.
All modules are finally completely integrated to produce the final product. Final Product is also called the System and thus its testing is known as System testing.
$\alpha \text{ testing}$ : testing by development team
$\beta \text{ testing}$ : testing by friendly customers
Acceptance testing: Testing by real customer after product delivery

##### Maintenance
* Corrective: Correct errors not discovered in testing phase.
* Perfective: Improving System Performance.
* Adaptive: Product able to run on new environments.

##### Shortcoming of Classical Waterfall Model
* No feedback paths
* Difficult to apply changes
* Inefficient error corrections
* No overlapping of phases, sequence maintenance.

#### Iterative Waterfall
Similar to Classical Model with small but effective changes:
* **Feedback paths** from every phase to preceeding phases.
* **Phase containment of errors**: Errors detected close to error commiting points.
* **Phase overlap**: Smooth transitions from one phase to another and not strict. i.e. one phase may not be completed before starting another.

#### Prototyping
* Before starting development a prototype is built
**Reason**
* Input data formats, mesages reports interactive dialogs are illustrated
* Examining technical issues and associated design decisions
* First Product Never Perfect and usually thrown away

The GUI of a software system is almost always developed using protoyping model
![[Pasted image 20220414233410.png]]

#### Evolutionary
* Incremental Model
* Users get to experiment with partially developed system

![[Pasted image 20220414233533.png]]

#### Spiral Model
proposed by Boehm in 1988
each loop of spiral represents a phase of software process
* **No fixed phases**
* Each loop is split into four sectors
![[Pasted image 20220414234718.png]]
1. Objective Setting
2. Risk assesment and Reduction
3. Development and Validation
4. Review and Planning of next phase


#### Comparing Different LCMs
| Iterative Waterfall                                      | Prototyping Model                       | Evolutionary Model          | Spiral Model |
| -------------------------------------------------------- | --------------------------------------- | --------------------------- | ------------ |
| Most Widely Used, suitable for well understood problems. | Sutable for project not well understood | Suitable for large Problems | Technically Challenging Software Product Design             |
