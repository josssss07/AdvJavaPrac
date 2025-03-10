<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form Submission</title>
</head>
<body>
    <%
        Enumeration<String> e = request.getParameterNames();
        while (e.hasMoreElements()) {
            String output = null;
            String p = e.nextElement();
            if (p.equals("hobby")) {
                String[] hobbies = request.getParameterValues(p);
                out.print(p + ": ");
                for (String hobby : hobbies) {
                    out.print(hobby + " ");
                }
                out.print("<br>");
            } else {
                output = request.getParameter(p);
                out.println(p + ": " + output + "<br>");
            }
        }
    %>
</body>
</html>
