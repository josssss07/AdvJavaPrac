<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1" import="org.json.simple.JSONObject"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
System.out.print("call received");
String flag = "working";
String s = request.getParameter("input");
out.println(flag);
JSONObject jsonResponse = new JSONObject();
jsonResponse.put("name", flag + s);
System.out.print(jsonResponse);
response.getWriter().write(jsonResponse.toString());
out.flush();
String sx = request.getParameter("output");
out.println(flag);
//JSONObject jsonResponse = new JSONObject();
jsonResponse.put("name", flag + sx);
System.out.print(jsonResponse);
response.getWriter().write(jsonResponse.toString());
out.flush();

%>
</body>
</html>