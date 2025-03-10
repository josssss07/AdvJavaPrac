<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Reverse Word</title>
</head>
<body>
    <h2>Enter a word to reverse:</h2>
    <form method="post">
        <input type="text" name="word" required>
        <input type="submit" value="Reverse">
    </form>

    <%
        String word = request.getParameter("word");
        if (word != null && !word.isEmpty()) {
            String reversed = new StringBuilder(word).reverse().toString();
            out.println("<h3>Reversed word: " + reversed + "</h3>");
        }
    %>
</body>
</html>
