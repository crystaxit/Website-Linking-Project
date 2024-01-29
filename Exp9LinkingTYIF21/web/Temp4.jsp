  <b><a href="Client.jsp">Home</a><hr>
<%@page import ="java.sql.*"%>
        
<%
    

    String a=request.getParameter("tbl");
   
    //out.println(a);
  String sql="select * from"+" "+a+";";
//out.println(sql);
try	{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	//Connection con=DriverManager.getConnection("jdbc:odbc:DDD");
        String database="E:\\Experiment10.mdb";
        String url="jdbc:odbc:Driver={Microsoft Access Driver (*.mdb)};DBQ=" + database + ";"; 
        Connection con=DriverManager.getConnection(url,"","");
	PreparedStatement pst= con.prepareStatement(sql);
	ResultSet rs=pst.executeQuery(); 
	out.println("<h1 align='center'>Table Details</h1>");
	out.println("<table align=center border=1>");    
        if(a.equals("student"))
        {
	out.println("<tr><th>Name</th><th>Roll number</th><th>JAVA</th><th>SEN</th><th>CTE</th><th>ISE</th><th>NMA</th>");

	while(rs.next())
	 {
		String nm=rs.getString(1);
		String roll=rs.getString(2);
		String java=rs.getString(3);
                String sen=rs.getString(4);
                String cte=rs.getString(5);
                String ise=rs.getString(6);
                String nma=rs.getString(7);
                
		
		out.println("<tr><td>" +nm+ "</td><td>" +roll+ "</td><td>" +java+ "</td><td>" +sen+ "</td><td>" +cte+ "</td><td>" +ise+ "</td><td>" +nma);
 		
	  }
        }
        else
        {
            out.println("<tr><th>Name</th><th>D.O.B</th><th>GENDER</th><th>EMP_ID</th><th>BASIC_SALARY");

	while(rs.next())
	 {
		String nm=rs.getString(1);
		String roll=rs.getString(2);
		String java=rs.getString(3);
                String sen=rs.getString(4);
                String cte=rs.getString(5);
                               
		
		out.println("<tr><td>" +nm+ "</td><td>" +roll+ "</td><td>" +java+ "</td><td>" +sen+ "</td><td>" +cte);
 		
	  }
        }
	
	
   	 }
catch(Exception e)
	{
	out.println(e);
	}
%>