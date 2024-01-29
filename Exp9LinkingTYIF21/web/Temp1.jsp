  <b><a href="Client.jsp">Home</a><hr>
<%
    

    String a=request.getParameter("tbl");
    out.println(a);
  if(a.equals("student"))
  {
      response.sendRedirect("Insert.jsp");
      
  }  

    else
  {
      response.sendRedirect("Insert_emp.jsp");
  }
%>