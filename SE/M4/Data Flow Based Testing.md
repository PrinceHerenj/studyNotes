#### Data Flow based Testing
Selects test paths of a program according to the definitions and uses of different variables in a program

For a statement numbered $S$
$DEF(S)$ = $\{X|\text{statement }S\text{ contains a definition of }X\}$
$USES(S)$ = $\{X|\text{statement }S\text{ contains a use of }X\}$

A variable X is said to be live at statement S1, if X is defined at S, there exists a path from S to S1 not containing any definition of X

##### Definition Use Chain
$[X,S,S1]$
$S\ and\ S1$ are statement numbers
$X\ in\ DEF(S)$
$X\ in\ USES(S1)$
and Definition of $X$ in statement $S$ live at $S1$

**Testing**: Every DU chaing in a program be covered at least once.

#### Mutation Testing
* Software is first tested using white box stratergies
* After initial testing, mutation testing is taken up
* Idea behind mutation testing: make small changes to a program at a time.
* Each time the program is changed, it is called **mutated program** and change is called a **mutant**.
* Mutated program is tested against hte full test suite, if incorrect result found, mutant declared dead.
* Test Suite is enhanced to kill the mutant, Primitive changes in mutation: altering operator, changing value of constant, chaning data types

#### Cause and Effect Graphs
* Examine requirements
* Restate them as logical relations between inputs and outputs => results in boolena graph representing the relationships called cause effect graph.
* Convert the graph to a decision table
![[Pasted image 20220423231602.png]]
  ![[Pasted image 20220423231549.png]]
  