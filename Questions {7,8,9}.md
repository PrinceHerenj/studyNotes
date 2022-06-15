### Question 7
```xml
<?xml version="1.0" standalone="yes"?>
<!-- NAME: Sneh Prince Herenj, ROLL: BCA40560.20, FILE CREATED: 14/06/22 12:05PM -->
<!-- Question 7: Create an XML structure with elements and attributes for Library Information System -->

<libraryMgm>
    <librarian>
        <id>002</id>
        <name>Prince Herenj</name>
    </librarian>
    <books>
        <book1>
            <name>Atomic Habits</name>
        </book1>
        <book2>Where We Land</book2>
    </books>
    <location>Ranchi, JH</location>
</libraryMgm>
```
---

### Question 8
```xml
<?xml version="1.0" standalone="yes"?>
<!-- NAME: Sneh Prince Herenj, ROLL: BCA40560.20, FILE CREATED: 14/06/22 12:15PM -->
<!-- Question 8: Create an XML structure with elements and attributes for Railway Reservation System -->

<railwayRsv>
    <clients>
        <client1>
            <id>4567</id>
            <cname>Prince Herenj</cname>
            <bookings>
                <bookingID>9039</bookingID>
                <source>Ranchi</source>
                <destination>Kolkata</destination>
                <dateTime>20th June, 2022; 14:20</dateTime>
            </bookings>
        </client1>
    </clients>
    <admin>
        <id>1234</id>
        <name>Wilson Herenj</name>
    </admin>
</railwayRsv>
```
---

### Question 9
##### index.xml
```xml
<?xml version="1.0" standalone="no"?>
<!-- NAME: Sneh Prince Herenj, ROLL: BCA40560.20, FILE CREATED: 14/06/22 12:25PM -->
<!-- Question 9: Create an XML document for student information system. Create a DTD and link the DTD to the XML 
document -->

<!DOCTYPE studentIS SYSTEM "index.dtd">
<studentIS>
    <students>
        <student>
            <roll>BCA40560.20</roll>
            <sname>Prince Herenj</sname>
            <semester>4</semester>
            <courses>
                <course1>CA255</course1>
                <course2>CA256</course2>
                <course3>CA258</course3>
            </courses>
        </student>
    </students>
</studentIS>
```

##### index.dtd
```dtd
<!ELEMENT studentIS (students)>
<!ELEMENT students (student)>
<!ELEMENT student (roll,sname,semester,courses)>
<!ELEMENT roll (#PCDATA)>
<!ELEMENT sname (#PCDATA)>
<!ELEMENT semester (#PCDATA)>
<!ELEMENT courses (course1,course2,course3)>
<!ELEMENT course1 (#PCDATA)>
<!ELEMENT course2 (#PCDATA)>
<!ELEMENT course3 (#PCDATA)>
```
---
