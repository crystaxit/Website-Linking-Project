<%@ page contentType="text/html"%>
<%@ page import = "javax.servlet.RequestDispatcher" %>
<%
String message = "You are now redirected to first page again";
RequestDispatcher rd = request.getRequestDispatcher("main.jsp");
out.println("<font color=Red>"+message+ "</font>");
rd.include(request, response);
%> 
