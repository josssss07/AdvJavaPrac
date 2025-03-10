<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AJAX Demo</title>
<script src="js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
    function check() {
        alert("Call received");
        $.ajax({
            type: "POST",
            url: "ajaxprocess.jsp", // Backend JSP file
            data: {
                input: $('#ip').val(),
                output: $('#op').val()
            },
            success: function(response) {
                $('#output').append("<p>" + response + "</p>");
            },
            error: function() {
                alert("Error in AJAX call");
            }
        });
    }
</script>
</head>
<body>
    <h2>AJAX Request Demo</h2>
    Input: <input type="text" id="ip" name="ip"><br><br>
    Output: <input type="text" id="op" name="op"><br><br>
    <input type="button" onclick="check()" value="Call JSP">
    <div id="output"></div>
</body>
</html>
