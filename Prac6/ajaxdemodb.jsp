<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AJAX with MariaDB</title>

<!-- jQuery Library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<script type="text/javascript">
    function check() {
        alert("Call received");

        $.ajax({
            type: "POST",
            url: "ajaxprocessdb.jsp",  // Backend JSP file
            data: {
                uid: $("#uid").val(),
                name: $("#name").val(),
                age: $("#age").val()
            },
            success: function(response) {
                $("#output").html("<p>" + response.message + "</p>");
            },
            error: function() {
                alert("Error in AJAX request");
            }
        });
    }
</script>
</head>

<body>
    <h2>Insert Student Record</h2>
    
    UID: <input id="uid" type="text" name="uid" value="" /><br><br>
    Name: <input id="name" type="text" name="name" value="" /><br><br>
    Age: <input id="age" type="text" name="age" value="" /><br><br>

    <input type="button" onClick="check()" value="Insert Record" />

    <br><br>
    <div id="output"></div> <!-- Output message -->
</body>
</html>
