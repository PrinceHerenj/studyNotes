### Question 29
---
##### viewMenu.jsp
```jsp
<!-- NAME: Sneh Prince Herenj, ROLL: BCA40560.20, FILE CREATED: 18/07/22 11:42AM
Develop an application that collects/maintains the product information of an
electronics goods production company in a database. Write a JSP page to retrieve
information from the database on demand. Make necessary assumptions to develop
this application. -->

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Question 29</title>
    <style>
      .flex {
        display: flex;
        justify-content: space-around;
      }
      .flexJSP {
        display: flex;
        justify-content: space-around;
      }
      .status {
        position: absolute;
        bottom: 10px;
      }
    </style>
  </head>
  <body>
    <h3 style="text-align: center">KS Co. Inventory Manager</h3>
    <div class="flex">
      <form action="buy.jsp" method="get">
        <input type="text" name="id" id="id" placeholder="Product ID" />
        <input type="text" name="units" id="units" placeholder="Units" />
        <input type="submit" value="Buy" />
      </form>
      <form action="sell.jsp" method="get">
        <input type="text" name="id" id="id" placeholder="Product ID" />
        <input type="text" name="units" id="units" placeholder="Units" />
        <input type="submit" value="Sell" />
      </form>
    </div>
    <br><br>
    <div class="flexJSP">
    <%@page import="java.sql.*" %>
  <%
     Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orclGlobal", "sys as sysdba", "Sh353478");
     Statement st = con.createStatement();
     ResultSet rs = st.executeQuery("select * from ksIM");
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
     out.print("</table>");
    con.close();
  %>
  </div>
  <div class="status">
  <%
    String status = "Ready";
    if (request.getParameter("status")!= null)
    status = request.getParameter("status");
    out.print(status);
  %>
  </div>
  </body>
</html>
```

##### buy.jsp
```jsp
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Question 29</title>
  </head>
  <body>
  <%@page import="java.sql.*" %>
  <%
  int flag = 1;
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orclGlobal", "sys as sysdba", "Sh353478");
    String id = request.getParameter("id");
    int units = Integer.parseInt(request.getParameter("units"));
  try {
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("SELECT UNITS FROM ksIM where ID = "+id);
    rs.next();
    int pUnits = Integer.parseInt(rs.getString("UNITS"));
    if (pUnits + units >= 100) {
      flag = 0;
    } else {
    st.executeUpdate("UPDATE ksIM set UNITS = UNITS +"+units+"WHERE ID = "+id);
    }
    con.commit();
    
  } catch (SQLException e) {
      e.printStackTrace();
    }
  con.close();
  %><% if (flag == 0) {%>
  <jsp:forward page="viewMenu.jsp">
  <jsp:param name="status" value="Error. Maximum storage capacity is 99 Units"/>
  </jsp:forward>
  <%} else {%>
  <jsp:forward page="viewMenu.jsp">
  <jsp:param name="status" value="Sell Successful!"/>
  </jsp:forward>
  <%}%>
  </body>
</html>
```

##### sell.jsp
```jsp
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Question 29</title>
  </head>
  <body>
  <%@page import="java.sql.*" %>
  <%
  int flag = 1;
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orclGlobal", "sys as sysdba", "Sh353478");
    String id = request.getParameter("id");
    int units = Integer.parseInt(request.getParameter("units"));
  try {
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("SELECT UNITS FROM ksIM where ID = "+id);
    rs.next();
    int pUnits = Integer.parseInt(rs.getString("UNITS"));
    if (pUnits < units) {
      flag = 0;
    } else {
    st.executeUpdate("UPDATE ksIM set UNITS = UNITS -"+units+"WHERE ID = "+id);
    }
    con.commit();
    
  } catch (SQLException e) {
      e.printStackTrace();
    }
  con.close();
  %>
  <% if (flag == 0) {%>
  <jsp:forward page="viewMenu.jsp">
  <jsp:param name="status" value="Error. Selling Units > Present in Inventory"/>
  </jsp:forward>
  <%} else {%>
  <jsp:forward page="viewMenu.jsp">
  <jsp:param name="status" value="Sell Successful!"/>
  </jsp:forward>
  <%}%>
  
  </body>
</html>
```

##### Output
viewMenu.jsp
![[CA221/Attachments/Output 029.png]]

buying in correct amount
![[Output 029_1.png]]
onClick buy
![[Output 029_2.png]]

buying in absurd amount
![[Output 029_3.png]]
error message thrown ![[Output 029_4.png]]

safe sale
![[Output 029_5.png]]
updated inventory![[Output 029_6.png]]

when sale units > units available
![[Output 029_7.png]]
again error message thrown
![[Output 029_8.png]]