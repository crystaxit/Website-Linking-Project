  <b><a href="Client.jsp">Home</a><hr>
<%@page import="java.sql.*"%>
<%
    
String p1=request.getParameter("column1");
String p2=request.getParameter("old");
String p3=request.getParameter("column2");
String p4=request.getParameter("operator");
String p5=request.getParameter("val");


String sql="update student set"+" "+p1+"="+"'"+p2+"'"+" "+"where"+" "+p3+p4+"'"+p5+"'";
out.println(sql);
try{
        String pre="select * from student where Name="+"'"+p5+"'";
       // out.println(pre);
       Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	//Connection con=DriverManager.getConnection("jdbc:odbc:DDD");
        String database="E:\\Experiment10.mdb";
        String url="jdbc:odbc:Driver={Microsoft Access Driver (*.mdb)};DBQ=" + database + ";"; 
        Connection con=DriverManager.getConnection(url,"","");
        PreparedStatement pst1= con.prepareStatement(pre);
        ResultSet rs=pst1.executeQuery();
        out.println("<h1 align='center'>Table Details</h1>");
	out.println("<table align=center border=1><h1 align='center'>OLD"); 
        out.println("<tr><th>Name</th><th>RollNO</th><th> Java</th><th>SEN</th><th>CTE</th></th><th>ISE</th><th>NMA</th>");
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
        out.println("</table>");
	PreparedStatement pst= con.prepareStatement(sql);
	int a=pst.executeUpdate();  
        String pre2="select * from student where Name="+"'"+p2+"'";
       // out.println(pre2);
        PreparedStatement pst2= con.prepareStatement(pre2);
         ResultSet rs2=pst2.executeQuery();
                out.println("<br><table align=center border=1><h1 align='center'>NEW RECORD");
                out.println("<br><br>");
	out.println("<tr><th>Name</th><th>RollNO</th><th> Java</th><th>SEN</th><th>CTE</th></th><th>ISE</th><th>NMA</th>");
        while(rs2.next())
	 {
		String nm1=rs2.getString(1);
		String roll1=rs2.getString(2);
		String java1=rs2.getString(3);
                String sen1=rs2.getString(4);
                String cte1=rs2.getString(5);
                String ise1=rs2.getString(6);
                String nma1=rs2.getString(7);
                
		
		out.println("<tr><td>" +nm1+ "</td><td>" +roll1+ "</td><td>" +java1+ "</td><td>" +sen1+ "</td><td>" +cte1+ "</td><td>" +ise1+ "</td><td>" +nma1);
 		
	  }
	//out.println("DATA UPDATED"+a);
	out.println("</table>");   
        con.close();  
    }catch(Exception e){out.println(e);}  

%>