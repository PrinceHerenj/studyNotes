<!-- NAME: Sneh Prince Herenj, ROLL: BCA40560.20, FILE CREATED: 11/07/22 11:42AM
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
