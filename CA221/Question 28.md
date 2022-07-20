### Question 28
---
##### list.java
```java
// NAME: Sneh Prince Herenj, ROLL: BCA40560.20, FILE CREATED: 18/07/22 12:15PM
// Write a program using servlet and JDBC for developing an online application for the shopping of 
// computer science books. You have to create a database for book title, author(s) of book, publisher, year 
// of publication, price. Make necessary assumptions for book shopping.

import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class list extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        try {
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orclGlobal", "sys as sysdba",
                    "Sh353478");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from csBookList");
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
            out.print("</table>");
            out.print("<br><a href='index.html'>Back to Home</a>");
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}

```

##### index.html
```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Question 28</title>
  </head>
  <body>
    <div style="padding-left: 10%">
      <form action="/wt/list" method="get">
        <input type="submit" value="List all Available books " />
      </form>
      <br /><br />
      <form action="/wt/csShop" method="get">
        Buy Book by BookID: <input type="text" name="b_id" id="b_id" required />
        <input type="submit" value="Buy" />
      </form>
      <br />
    </div>
  </body>
</html>
```

##### csShop.java
```java

import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class csShop extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
        res.setContentType("text/html");
        String b_id = req.getParameter("b_id");
        PrintWriter out = res.getWriter();
        try {
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orclGlobal", "sys as sysdba",
                    "Sh353478");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from csBookList where b_id in " + b_id);
            ResultSetMetaData rsmd = rs.getMetaData();
            int colCount = rsmd.getColumnCount();

            if (rs.next() == false)
                out.print("Book Not Found!");
            else {

                out.print("<table><tr>");
                for (int i = 1; i <= colCount; i++)
                    out.print("<th>" + rsmd.getColumnName(i) + "</th>");
                out.print("</tr>");
                do {
                    out.print("<tr>");
                    for (int i = 1; i <= colCount; i++)
                        out.print("<td>" + rs.getString(i) + "</td>");
                    out.print("</tr>");
                } while (rs.next());
                out.print("</table>");
                out.print("Buying book Successfull!");
            }
            out.print("<br><a href='index.html'>Back to Home</a>");
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
```

##### mapping
```xml
<web-app>
	<servlet>
        <servlet-name>list</servlet-name>
        <servlet-class>list</servlet-class>
    </servlet>

    <servlet-mapping>
        <servlet-name>list</servlet-name>
        <url-pattern>/list</url-pattern>
    </servlet-mapping>

    <servlet>
        <servlet-name>csShop</servlet-name>
        <servlet-class>csShop</servlet-class>
    </servlet>

    <servlet-mapping>
        <servlet-name>csShop</servlet-name>
        <url-pattern>/csShop</url-pattern>
    </servlet-mapping>

    <welcome-file-list>
        <welcome-file>index.html</welcome-file>
    </welcome-file-list>
</web-app>
```

##### Output
landing
![[CA221/Attachments/Output 028.png]]

list.java![[Output 028_1.png]]

when b_id = 3450 (i.e wrong id)
![[Output 028_2.png]]

when correct bookID
![[Output 028_3.png]]

---
