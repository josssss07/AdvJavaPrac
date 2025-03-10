<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sum of Squares of Digits</title>
</head>
<body>
    <h2>Enter a number to calculate the sum of squares of its digits:</h2>
    <form method="post">
        <input type="text" name="number" required>
        <input type="submit" value="Calculate">
    </form>

    <%
        String numStr = request.getParameter("number");
        if (numStr != null && !numStr.isEmpty()) {
            try {
                int number = Integer.parseInt(numStr);
                int sum = 0;

                while (number > 0) {
                    int digit = number % 10;
                    sum += digit * digit;  // Square of the digit
                    number /= 10;
                }

                out.println("<h3>Sum of squares of digits: " + sum + "</h3>");
            } catch (NumberFormatException e) {
                out.println("<h3 style='color:red;'>Invalid input! Please enter a valid integer.</h3>");
            }
        }
    %>
</body>
</html>
