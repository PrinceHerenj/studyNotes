### Question 22
##### index.jsp
```jsp
<%-- NAME: Sneh Prince Herenj, ROLL: BCA40560.20, FILE CREATED: 05/07/22 12:05PM
Question 22: Write a jsp program to display student records stored in the database --%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Question 22</title>
  </head>
  <body>
  <%@page import="java.sql.*" %>
  <%
     Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orclGlobal", "sys as sysdba", "Sh353478");
     Statement st = con.createStatement();
     ResultSet rs = st.executeQuery("select * from stud");
     ResultSetMetaData rsmd = rs.getMetaData();
     int colCount = rsmd.getColumnCount();
     out.print("<table><tr>");
     for (int i = 1; i <= colCount; i++)
      out.print("<th>" + rsmd.getColumnName(i) + "</th>");
     out.print("</tr>");
     while (rs.next()) {
      out.print("<tr>");
      for (int i = 1; i <= colCount; i++)
        out.print("<td>"+rs.getString(i) + "</td>");
     out.print("</tr>");
     }
  %>
  </body>
</html>
```

##### Output
![[CA221/Attachments/Output 022.png]]

---
### Question 23
##### index.jsp
```jsp
<%-- NAME: Sneh Prince Herenj, ROLL: BCA40560.20, FILE CREATED: 05/07/22 12:45PM
Question 23: Write a jsp program to display student records stored in the database --%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Question 23</title>
  </head>
  <body>
  <%@page import="java.sql.*" %>
  <%
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orclGlobal", "sys as sysdba", "Sh353478");
    Statement st = con.createStatement();
    String matno = request.getParameter("matno");
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    String dob = request.getParameter("dob");

    String toInsert = "INSERT INTO STUD VALUES ("; 
    toInsert += matno+ ",'"+fname+"','"+lname+"',to_date('"+dob+"','dd-mm-yyyy'))";
    st.executeUpdate(toInsert);
    out.println("Insertion Complete, Printing data table");
    // printing
    ResultSet rs = st.executeQuery("select * from stud");
    ResultSetMetaData rsmd = rs.getMetaData();
    int colCount = rsmd.getColumnCount();
    out.print("<table><tr>");
    for (int i = 1; i <= colCount; i++)
    out.print("<th>" + rsmd.getColumnName(i) + "</th>");
    out.print("</tr>");
    while (rs.next()) {
    out.print("<tr>");
    for (int i = 1; i <= colCount; i++)
    out.print("<td>"+rs.getString(i) + "</td>");
    out.print("</tr>");
    }
  %>
  </body>
</html>
```

##### form.html
```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Question 23</title>
  </head>
  <body>
    <div style="text-align: center">
      <form action="index.jsp" method="get">
        <label for="matno">
          Enter Matric number:
          <input type="text" name="matno" id="matno" /> </label
        ><br />
        <label for="fname">
          Enter First name:
          <input type="text" name="fname" id="fname" /> </label
        ><br />
        <label for="lname">
          Enter Surname: <input type="text" name="lname" id="lname" /> </label
        ><br />
        <label for="dob">
          Enter Date of Birth in dd-mm-yyyy format:
          <input type="text" name="dob" id="dob" /> </label
        ><br />
        <input type="submit" value="Submit" />
      </form>
    </div>
  </body>
</html>
```

##### Output
form.html
![[CA221/Attachments/Output 023.png]]

index.jsp
![[Output 023_1.png]]

---
### Question 24
##### getDBinfo.java
```java
// NAME: Sneh Prince Herenj, ROLL: BCA40560.20, FILE CREATED: 05/07/22 01:20PM
// Write a program, using servlet and JDBC which takes students roll number and
// provides student
// information, which includes the name of the student, address, email-id,
// program of study, and
// year of admission. You have to use a database to store student’s information

import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class getDBinfo extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse res)
            throws IOException, ServletException {
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        try {
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orclGlobal", "sys as sysdba",
                    "Sh353478");
            Statement st = con.createStatement();
            String roll = req.getParameter("roll");
            ResultSet rs = st.executeQuery("select * from studq where rollno = " + roll);
            ResultSetMetaData rsmd = rs.getMetaData();
            int colCount = rsmd.getColumnCount();
            out.print("<table><tr>");
            for (int i = 1; i <= colCount; i++)
                out.print("<th>" + rsmd.getColumnName(i) + "</th>");
            out.print("</tr>");
            while (rs.next()) {
                out.print("<tr>");
                for (int i = 1; i <= colCount; i++)
                    out.print("<td>" + rs.getString(i) + "</td>");
                out.print("</tr>");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
```

##### form.html
```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Question 24</title>
  </head>
  <body>
    <div style="text-align: center">
      <form action="/wt/getDBinfo" method="get">
        Enter Roll Number: <input type="text" name="roll" id="roll" />
        <input type="submit" value="Submit" />
      </form>
    </div>
  </body>
</html>

```

##### mapping
```xml
<webapp>
	<servlet>
        <servlet-name>getDBinfo</servlet-name>
        <servlet-class>getDBinfo</servlet-class>
    </servlet>

    <servlet-mapping>
        <servlet-name>getDBinfo</servlet-name>
        <url-pattern>/getDBinfo</url-pattern>
    </servlet-mapping>
</webapp>
```

##### Output
form.html
![[CA221/Attachments/Output 024.png]]

servlet
![[Output 024_1.png]]
