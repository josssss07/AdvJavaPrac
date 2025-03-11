<%@ page language="java" import="java.util.*" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Form Submission Result</title>
</head>
<body>
    <h2>Submitted Form Data</h2>
    <%
        // Retrieve all parameter names from the request
        Enumeration<String> e = request.getParameterNames();
        
        while (e.hasMoreElements()) {
            String paramName = e.nextElement();
            
            // Check if the parameter is "hobby" (which has multiple values)
            if (paramName.equals("hobby")) {
                String[] hobbies = request.getParameterValues(paramName);
                out.print("<strong>" + paramName + ":</strong> ");
                
                // Print all selected hobbies
                for (String hobby : hobbies) {
                    out.print(hobby + " ");
                }
                out.print("<br>");
            } else {
                // For single-value parameters
                String paramValue = request.getParameter(paramName);
                out.println("<strong>" + paramName + ":</strong> " + paramValue + "<br>");
            }
        }
    %>
</body>
</html>
