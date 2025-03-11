package com.example;
import java.io.PrintWriter;
import java.io.IOException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/hobby")
public class hobby extends HttpServlet{
	 protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException{
		 String id= request.getParameter("uid");
		 String name = request.getParameter("name");
		 String age = request.getParameter("age");
		 String gender = request.getParameter("gender");
		 String hobby = request.getParameter("hobby");
		 
		 System.out.println("User Registered: " + name );

	        // Generate a response
	        response.setContentType("text/html");
	        PrintWriter out = response.getWriter();
	        out.println("<html><body>");
	        out.println("<h2>Registration Successful!</h2>");
	        out.println("<p>Welcome, " + name + "!</p>");
	        out.println("</body></html>");
	 }
}
