### Question 10
##### index.xml
```xml
<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<!-- NAME: Sneh Prince Herenj, ROLL: BCA40560.20, FILE CREATED: 20/06/22 12:20PM -->
<!-- Question 10: Create an XML document for employee information system. Create a DTD and link the DTD to the 
XML document -->

<!DOCTYPE empInfoSys SYSTEM "index.dtd">
<empInfoSys>
    <employee>
        <empno>5826</empno>
        <ename>Sneh</ename>
        <dob>22-Jan-2002</dob>
        <hiredate>15-Jun-2016</hiredate>
        <job>MANAGER</job>
        <dname>Orgn</dname>
        <manager>0</manager>
    </employee>
    <employee>
        <empno>2846</empno>
        <ename>Shipha</ename>
        <dob>08-Jan-2008</dob>
        <hiredate>29-Aug-2019</hiredate>
        <job>CLERK</job>
        <dname>Orgn</dname>
        <manager>5826</manager>
    </employee>
</empInfoSys>
```

##### index.dtd
```dtd
<!ELEMENT empInfoSys (employee+)>
<!ELEMENT employee (empno,ename,dob,hiredate,job,dname,manager)>
<!ELEMENT empno (#PCDATA)>
<!ELEMENT ename (#PCDATA)>
<!ELEMENT dob (#PCDATA)>
<!ELEMENT hiredate (#PCDATA)>
<!ELEMENT job (#PCDATA)>
<!ELEMENT dname (#PCDATA)>
<!ELEMENT manager (#PCDATA)>
```

##### Output
![[CA221/Attachments/Output 010.png]]

---

### Question 11
##### index.xml
```xml
<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<!-- NAME: Sneh Prince Herenj, ROLL: BCA40560.20, FILE CREATED: 20/06/22 12:26PM -->
<!-- Question 11: Create an XML schema for an XML file, which contains information about books that are available in the library -->

<library xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="index.xsd">
    <book>
        <book_id>123</book_id>
        <book_name>Atomic Habits</book_name>
        <author>James Clear</author>
        <availability>yes</availability>
        <published>2018-10-16</published>
    </book>
    <book>
        <book_id>456</book_id>
        <book_name>Why We Sleep</book_name>
        <author>Matthew Walker</author>
        <availability>yes</availability>
        <published>2017-09-28</published>
    </book>
</library>
```

##### index.xsd
```xsd
<?xml version="1.0" encoding="UTF-8"?>
<xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema">
    <xs:element name="library">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="book" maxOccurs="unbounded">
                    <xs:complexType>
                        <xs:sequence>
                            <xs:element name="book_id" type="xs:string" />
                            <xs:element name="book_name" type="xs:string" />
                            <xs:element name="author" type="xs:string" />
                            <xs:element name="availability" type="xs:string" />
                            <xs:element name="published" type="xs:date" />
                        </xs:sequence>
                    </xs:complexType>
                </xs:element>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
</xs:schema>
```

##### Output
![[CA221/Attachments/Output 011.png]]

---

### Question 12
##### servletInfo.java
```java
// NAME: Sneh Prince Herenj, ROLL: BCA40560.20, FILE CREATED: 20/06/22 12:26PM
// Question 12: Write a Servlet Program that displays server information (server name, port etc.)

import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

public class servletInfo extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        out.println("Server Name: " + req.getServerName() + "<br>");
        out.println("Server Port: " + req.getServerPort() + "<br>");
        out.println("Server Information: " + req.getServletContext().getServerInfo() + "<br>");
    }
}
```

##### Output
![[CA221/Attachments/Output 012.png]]

---
