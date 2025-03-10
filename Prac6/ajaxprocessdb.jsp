<%@ page language="java" contentType="application/json; charset=ISO-8859-1" pageEncoding="ISO-8859-1" import="java.sql.*, org.json.simple.JSONObject"%>
<%
    // Database credentials
    String dbURL = "jdbc:mariadb://localhost:3306/prac6";
    String dbUser = "root";
    String dbPassword = "";

    // Response object
    JSONObject jsonResponse = new JSONObject();

    // Get form data
    int uid = Integer.parseInt(request.getParameter("uid"));
    String name = request.getParameter("name");
    int age = Integer.parseInt(request.getParameter("age"));

    try {
        // Load MariaDB JDBC driver
        Class.forName("org.mariadb.jdbc.Driver");

        // Establish connection
        Connection connection = DriverManager.getConnection(dbURL);

        // Prepare the SQL query
        PreparedStatement ps = connection.prepareStatement("INSERT INTO students VALUES (?, ?, ?)");
        ps.setInt(1, uid);
        ps.setString(2, name);
        ps.setInt(3, age);

        // Execute update
        int rows = ps.executeUpdate();

        if (rows > 0) {
            jsonResponse.put("message", "Data added to the database.");
        } else {
            jsonResponse.put("message", "Failed to insert data.");
        }

        // Close resources
        ps.close();
        connection.close();
    } catch (Exception e) {
        jsonResponse.put("message", "Error: " + e.getMessage());
        e.printStackTrace();
    }

    // Send JSON response
    response.getWriter().write(jsonResponse.toString());
%>
