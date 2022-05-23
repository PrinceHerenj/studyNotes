##### M1
* Introduction to Internet
* LAN MAN WAN
* Working of Internet
	* ISP registration
	* *
* Requirements for Internet
* Usages
* Internet application
* Types of Website
* Client Server Model
	* Structure
	* Peer-to-Peer
	* Client Server
	* ClientProcess
	* Server Process
	* 2-Tier Architecture
	* 3-Tier architecture
	* Client Server Architecture Advantages and Disadvantages
* IP address
	* Class A: 1.0.0.0 to 126.0.0.0 (* Network ID | Subnet Mask = N H H H) Private IP 10.0.0.x
	* Class B: 128.0.0.0 to 191.255.0.0 (* Network ID = N N H H) Private IP 172.16.x.x to 172.31.x.x
	* Class C: 192.0.0.0 to 223.255.255.0 (* Network ID = N N N H) Private IP 192.x.x.x
	* Class D: 224 to 239
	* class E: 240 to 255
	* 127 for local host
	* $2^{totalbits}-2$ is number of usable host ip addresses 

	Example for 116.123.0.1 Belogs to Class hence N H H H
	Network ID = 116.0.0.0
	Subnet Mask = 255.0.0.0
	BroadcatID = 116.255.255.255
* IPv6
* Domain Name
* Domain Name Registration
* Internet Services
	* Email
	* FTP
	* Telnet
	* HTTP
	* TCP
* TCP IP Model
	* Application Layer
	* Transport Layer
	* Internet/Network Layer
	* Physical Level
* OSI Model
	* Application
	* Presentation
	* Session
	* Transport
	* Network
	* Data Link
	* Physical
* Advantages and Disadvantages of TCP IP
* HTTP
	* Client
	* Proxies
	* Server
	* Difference HTTP and HTTPS
	* Port
* URL and its Connections
* Cyber Law
* Persistent and Non Persistent Connection
* Web Caching
* Internet Security
	* Causes
	* Ways
##### M2
* History of HTML and W3C
* Basics of HTML
* Web Browsers
* Tags:empty tag
* Lists
	* ul has style="list-styletype: {disc|square|circle}"
	* ol has type={1,a,A,I,i}
	* ol has start attribute
* Links
	* absolute link <a/>
	* relative/local link
	* image with anchor
* <img/>
* <table/>
* <form/>
* GET and POST in form
* Frames
* CSS
	* Selector %%#id, .class%%
	* Property
	* Value
* Inline, Internal, External CSS
	* %%<link rel="stylesheet" type="text/css" href="style.css">%%
* <meta/>
	* %%<meta  name="viewport" content="widht=device-width, initial-scale=1.0">%%

##### M3
* XML
* Markup Language
* XML characteristics
	* Extensible
	* Carries data
	* public standard
* Usages
* Difference between XML and HTML
	* Use
	* tags
	* case-sensitivity
	* extension
* Features and Advantages
* How to write XML
* XML role in web development
* Prolog in XML
	* XML declaration
	* DTD
* XML element
* XML attributes
	* StringType
	* TokenizedType
	* EnumeratedType
* XML comment
* XML Validation
	* Well Formed XML
	* Valid XML
* Namespace in XML: Set of unique names
* Document Type Definition: used to describe XML in precise manner, for defining its structure
	* Types of DTD
	* Element Type Declaration
		* <!ELEMENT name (#PCDATA)>
		* Operators
	* Attribute Declaration 
		* <!ATTLIST ELEMENT_NAME ATTRIBUTE_NAME ATTRIBUTE_TYPE ATTRIBUTE_VALUE>
		* Types
	* Entity Declaration
		* <!ENTITY name "Anil Kumar">
		* usage: &name;
		* Internal and External
	* Built In Entities
		* &amp;
		* &apos;
		* &gt;
		* &lt;
		* &quot;
* Schemas: XSD, used to describe and validate the structure and content of XML data.
	* Types of XSD
		* Simple
		* Complex Type
		* Global Type
* Difference between XSD and DTD
	* Data Type
	* Namespace Support
	* Extensibility
* XML Parser: Software Library or package that provides a kind of interface for working with XML document.
	* XML Parser checks for proper format of XML
	* Goal is to transform XML document into a readable code.
	* MSXML
* XML DOM
	* Collection of nodes or pieces of information in a diagram
	* ![[Pasted image 20220522213406.png]]
	* ![[Pasted image 20220522213744.png]]
	* XmlDoc.getElementByTagName("students")[0].childNode[0].nodeValue;
* XML DOM Properties
	* x.nodeName
	* x.nodeVallue
	* x.parentNode
	* x.childNodes
	* x.attributes
* XML DOM methods
	* getElementsByTagName(name)
	* x.appendChild(node)
	* x.removeChild(node)

##### M4
* Servlet Definition
* Execution Philosophy
* Servlet advantages over applets
* Alternatives of servlet
* Strength associated with servlets
* Architecture of Servlet
* Life cycle of servlet
* Pictorial Representation of HttpServlet
* 3 Ways of creating Servlets
* Passing Parameters Directly
* Retrieve Parameters using Get and Post
* SERVER SIDE INCLUDE
* Cookies
* Limitations of cookies
* FILTERS
* Problems with servlets
* Security Issues
* JAVA SERVER PAGE
* JSP Engine
* JSP Components

##### M5
* Pass data control and data between pages
* JSP Scopes: page, request, session, application
* Database Connectivity
* JDBC Connectivity
* JDBC Architecture
* Basic Steps to load a driver
* SQL Statements
* Executing SQL statements
	* Connection object created
	* Statement object created using connection object (con.createStatement())
		* executeUpdate() to execute DDL
		* executeQuery() to execute DML
		* execute() can be used for both
* Atomic Transaction
* executeBatch()
* Pre-Compilation of Statements
* Retreiving Results
* Getting Database Information
	* getSQLKeywords()
	* getDatabaseProductName()
	* etc
* Scrollable and Updatable ResultSet
	* Statement obj =  connection.createStatement(scrollability type, concurrency mode);
	* type 
		* 1003: TYPE_FORWARD_ONLY
		* 1004: TYPE_SCROLL_INSENSITIVE
		* 1005: TYPE_SCROLL_SENSITIVE
	*  mode
		* 1007: CONCUR_READ_ONLY
		* 1008: CONCUR_UPDATABLE
	* rs.next() || rs.relative(1) for next row
	* rs.previous || rs.relative(-1) for prev row
	* rs.beforeFirst();
	* rs.afterLast();
	* rs.absolute(1) for first row
	* rs.absolute(-1) for last row
* ResultSetMetaData object for rs info
	* getColumnCount()
	* getColumnName()
	* etc