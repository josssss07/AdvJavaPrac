<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Registration Form</title>
</head>
<body>
    <h2>Registration Form</h2>
    <form action="op.jsp" method="post">
        
        <label>UID:</label>
        <input type="text" name="uid"><br><br>

        <label>NAME:</label>
        <input type="text" name="name"><br><br>

        <label>COURSE:</label>
        <select name="course">
            <option value="ARTS">ARTS</option>
            <option value="BCOM">BCOM</option>
            <option value="SCIENCE">SCIENCE</option>
        </select><br><br>

        <label>AGE:</label>
        <input type="text" name="age"><br><br>

        <label>GENDER:</label>
        <input type="radio" name="gender" value="male"> Male
        <input type="radio" name="gender" value="female"> Female
        <br><br>

        <label>HOBBY:</label><br>
        <input type="checkbox" name="hobby" value="reading"> READING<br>
        <input type="checkbox" name="hobby" value="writing"> WRITING<br>
        <input type="checkbox" name="hobby" value="cricket"> CRICKET<br>
        <input type="checkbox" name="hobby" value="travelling"> TRAVELLING<br><br>

        <input type="submit" value="Submit">
    </form>
</body>
</html>
