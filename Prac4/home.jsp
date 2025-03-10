<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
</head>
<body>
    <h1>Register here</h1>
    <form method="post" action="process.jsp">
        <h3>UID:</h3>
        <input type="text" name="uid"><br>
        
        <h3>Name:</h3>
        <input type="text" name="name"><br>
        
        <h3>Course:</h3>
        <select name="course">
            <option>Arts</option>
            <option>Science</option>
            <option>Commerce</option>
        </select><br>
        
        <h3>Gender:</h3>
        <input type="radio" name="gender" value="male"> Male 
        <input type="radio" name="gender" value="female"> Female <br>
        
        <h3>Hobbies:</h3>
        <input type="checkbox" id="reading" name="hobby" value="reading">
        <label for="reading">Reading</label><br>

        <input type="checkbox" id="writing" name="hobby" value="writing">
        <label for="writing">Writing</label><br>

        <input type="checkbox" id="cricket" name="hobby" value="cricket">
        <label for="cricket">Cricket</label><br>

        <input type="checkbox" id="travelling" name="hobby" value="travelling">
        <label for="travelling">Travelling</label><br>
        
        <input type="submit" value="Submit">
    </form>
</body>
</html>
