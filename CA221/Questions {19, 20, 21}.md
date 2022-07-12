### Question 19
##### index.jsp
```jsp
<%-- NAME: Sneh Prince Herenj, ROLL: BCA40560.20, FILE CREATED: 28/06/22 10:15AM
Question 19: Write a JSP program to display current date --%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Question 19</title>
  </head>
  <body>
    <%@page import="java.time.LocalDate" %>
    <%
      LocalDate date = LocalDate.now();
      out.print("Current Date: "+date);
    %>
  </body>
</html>

```
##### Output
![[CA221/Attachments/Output 019.png]]

---
### Question 20
##### index.jsp
```jsp
<%-- NAME: Sneh Prince Herenj, ROLL: BCA40560.20, FILE CREATED: 28/06/22 10:27AM
Write a JSP page using <jsp:forward> to go to a servlet program which displays your name, date of 
birth and address --%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Question 20</title>
  </head>
  <body>
    <jsp:forward page="/disp">
      <jsp:param name="name" value="Prince Herenj" />
      <jsp:param name="dob" value="2002-01-22" />
      <jsp:param name="addr" value="30-1 Nadi Dipa, Kanke, Ranchi" />
    </jsp:forward>
  </body>
</html>

```

##### disp.java
```java
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.*;
import javax.servlet.http.*;

public class disp extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        String name = req.getParameter("name");
        String dob = req.getParameter("dob");
        String addr = req.getParameter("addr");
        out.println("Name: " + name + "<br>");
        out.println("DOB: " + dob + "<br>");
        out.println("Address: " + addr + "<br>");
    }
}
```

##### Output
![[CA221/Attachments/Output 020.png]]

---
### Question 21
##### form.html
```html
<!-- NAME: Sneh Prince Herenj, ROLL: BCA40560.20, FILE CREATED: 28/06/22 10:45AM
Create a HTML form to take customer information (Name, Address, Mobile No.).
Write a JSP program to validate this information of customers -->

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Question 21</title>
  </head>
  <body>
    <div>
      <form action="index.jsp" method="get">
        <label for="name">
          Name: <input type="text" name="name" id="name" /> </label
        ><br />
        <label for="address">
          Address: <input type="text" name="address" id="address" /> </label
        ><br />
        <label for="phone">
          Phone no.: <input type="text" name="phone" id="phone" /> </label
        ><br />
        <input type="submit" value="Submit" />
      </form>
    </div>
  </body>
</html>
```

##### index.jsp
```jsp
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Question 21</title>
  </head>
  <body>
  <%
    String name = request.getParameter("name");
    String address = request.getParameter("address");
    String phone = request.getParameter("phone");
    out.println("Name: " +name+ "<br>");
    out.println("Address: " +address+ "<br>");
    out.println("Phone: " +phone+ "<br>");
  %>
  </body>
</html>
```

##### Output
form.html
![[CA221/Attachments/Output 021.png]]

index.jsp
![[Output 021_1.png]]