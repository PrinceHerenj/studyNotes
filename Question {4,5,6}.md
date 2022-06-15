### Question 4
```html
<!-- NAME: Sneh Prince Herenj, ROLL: BCA40560.20, FILE CREATED: 13/06/22 12:08PM -->
<!-- Question 4: Design a html form for reserving a room in hotel -->

<!DOCTYPE html>
<html>
  <head>
    <title>Question 5</title>
  </head>
  <body style="text-align: center">
      <h1>Form for Hotel booking</h1>
    <div id="formDiv" style="text-align: left; padding-left: 35%;">
      <form action="#">
        <label for="name">
          Enter booke's Name: <input type="text" name="name" id="name" /><br />
        </label>
        <label for="check-in-date">
          Enter Check-in Date:
          <input type="date" name="check-in-date" id="check-in-date" /><br />
        </label>
        <label for="check-out-date">
          Enter Check-out Date:
          <input type="date" name="check-out-date" id="check-out-date" /><br />
        </label>
        <label for="rooms">
          Enter Rooms required:
          <input type="text" name="rooms" id="rooms" /><br />
        </label>
        <br><input type="submit" value="Submit">
      </form>
    </di v>
  </body>
</html>
```
---

### Question 5
```html
<!-- NAME: Sneh Prince Herenj, ROLL: BCA40560.20, FILE CREATED: 13/06/22 12:08PM -->
<!-- Question 5: Create an HTML page with different types of frames: floating frame, navigation frame and mixed frame -->

<!DOCTYPE html>
<html>
  <head>
    <title>Question 5</title>
  </head>
  <body>
    <frameset cols="20%, 80%">
      Navigation frame <br />
      <iframe
        src="navigationFrame.html"
        frameborder="1px"
        align="left"
        height="90%"
      ></iframe>
      Mixed frame <br />
      <frameset align="right">
        <iframe
          src="mixedFrame.html"
          height="70%"
          width="50%"
          align="top"
          frameborder="0"
        ></iframe>
        <iframe
          src="floatingFrame.html"
          frameborder="1"
          align="bottom"
        ></iframe>
        Floating Frame <br />
      </frameset>
    </frameset>
  </body>
</html>
```

files required for Q5
> Q4 and Q3 are same as above

##### mixedFrame.html
```html
<!DOCTYPE html>
<html>
  <head>
    <title>mixedFrame</title>
  </head>
  <body>
    <frameset cols="50%, 50%">
      <iframe src="q3.htm" height="42%" width="450px"></iframe>
      <iframe src="q4.htm" height="42%" width="450px"></iframe>
    </frameset>
  </body>
</html>
```

##### navigationFrame.html
```html
<!DOCTYPE html>
<html>
  <head>
    <title>nav</title>
  </head>
  <body>
    <a href="floatingFrame.html">floatingFrame</a><br />
    <a href="mixedFrame.html">mixedFrame</a>
  </body>
</html>
```

##### floatingFrame.html
```html
<!DOCTYPE html>
<html>
  <head>
    <title>floatingFrame</title>
  </head>
  <body>
    <iframe src="https://www.udemy.com" frameborder="0"></iframe>
  </body>
</html>

```
---

### Question 6
```html
<!-- NAME: Sneh Prince Herenj, ROLL: BCA40560.20, FILE CREATED: 13/06/22 1:00PM -->
<!-- Question 5: Create a html form to find the railway fare from one place to another -->

<html>
  <head>
    <title>Question 6</title>
  </head>
  <body style="text-align: center">
    <h1>Form for Railway Reservation</h1>
    <div id="formDiv" style="text-align: left; padding-left: 35%">
      <form action="#">
        <label for="source">
          Enter Source: <input type="text" name="source" id="source" /><br />
        </label>
        <label for="dest">
          Enter Destination: <input type="text" name="dest" id="dest" /><br />
        </label>
        <label for="date">
          Enter Date: <input type="date" name="date" id="date" /><br />
        </label>
        <label for="class">
          Enter Class: <input type="text" name="class" id="class" /> <br />
        </label>
        <label for="type">
          Enter Seat Type: <input type="text" name="type" id="type" /><br />
        </label>
        <br /><input type="submit" value="Click to find fare" />
      </form>
    </div>
  </body>
</html>
```
---