<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Form</title>
</head>
<body>
    <h2>Registration Form</h2>
    <form action="hobby" method="post">
        <label>UID:</label>
        <input type="text" name="uid" value=""><br><br>

        <label>NAME:</label>
        <input type="text" name="name" value=""><br><br>

        <label>COURSE:</label>
        <select name="course">
            <option value="ARTS" >ARTS</option>
            <option value="SCIENCE">SCIENCE</option>
            <option value="COMMERCE">COMMERCE</option>
        </select><br><br>

        <label>AGE:</label>
        <input type="number" name="age" value=""><br><br>

        <label>GENDER:</label>
        <input type="radio" name="gender" value="Male"> Male
        <input type="radio" name="gender" value="Female"> Female
        <br><br>

        <label>HOBBY:</label><br>
        <input type="checkbox" name="hobby" value="Reading"> READING<br>
        <input type="checkbox" name="hobby" value="Writing" > WRITING<br>
        <input type="checkbox" name="hobby" value="Cricket"> CRICKET<br>
        <input type="checkbox" name="hobby" value="Travelling"> TRAVELLING<br><br>

        <input type="submit" value="Submit">
