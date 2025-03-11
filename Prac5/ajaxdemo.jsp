<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script type="text/javascript"
src="https://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
<script type="text/javascript">
function check() {
alert("call received");
$.ajax({
type: "post",
url: "ajaxprocess.jsp", // here you can use servlet, jsp, etc
data: "input=" + $('#ip').val() + "&output=" + $('#op').val(),
success: function (msg) {
$('#output').append(msg);
},
error: function () {
alert("error in alert");
}
});
}
</script>
<title>AJAX Demo</title>
</head>
<body>
    <h2>AJAX Request Demo</h2>
    Input: <input type="text" id="ip" name="ip"><br><br>
    Output: <input type="text" id="op" name="op"><br><br>
    <input type="button" onclick="check()" value="Call JSP">
    <div id="output"></div>
</body>
</html>
