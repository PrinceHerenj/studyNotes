### Question 25
##### index.jsp
```jsp
<%-- NAME: Sneh Prince Herenj, ROLL: BCA40560.20, FILE CREATED: 11/07/22 12:05PM
Question 25: Write program of Q25. with login and password protection. Display a message if login and password 
are not correctly given --%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Question 25</title>
  </head>
  <body>
    <%
      String name = request.getParameter("name");
      String pass = request.getParameter("pass");
      if (pass.equals("mk24")) {
    %>
    <jsp:forward page="home.jsp">
    <jsp:param name="name" value='<%=request.getParameter("name")%>'/>
    </jsp:forward>
    <% } else  out.print("Incorrect Pass: Try Again!");
    %>
  </body>
</html>
```

##### form.html
```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Question 25</title>
  </head>
  <body>
    <form action="index.jsp" method="get">
      Name: <input type="text" name="name" id="name" /> <br>
      Password:
      <input type="text" name="pass" id="pass" />
      <input type="submit" value="Submit" />
    </form>
  </body>
</html>
```

##### home.jsp
```jsp
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Question 25</title>
  </head>
  <body>
    <%
      String name = request.getParameter("name");
      out.print("Welcome: "+name);
    %>
  </body>
</html>
```

##### Output
when incorrect password:
![[CA221/Attachments/Output 025.png]]
![[Output 025_1.png]]

when password correct:
![[Output 025_2.png]]
![[Output 025_3.png]]

---
### Question 26
##### index.jsp
```jsp
<%-- NAME: Sneh Prince Herenj, ROLL: BCA40560.20, FILE CREATED: 11/07/22 12:35PM
Question 26: Create a database of students. Write a program using jsp to display the name, course, semester for 
those students who have more than 3 backlogs --%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Question 26</title>
  </head>
  <body>
  <%@page import="java.sql.*" %>
  <%
     Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orclGlobal", "sys as sysdba", "Sh353478");
     Statement st = con.createStatement();
     ResultSet rs = st.executeQuery("select roll, name, course, semester, backlog from stdbclg where backlog > 3");
     ResultSetMetaData rsmd = rs.getMetaData();
     int colCount = rsmd.getColumnCount();
     out.print("<h4>Students having more than 3 backlogs</h4>");
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
     con.close();
  %>
  </body>
</html>
```

##### Output
complete table
![[CA221/Attachments/Output 026.png]]
JSP output
![[Output 026_1.png]]

---
### Question 27
##### index.jsp
```jsp
<%-- NAME: Sneh Prince Herenj, ROLL: BCA40560.20, FILE CREATED: 11/07/22 12:45PM
Question 27: Create a database of students who are in the 5th Semester of the BCA. Write a program using JSP and 
JDBC to display the name and address of those students who are born after 1995 --%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Question 27</title>
  </head>
  <body>
  <%@page import="java.sql.*" %>
  <%
     Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orclGlobal", "sys as sysdba", "Sh353478");
     Statement st = con.createStatement();
     ResultSet rs = st.executeQuery("select * from bca5q27 where dob > to_date('31-12-1995','dd-mm-yyyy')");
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
    con.close();
  %>
  </body>
</html>
```

##### Output
complete table
![[CA221/Attachments/Output 027.png]]
JSP Output
![[Output 027_1.png]]

---