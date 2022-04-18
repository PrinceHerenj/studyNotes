**Cohesion** is a measure of
* functional strength of a module.
* A cohesive module performs a single task or function.

**Classification of Cohesion**
* Functional: Can be expressed as single sentence.
* Sequential: Output from one module, Input to other module
* Communicatinal: Reference the same data structure.
* Procedural: Ordered execution
* Temporal: All tasks must be executed in same time span.
* Logical: All modules perform similar operation
* Coincidental: Randomly organized

**Coupling** between two modules
* Degree of interdependence or interation between the two modules.

By Low Coupling
* Code is better understandable.
* **Complexity is reduced.**
* Reusability of code
* Errors reduced

**Classification of Coupling**
* Data: Communicate via a parameter
* Stamp: Communicate via a composite data item, such as struct
* Control: Order of instruction execution in another.
* Common: Share some global data.
* Content: If they share code.
