#### Software Maintenance
* Any modification to a software after it has been published and delivered to customer is known as maintenance. Important activity for many orgs
* Maintenance inevitable for any product, due to wear and tear caused by use, but software product do not need maintenance on this count.

> Bad products are thrown away, Good products are maintained and used for a long time.

Maintenance is done for three reasons:
1. Corrective maintenance
   * correction of bugs observed while system in use.
   * enhance performance of product
2. Adaptive maintenance
   * running the product on new operating systems.
   * on complete new system with newer hardware and software.
3. Perfective maintenance
   * support new features
   * change funtionality due to customer demands.

Corrective:Adaptive:Perfective = 22:28:50

##### Cause for maintenance
* Software not anticipated to last very long
* Hardware becomes obsolete
* Immortality of software products
* necessary for low-level software functions.
* run in new environments; with more features.
* when other interactive software changes, the primary software has to be maintained.

##### Software Evolution
* Through maintenance, software evolves.
* Large software stay in operation for long time, due to high replacement cost

##### Laws of Maintenance
* Always old software needing maintenance
* Good products maintained, bad thrown away

##### Lehman's Laws of maintenance
1. Software products must change continuously, or progressively become less useful.
2. When software is maintained, its structure degrades until active efforts are made to avoid this.
3. Over a program's life time, rate of developemtn is approximately constant.

##### Legacy code - Major maintenance problems
* Unstructured
* Insufficient knowledge of app domain: Even after reading all documents, difficult to understand.
* Absence of documentation

* Maintainers are skilled not only in writing code
	* proefficient in understanding others' code
	* detecting problems, modyfying design, code and documentation
	* working with end-users

##### Nightmares
* Use of goto construct
* Lengthy functions
* Poor Naming, module structure
* Weak Cohesion, High Coupling
* Deep nesting

#### How to do better maintenance
* Program understanding
* Reverse engineering
* Design recovery
* Reengineering
* Maintenance process models

#### Maintenance activities
##### Productive Activities
* Modificaiton of analysis, design, coding
##### Non productive activities
* Understanding system design, code

##### Software Reverse Engineering: Intro
Analysis helps recover the design and requirement specifications

RE is a maintenance technique, it is used because:
* Existing products are unstructured
* Lack proper documentation
* not developed using SE principles

First carry out cosmetic changes to the code to improve.
* Readibility
* Structure
* Understandability

Reformat -> Assign meaningful names -> simplify conditions -> replace GOTOs 
->Simplify Processing

In order to extract the design: fully understand the code.
Automatic derivation data flow and control flow diagrams
**Structure Chart**: Module invocation sequence and data interchange among modules.
**Requirement Specification**: Design extraction.

### Software Maintenance Process Models
#### Model 1
* Changes which are small and simple.
	* Direct modification of code.
	* Changes reflected in all relevant documents.

Gather Change Requirements -> Analyze -> Device code changes -> Apply code changes 
 -> update documents; integrate and test

#### Model 2
* Complex maintenance require softwre re-engineering
	* a RE cycle followed by a forward engineering cycle.


##### Software Re-engineering
* Old Code is analyzed to product module specifications
* Module Specification are analyzed to produce design
* Design is analyzed to product original requirements specification
* Original RS -> New RS
from here on Forward Engineering is carried out. Substantial reuse of Reverse engineering products

##### Advantages of Re-engineering
* Product better design than original.
* Required documents.
* Higher efficiency.

Efficiency improvements are brought about by better design however more costly.
Empirical study indicates model 1 preferable when amount of rework is no more than 15%.

Model 2 used when
* Amount of rework high
* High failure rate.
* Product difficult to understand.

