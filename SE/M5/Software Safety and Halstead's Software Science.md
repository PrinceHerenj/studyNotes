### General Concepts of Software Safety
**Fail Safe**: designing the system such that when it sustains a specified fault, it fails in a safe mode.
**Fail Stop**: When faults occur, provide a stopping mechanism

#### Fault Avoidance
At Design Time,
* tune design and implementation process
	* precise specification
	* quality principles
	* abstraction
	* [[strongly typed]]
	* restrict error prone constructs

#### Fault Detection
At Implementation and Testing Time,
* Verification
* Validation
	* Static
	* Dynamic

##### Checksums
* Apply mathmatical function to data, should always give unique value
##### Watchdog timers
* Function must complete within specific time period
##### Checkpointing
* System is duplicated perodically, when error discovered correct state restored.

#### Fault Tolerance
At Execution Time,
even if faults occur, allow operation to proceed
* **detection**: to determine if fault has occured
* **diagnosis**: to determine what cause fault
* **damage assessment containment**: detect affected parts, prevent spreading
* **recovery**: reset to a known safe state
	* forward error recovery: correction 
	  Use redundant information with data corruption and corrupt linked structures
	* backward error recovery: reseting to previous state
* **repair**: modify accordingly

##### Hardware Fault Tolerance
Triple Modular Redundancy
* Hardware module replicated three times, outputs compared, voting for correct result
##### Software Fault Tolenrance
N-Version Programming
* different version of softwar, outputs compared, voted, inconsisted outputs rejected.
Recovery Block
* Acceptance test
* Try blocks
##### Exception Handling
* When an unexpected event occurs, control is transferred to the system's exception handline mechnism

#### Safety Life Cycle
**Hazard**: Condition with potential for causing contribution to mishap.
**analysis of hazard**: analyze the system and its environment detect causes of hazards

#### Fault tree analysis
* For each hazard,
	* a detailed analysis is carried out to discover the causes.
	* its performed by bottom up approach
* Hazard at root of tree; leaves are potential causes of hazard.

### Halstead's Software Science
Analytical Technique to measure size, effort and dev time.

Using primitive program parameters, Halstead developed expression for
* Program Length
* Potential Minimum Volume
* Actual volume
* Language level
* effort
* dev time.

$n_1$ = number of unique operators
$n_2$ = number of unique operands
N1 = total operators
N2 = total operands

Length N = N1+N2
Vocabulary $n$= $n_1+n_2$

Volume V = N $log_2\ n$ is minumum no of bits
$V^*$ = Potential mimum volume = $(2+n_2^*)\times log_2\ (2+n_2^*)$
Program Level L = $V^*/$ V
Language Level $\lambda = L^2\times V$ 
Effort E = V/L = $V^2/V^*$
Time T = E/S where S is speed of mental discriminations

Estimated Length N = $n_1log\ n_1+ n_2log\ n_2$
