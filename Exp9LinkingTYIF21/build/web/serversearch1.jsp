  <b><a href="Client.jsp">Home</a><hr>
<%@page import="java.sql.*"%>
<%
        String name,roll,nma,sen,ise,java,cte;
	
String p1=request.getParameter("column");
String p2=request.getParameter("operator");
String p3=request.getParameter("val");
String str="select * from student where"+" "+p1+" "+p2+"'"+p3+"'"+";";
//String sql="select * from student where Rollno='3'";
//out.println(str);
try{
                Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	//Connection con=DriverManager.getConnection("jdbc:odbc:DDD");
        String database="E:\\Experiment10.mdb";
        String url="jdbc:odbc:Driver={Microsoft Access Driver (*.mdb)};DBQ=" + database + ";"; 
        Connection con=DriverManager.getConnection(url,"","");
	PreparedStatement pst= con.prepareStatement(str);
	ResultSet rs=pst.executeQuery();     
                out.println("<table align=center border=1>");                                 
	out.println("<tr><th>Name</th><th>Roll number</th><th>JAVA</th><th>SEN</th><th>CTE</th><th>ISE</th><th>NMA</th>");
	//out.println("<th>JPR</th><th>Total</th><th>Average</th><th>Percentage</th><th>Grade</th></tr>");
	while(rs.next())
	 {
		name=rs.getString(1);
		roll=rs.getString(2);
		java=rs.getString(3);
		sen=rs.getString(4);
		cte=rs.getString(5);
		ise=rs.getString(6);
                nma=rs.getString(7);
                //out.println("FF"+name);
		   
		out.println("<tr><td>" +name+ "</td><td>" +roll+ "</td><td>" +java+ "</td><td>" +sen+ "</td><td>" +cte+"</td><td>"+ise+"</td><td>"+nma);
 		//out.println("</td><td>" +total+ "</td><td>" +avg+ "</td><td>" +per+ "</td><td>" +grade+ "</td></tr>");
	  }
	out.println("</table>");   
        con.close();  
    }catch(Exception e){out.println(e);}  
%>