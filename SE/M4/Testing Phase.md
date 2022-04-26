#### Testing
How to test: Input test data -> Observe the output -> check if output as expected
Maximum number of SE are found to be engaged in testing activities.
As challenging and necessary as specification, design and coding

#### Testing Activities
1. Test Suite Desing
2. Running test cases and observing results to detect failures
3. Debug to locate errors
4. Correct Errors

#### Errors, Faults and Failures
* Failure is a manifestation of an error (aka defect or bug). Mere presence of an error may not lead to failure
* Fault is an incorrect state entered during execution. May or may not lead to failure

#### Test Suite
* Set of all test cases is called the test suite
 
 **Test Case:**
 A triplet $[I,S,O]$
 where I is input, S is state and O is expected output

#### Verification versus Validation
**Verification**: Whether output of one phase of developemtn conforms to previous phase.
* Concerned with Phase Containment of Errors.

**Validation**: Whether complete system conforms to SRS.
### Design of Test Cases
Optimal Test Suite is of reasonable size and uncovers many errors as possible
* Number of test cases in a randomly selected test suite does not indicate effectiveness of testing
* Each test case should detect different errors

####  Black Box Approach
* Test cases are designed using **Functional Specification of software** i.e. without any knowledge of internal structure of the software, thus also known as **functional testing**

##### Equivalence Class Partitioning
Input values to a test case are classified into an equivalence class. Programs then behave similarly to every input in the same ECP.
* Input Data specified by a range.

##### Boundary Value Analysis
Select Test cases at the boundaries of the range set by ECP

#### White Box Approach
* Require the internal sturcture of the software, aka **Structural Testing**

#####
#### Debugging
After Identification of errors identify location of errors and fix them.

##### Brute Force
* Least Efficient
* Program loaded with print statements
* Print Intermediate values

##### Symbolic Debugger
* Value of different variables can be easily checked and modified
* Single stepping to execute one instruction at a time.
* Break Points and Watch Points

##### Backtracking
* Source Code tracked backwards until error is discovered
* Unmanageably large for complex programs

##### Cause Elimination Method
* Determine a list of causes which could have contributed to error
* Tests conducted to eliminate each
* Software Fault Tree Analysis

##### Program Slicing
Similar to Backtracking but the debugger's search space is reduces by defining slices.
* Set of source lines preceding this statement which can influence the value of the variable

#### Debugging Guidelines
* Don't Fix the error symptoms but the error
* Error correction may introduce new errors
* Regression/ Linearity Testing afer each round of error fixing

#### Program Analysis Tools
* takes program souce code as input
* produces reports in alignment to important features such as size, complexity, adequacy of commenting, adherence to programming standards, SRS etc.

##### Static analysis tools
Asses above properties of a program without executing it
* Analyze source code, provide analytical conclusions
* Code walkthrough and inspection also considered as static anaysis methods
* However, static program analysis is used for automated analysis

##### Dynamic analysis tools
* Recording of behavior
* Produce reports such as **adequacy of test cases**

#### Types of Testing
##### Unit Testing: 
Every module is individually tested in isolation. 
* Makes debugging easier.
* Other modules to interact with may not be ready

##### Integration Testing
After complete Unit Testing, Integration is done according to **integration plan** which involves integration through a number of steps.
* During each integration step, a number of modules are added to the partially integrated system and the partial system is tested.
* **Phased**: Multiple related modules added at a time
* **Incremental**: Only one module added at a time

**Big Bang IT**
* All modules are simply put together and tested
* useful for very small systems
* Debugging errors found is expensive

**Bottom Up**
* Integrate bottom level modules first, then slowly move above on the module structure tree

**Top Down**
* Starts with integration of the main routine, then subroutines and then individual functions

**Mixed Integration Testing**
* Use both Bottom up and Top Down approaches

##### System Testing
* The completely integrated system is tested against the SRS document.

**Alpha Testing**: Carried out by test team in dev org
**Beta Testing**: Carried out by group of friendly customers
**Acceptance Testing**: Carried out by general customer, to determine acceptance or rejection

##### Other Testings
**Stress Testing**: Imposing abnormal input to stress the capabilities of the system.

**Volume Testing**: Fields records and files are stressed to check if their size can accomodate all possible data.

**Configuration Testing**: Analyse system behavior in various hardware and software configurations

**Compatability Testing**: Check whether interface functions as required.

**Recovery Testing**: Presence of faults or to the loss of data, power, devices or services.

**Maintenance Testing**: Diagnostic tools and procedures help find source of problems

**Documentation Tests**: Check that consistent updated requried documents like user guide, maintenance guide exist

**Usability Testing**: Display Screens, Messages, Report Formats, navigation and selection problems

**Environment Testing**: Test to check the system's ability to perform at installation site, Heat, Humidity, Chemical Presence, Portability etc.

**Regression Testing**: Test Suite reinstated after each bug fix to ensure no new bugs introduced.

#### Error Seeding
Artificially created errors are introduced to systema and then testing is carried out to tet the error detection
* N is total errors, n found by testing
* S is total number of seeded errors, s is detected seeded errors
* Remaining Defects
  $N-n=n((S-s)/s)$

#### [[Data Flow Based Testing]]
