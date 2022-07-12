### Question 13
##### getParameters.java
```java
// NAME: Sneh Prince Herenj, ROLL: BCA40560.20, FILE CREATED: 21/06/22 12:03PM
// Question 13: Create a servlet program to retrieve the values entered in the
// HTML file.

import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

public class getParameters extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        out.println("<h3>A: </h3>" + req.getParameter("a"));
        out.println("<h3>B: </h3>" + req.getParameter("b"));
    }
}
```

##### Parameters passed in URL as
```URL
localhost:8080/wt/getParameters?a=123&b=456
```

##### where mapping in server as
```xml
<web-app>
    <servlet>
        <servlet-name>getParameters</servlet-name>
        <servlet-class>getParameters</servlet-class>
    </servlet>

    <servlet-mapping>
        <servlet-name>getParameters</servlet-name>
        <url-pattern>/getParameters</url-pattern>
    </servlet-mapping>
</web-app>
```

##### Output
![[CA221/Attachments/Output 013.png]]

---

### Question 14
##### paramForm.java
```java
// NAME: Sneh Prince Herenj, ROLL: BCA40560.20, FILE CREATED: 21/06/22 12:30PM
// Question 14: Create a servlet program that takes your name and address from a HTML form and displays it.

import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

public class paramForm extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        out.println("<h3>Name: </h3> " + req.getParameter("name"));
        out.println("<h3>Address: </h3> " + req.getParameter("address"));
    }
}
```

##### index.html
```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Question 14</title>
  </head>
  <body>
    <h2>Login Page</h2>
    <p>Enter Name and address</p>
    <form action="/wt/paramForm" method="get">
      Name: <input type="text" name="name" id="name" /> Address:
      <input type="text" name="address" id="address" />
      <input type="submit" value="Submit" />
    </form>
  </body>
</html>
```

##### mapping
```xml
<web-app>	
	<servlet>
        <servlet-name>paramForm</servlet-name>
        <servlet-class>paramForm</servlet-class>
    </servlet>

    <servlet-mapping>
        <servlet-name>paramForm</servlet-name>
        <url-pattern>/paramForm</url-pattern>
    </servlet-mapping>

    <welcome-file-list>
        <welcome-file>index.html</welcome-file>
    </welcome-file-list>
</web-app>
```

##### Output
![[CA221/Attachments/Output 014.png]]

##### On submit
![[Output 014_2.png]]

---

### Question 15
##### login.java
```java
// NAME: Sneh Prince Herenj, ROLL: BCA40560.20, FILE CREATED: 21/06/22 01:00PM
// Question 15: Write a program to show inter servlet communication between two
// servlets.

import java.io.*;
import java.net.http.HttpResponse;

import javax.servlet.*;
import javax.servlet.http.*;

public class login extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        String name = req.getParameter("name");
        String pass = req.getParameter("pass");

        if (pass.equals("heh")) {
            RequestDispatcher d = req.getRequestDispatcher("/homepage");
            d.forward(req, res);
        } else {
            out.println("Wrong password");
            RequestDispatcher d = req.getRequestDispatcher("/index.html");
            d.include(req, res);
        }
    }
}
```

##### homepage.java
```java
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class homepage extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        String name = req.getParameter("name");
        out.println("Welcome: " + name);
    }
}
```

##### index.html
```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Question 15</title>
  </head>
  <body>
    <form action="/wt/login" method="get">
      Name: <input type="text" name="name" id="name" /> Password:
      <input type="text" name="pass" id="pass" />
      <input type="submit" value="Submit" />
    </form>
  </body>
</html>
```

##### mapping
```XML
<web-app>
	<servlet>
        <servlet-name>login</servlet-name>
        <servlet-class>login</servlet-class>
    </servlet>

    <servlet-mapping>
        <servlet-name>login</servlet-name>
        <url-pattern>/login</url-pattern>
    </servlet-mapping>

    <servlet>
        <servlet-name>homepage</servlet-name>
        <servlet-class>homepage</servlet-class>
    </servlet>

    <servlet-mapping>
        <servlet-name>homepage</servlet-name>
        <url-pattern>/homepage</url-pattern>
    </servlet-mapping>

    <welcome-file-list>
        <welcome-file>index.html</welcome-file>
    </welcome-file-list>
</web-app>
```

##### Output
when incorrect
![[CA221/Attachments/Output 015.png]]![[Output 015_2.png]]

when correct
![[Output 015_3.png]]![[Output 015_4.png]]