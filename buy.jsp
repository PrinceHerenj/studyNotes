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
  <jsp:param name="status" value="Buy Successful!"/>
  </jsp:forward>
  <%}%>
  </body>
</html>
