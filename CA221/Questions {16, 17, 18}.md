### Question 16
##### date.java
```java
// NAME: Sneh Prince Herenj, ROLL: BCA40560.20, FILE CREATED: 27/06/22 9:32AM
// Question 16: Create a simple servlet program to display the date and time

import java.util.Date;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class date extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        Date date = new Date();
        out.println("Today's Date and time: " + date.toString());
    }
}
```

##### Mapping
```xml
<web-app>
	<servlet>
        <servlet-name>date</servlet-name>
        <servlet-class>date</servlet-class>
    </servlet>

    <servlet-mapping>
        <servlet-name>date</servlet-name>
        <url-pattern>/date</url-pattern>
    </servlet-mapping>
</web-app>
```

##### Output
![[CA221/Attachments/Output 016.png]]

---
### Question 17
##### index.jsp 
```jsp
<%-- NAME: Sneh Prince Herenj, ROLL: BCA40560.20, FILE CREATED: 27/06/22 10:10AM
Question 17: Write a JSP program to output, "Welcome to JSP world." and also to display current time--%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Question 17</title>
  </head>
  <body>
  <%@page import="java.util.Date" %>
    <%="Welcome to JSP World"%>
    <% Date date = new Date();
    out.print("<br>Today's Date and Time: "+date.toString());
    %>
  </body>
</html>
```

##### Output
![[CA221/Attachments/Output 017.png]]

---
### Question 18
```jsp
<%-- NAME: Sneh Prince Herenj, ROLL: BCA40560.20, FILE CREATED: 27/06/22 10:20AM
Question 18: Write a JSP page that displays a randomly generated number in first visit to this page and repeat displaying this same number in subsequent visits --%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Question 18</title>
  </head>
  <body>
  <%
    Cookie cookies[] = request.getCookies();
    boolean found = false;
    if (cookies != null) {
      for (int i = 0; i < cookies.length; i++) {
        if (cookies[i].getName().equals("startedBefore"))
        {
          found = true;
          out.print(cookies[i].getValue()+"(revisited)");
        }
      }
        if (!found) {
          int a = (int)(1+(Math.random()*10));
          out.print(a);
          response.addCookie(new Cookie("startedBefore", a+""));
        }
    }
    
  %>
  </body>
</html>
```

##### Output
first visit:
![[CA221/Attachments/Output 018.png]]

revisit
![[Output 018_1.png]]