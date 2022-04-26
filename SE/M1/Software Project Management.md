#### Definition
Software Project Management enables a team of developers to work efficiently towards successful completion of a software project.

#### Project Manager Responsiblities
* Project Proposal Writing
* Project Cost Estimation
* Scheduling
* Project Staffing
* Project Monitoring and control
* Risk Management
* Managerial Report Writing and presentations

#### Project Planning
Once found feasible, a project manager undertake project planning.
##### Activities Include:
* Estimation
	* Effort, Cost, Resource, Duration
* Project Scheduling: After project parameters have been estimated, the schedule for manpower and other resources
* Staff Organization: Staffing plans are made.
* Risk Handling: Risk Identification, Analysis
* Misc plans: Quality Assurance

##### Sliding Window Planning
* Planning over several stages
* prevent big commitments too early
* Facilitates accurate planning; more info availabe as project progresses
* **[[Software Project Management Plan]]** document store the complete plan

#### Project Size Estimation Metrics
The project size is a measure of the problem complexity in terms of effort and time required.
![[Pasted image 20220415000806.png]]

##### Lines of Code
* This metric measure the size of a project by counting the number of source instructions in the developed program. Simplest and Wide Usage, Comments and Blank Lines not counted.
* It is a measure of coding activity alone.
* LOC count depends on the choice of specific instructions from random developer.
* It correlates poorly with the quality and efficieny of code.
* Can only be estimated after development completed.

##### Function Point
* The function point metrix is based on the idea that a softwre product supporting many features/functions would certainly be of larger size than a product with less number of features/functions.
* Size dependent on number of files and interfaces.

**Computation of Function Point**
* Step 1: Computating the **unadjusted function point** using a mathematical expression
* Step 2: Refine UFP to reflect the actual complexities of real parameters
* Step 3: Computer FP by further refining UFP

**FP Computation**

$UFP=(\text{inputs}\times4)+(\text{outputs}\times5)+(\text{inquiries}\times4)+(\text{files}\times10)+(\text{interfaces}\times10)$ 
Scale $S$ varies from 0 to 5.
$F$ is calculated as $F=14\times S$
Complexity Adjustment Factor $CAF=0.65+(0.01\times F)$
Final Function Point = $FP=CAF\times UFP$

---
Example: 3 Inputs, 2 Outputs, 1 Inquiry, 2 Files, 0 Interfaces

Step 1: $UFP=(2\times 4)+(3\times 5)+(1\times 4)+(2\times 10)+(0\times 10) = 47$
Step 2: UFP adjusted as $UFP=(3\times 4)+(2\times 5)+(1\times 4)+(2\times 10)+(0\times 10) = 46$
Step 3:

$S=4$
Degree of Influence $F=S\times 14=56$
$CAF=0.65 + (F\times 0.01) = 1.21$
$FP=CAF\times UFP = 1.21\times 46=55.66$
Therefore Function Point Metric is 55.66

#### Project  Estimation Techniques
From Size Estimation Metrics, determine effort and time estimation, and provide total cost of Project
* **Empirical Techniques**: Educated guess from previous projects.
	* Expert Judgement
	* Delphi Cost Estimation: SRS distributed to team of expert reviewers via coordinator. Individually submit cost estimate. Summarized
* **Heuristic Technique**: Mathematical expression relation the parameters in the product
  Single Variable Estimated Parameter: $\large c_1\times e^{d_1}$
  Multi Variable Estimated Resource= $\large c_1\times e^{d_1}+c_2\times e^{d_2}+...$  where $e$ is estimation, c and d are constants
* **Analytical Technique**: Results from simple assumptions.

#### COCOMO
Constructive Cost Estimation Model proposed by Boehm in 1981
Subdivided into three phases
* Basic COCOMO
* intermediate COCOMO
* complete COCOMO

##### Basic COCOMO
Divided into three classes of Software development products
* **Organic**: Small team size with experienced members, Problem well Understood and solved before
* **Semi Detached**: Mixed team with experienced and newbie members. Comparatively less familiar difficult to develop products.
* **Embedded**: Large Team size required. Highest Complexity Products, being codeveloped with embedding hardware.

**Terminology**
Person Month: Effort measurement put in by a person in a month.

**General Form of Basic COCOMO**
$\text{Effort}=a_1\times (KLOC)^{a_2} PM$ 
$Time_{dev}=b_1\times \text{Effort}^{b_2} \text{ months}$
where $a_1,a_2,b_1,b_2$ are constants that differ for each class of COCOMO
KLOC is Kilo LinesOfCode

Constant Table
$b_1 \text { remains constant at }2.5$
|       | Organic | Semi-Detached | Embedded |
| ----- | ------- | ------------- | -------- |
| $a_1$ | 2.4     | 3.0           | 3.6      |
| $a_2$ | 1.05    | 1.12          | 1.2      |
| $b_2$ | 0.38    | 0.35          | 0.32     | 

Cost is then Finally calculated by multiplying estimated effort bu manpower cost per month.

Example:
KLOC = 32
Cost per Person per Month = 15k
Type: Organic

$\text {Effort}=2.4\times (32)^{1.05}\text{ PM}=91\text{ PM}$
$Time_{dev} = 2.5 \times (91)^{0.38} \text{ months} = 14 \text{ months}$
$\text {Cost}=Effort\times \text{ Cost per month} = 91\times 15k = 1,465k$

##### Intermediate COCOMO
This model refines the initial estimate by scaling estimate up or down based on evaluation of a set of attributes:
* Product: Complexity, Reliability Requirements
* Computer: Execution Speed, Storage
* Personnel: Expierience Level
* Development Environment: CASE tools

##### Complete COCOMO
It considers the difference in characteristics of the subsystems and estimates the effort and development time as sum of estimates of individual sub-systems

Say a software has the following components
* Database
* GUI
* Communications

Then each of the components has individual intermediate COCOMO estimation and are added together at the end of development