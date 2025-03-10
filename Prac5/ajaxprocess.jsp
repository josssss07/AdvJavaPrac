<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" import="org.json.simple.JSONObject"%>
<%
    response.setContentType("application/json");
    response.setCharacterEncoding("UTF-8");

    String flag = "Working";
    String inputData = request.getParameter("input");

    JSONObject jsonResponse = new JSONObject();
    jsonResponse.put("name", flag + " " + inputData);

    response.getWriter().write(jsonResponse.toString());
%>
