#### Introduction
* Responsible for all interactios with the user.
* Users judge a software from its user interface.
* Difficult interface, -> higher levels of user errors.
	* User dissatisfaction.
* as much as 50% of the total development effort is spent on the user interface part. If not developed systematically, effort required to develop the interface would increase tremendously.

#### Characteristics
* **Simple to learn; Speedy Learning**
	* should not require users to memorize commands
	* Once command learned, should be able to use similar commands.
	* use concepts that users already fimilar with
* **Speed of Use**
	* time and effort necessary to initiate and execute different commands. should be minimal
	Bad Interface:
	* Lengthy commands
	* Moving mouse to different areas of a screen
* **Speed of Recall**
	* Retrieval of related details from memory should be minimized.
	* **Error Rate**: should be minimized. measured by counting the error commited by different users. Must be automated.
	* **Error Possibilities**: should be reduced by consistent commands, issue procedures, behaviour of similar commands and simplicity of command issure procedure.
* **Attractive**
	* Attractive UI catches user attention
	* GUI >>>>> CUI
* **Consistency**: allow users to generalize the knowledge about one aspect of the interface to another.
* **Feedback**: Periodic information about progress made in processing the command. in absense of feedback, user might panic shutdown the PC.
* **Multiple Skill Levels**:
	* different levels of sophistication
	* Experienced users concerned about speed of command, novice user look for usability aspects.
	* Novices discouraged by cryptic or comples commands
	* Elaborate commands slow down command issue procedure, put off expierienced users.
	* Look for hotkeys or macros when familiar.
* **Error Recovery**:
	* Allow users to undo mistakes
* **User Guidance and Online Help**
* **Error Messages:** Polite error messages

#### Mode Bases versus Modeless Interface
A mode is state or collection of states. In each state the different types of commands are available.
**Modeless**: same set of commands available at all times.
**Mode-based**: different set of commands available depending on mode. Represented by State Diagram.

#### GUI vs CUI
In GUI
* Several Windows are simultaenously displayed.
* Users can interact with several related items.
* Very appealing and easy to remember.
* User friendly menu
* Pointing device like mouse used.
* Require special terminal systems with graphic power.

In CUI
* run on cheap alphanumeric terminals


#### Types of UI
Modern applications sport a combination of three types of interfaces.
Choice depends on expierience and discretion of designer

##### Command Language based
* Incorporate language to form commands
* Users frame the command and type

**Design process**
* Determine all commands required.
* Assign unique command names.
* Complex CLI allow users to compose commands to execute.
	* typing requried.
	* faster interaction
	* simplify number of inputs

**Advantages**
* Easy to develop
* Can be implemented on cheap machines
* Efficient
**Disadvantages**
* Memorization
* Users make errors.
* Only Keyboard

##### Menu Based
**Advantages**
* Not required to learn commands
* Typing is minimal, usage of mouse
* Expieriences users can type fast, get speed advantage using composition and also connectives
* If number of choices large, menu based UI not feasible.

**Design**
Any one used
* Walking Menu
	* structure large menus, when one selected further menu items are displayed
* Scrolling Menu
	* Highly Related menu options like in text editor
* Hierarchical Menu
	* Selecting a menu causes a menu to be replaced by appropriate submenu

##### Direct Manipulation based
Information Present as Objects or visual Models
**Icon Interfaces**

#### Design using Windowing Systems
Modern GUIs use windowing system
Display using set of windows

##### Window
* Rectangle area of screen
* Virtual screen for interfacing independent activities
	* Client Part: Whole of window except borders and scroll bar. Available to programmer
	* Non Client Part: Available to window manager.

##### Window Management System
* Necessary to have some systematic way to manage windows.
* WMS is a resource manager, keeps track of screen area resource, allocates it to the different windows which are using the screen
	* Provides basic actions such as move, resize, iconify windows
	* routines to manipulate windows, such as create, destroy and render.

WMS consists of 
* **Window manager**: User interacts with Window Manager, which is built on top of window system. Manager uses services provided by System. Decides look and behaviour fo windows
* **Window system**: Provides routines and opeartions to be performed.

##### Widgets 
Widget is short for window object.
* Building blocks of interface design
* Data of window object are: Geometric attributes size and location and general attributes like foreground and background color.

Advantages
* Provide Consistency
* Improve user's productivity by higher performance and lesser errors

#### UI Design Methodology
No step by step methodology is available.
* User Centered design is the theme of almost all modern user interface design techniques.