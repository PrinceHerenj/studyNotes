#### Coding
The input of coding phase is the Design document
* Modules are identified and coded according to the [[SRS]] document

After design phase, we have
* Module structure of the system.
* Module specifications like data structure and algorithms

**Objective**
* Transform design into code
* Unit test the code

#### Coding Standards/Review
Strictly follow standard style of coding standards
* Gives uniform appearance to the code
* Enhances code understanding

##### Standards
* Limiting use of globals, Naming conventions
* Header Data:
	* Name of module
	* Date of creation
	* Author
	* Modification history
	* Synopsis
	* Functionality with IO
	* global variables access/modification
* Error Return conventions and exception handling mechanisms should be standardised.
* Obscure side effects of a function call, like changing of global variables.
* Each variable must be given a name indicating its purpose. If not then leads to confusion and annoyance.
* Code should be well documented, one comment per three lines of code and each function maximum of ten source lines.
	* Lengthy functions difficult to understand, does many different things
* **DO NOT USE GOTO STATEMENTS**

##### Code Walkthrough (Runtime Error)
Dev team select test cases, simulate execution of code by using these cases. (informal technique). Although informal, its effective with guidelines based on personal expierience, common senes and several subjective factors.
**Emphasis on Error Discovery**
To foster cooperation
* don't evaluate walkthrough

##### Code inspection (Logical Error)
* Code Inspection aiming at discovering commonly made errors. 

Example: Writing a procedure that modifies a formal parameter, while calling with a constant, changed the actual parameter
Not discovered with walkthrough, but with inspection.

A good team collects earlier commited errors.

* Use of uninitialized variables
* Non Terminating Loops
* Array Indices out of bounds
* Etc.

