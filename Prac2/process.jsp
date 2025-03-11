<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Validation Page</title>
</head>
<body>
    <h2>Login Result</h2>

    <%
        // Database credentials
        String url = "jdbc:mariadb://localhost:3306/pracUsers";
        String user = "root";
        String password = "";

        // Get form data
        String userIdStr = request.getParameter("user_id");
        String userPass = request.getParameter("password");

        if (userIdStr != null && userPass != null) {
            try {
                int userId = Integer.parseInt(userIdStr); // Convert to int

                // Load MariaDB Driver
                Class.forName("org.mariadb.jdbc.Driver");

                // Establish Connection
                Connection conn = DriverManager.getConnection(url, user, password);

                // SQL query with Prepared Statement
                String sql = "SELECT name FROM users WHERE id = ? AND password = ?";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                pstmt.setInt(1, userId);
                pstmt.setString(2, userPass);

                ResultSet rs = pstmt.executeQuery();

                if (rs.next()) {
                    String username = rs.getString("name");
                    out.println("<h3>Welcome, " + username + " (ID: " + userId + ")!</h3>");
                } else {
                    out.println("<h3 style='color:red;'>Invalid credentials. Try again.</h3>");
                }

                // Close resources
                rs.close();
                pstmt.close();
                conn.close();

            } catch (Exception e) {
                out.println("<h3 style='color:red;'>Error: " + e.getMessage() + "</h3>");
                e.printStackTrace();
            }
        } else {
            out.println("<h3 style='color:red;'>Missing credentials.</h3>");
        }
    %>
</body>
</html>
