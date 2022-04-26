#### Introduction
* Software becoming very expesive.
	* Reusability good, Assemble software using premade modules.
	* This ensures reduces defects, less development time

Items that can be reused: basically all the development phases:
* Specification
* Design
* Code
* Test cases
* and also knowledge

#### Basic Issues
Why no software reuse: systems similar to last systems causes frustration, so everything is built from scratch, and the one at hand is behind schedule so no time for similarity.
* Available components difficult to understand
* Difficulty in adaptation.

Mathematical functions are constant therefore no use of rewriting them, as they are already in the most correct and efficient form. Everything is standardized for use.

##### Component Creation
* Identify reusable components
##### Component Index
* Classification of identified components
##### Search
* Searching for the right component
* **Approximate automated search**: locate those that fulfull specification
* **Browsing**: keyword search
##### Understand
* To use, complete understanding required.
* Adaptation also required and cannot be 100% accurate
##### Repo Maintenance
* Older apps obselete (need to be removed), components require change.
* Once everything is standardised, no more change is required.

#### Domain Analysis
* Aim is to identify reusable components for a problem domain.
* Characterized by similarity in pattern of software
* Domain is technical knowledge of problem area, logical notations. Domain example: Banking software, Business Presentation Software.

**Analysis**:
* indetify objects, operations and relations between them
* more difficult that structured analysis

**Result of analysis**:
* Application Generators and dev standards
* Community of SE get together and discuss community wide solutions

Construction of Reusable components is known as **Domain Engineering**.

##### Stages
Stage 1: no clear notations set, software written from scratch
Stage 2: similar problems solved in similar manner.
Stage 3: Set of concepts stabilized, standardized solutions, component reuse
Stage 4: Fully explored, automation possible, application generators can be used

##### Classification
* Hardware components are classified in multilevel hierarchy, naming standardized.
* At lower level: Pseudo Code representation of components
* At higher level: Defintion of program logic

#### Prieto-Diaz's Classification scheme
> Each Component described using number of different characterisitcs
##### Object Classification
* Actions they embody
* Object they manipulate
* DS used
* Systems part of
##### Faceted Classification
* Component classified choosing an n-tuple that best fits component

##### Application Generators
Translate Specification into programs, using 4GL
* Specify variant and invariant, parts of subroutine that are not parameterized cannot be changed
**Advantages**: No bothering about implementation details, development effort reduced, few errors, easy to maintain
**Shortcomings**: No new features can be automatically translated.

#### Reuse at ORG level
* should be standard in all development phase.
* Extracting reusable knowledge from past projects difficult, becuase original devs not present
* Reusbility from immediate -> highly improbable
Steps:
* Assess product potential for reuse: isHardwareDependent() isDesignOptimal() etc
* Refine Product: Machine dependency removed, name, operation and exceptions generalization of objects, portability problem
* Integrate:

Portability Solution: Abstract versions of OS and IO procedures are called, platform related features are routed through portability interface.

#### Current State of Reuse
* Need for Management commitment
* Documentation needed
* Adequate profts