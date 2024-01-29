  <b><a href="Client.jsp">Home</a><hr>        
<%
    

    String a=request.getParameter("tbl");
   if(a.equals("student"))
   {
       response.sendRedirect("StudentSearch.jsp");
   }
   else
   {
       response.sendRedirect("EmployeeSearch.jsp");
   }
%>