<%@page import="java.sql.*"%>
  <b><a href="Client.jsp">Home</a><hr>
<%
String name=request.getParameter("txtname");
String no =request.getParameter("txtno");
String java=request.getParameter("txtjava");
String sen=request.getParameter("txtsen");
String cte =request.getParameter("txtcte");
String ise=request.getParameter("txtise");
String nma=request.getParameter("txtnma");


String sql="insert into student(Name,Rollno,Java,SEN,CTE,ISE,NMA) values('"+name+"','"+no+"','"+java+"','"+sen+"','"+cte+"','"+ise+"','"+nma+ "');";
//out.println(sql);
try	{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	//Connection con=DriverManager.getConnection("jdbc:odbc:DDD");
        String database="E:\\Experiment10.mdb";
        String url="jdbc:odbc:Driver={Microsoft Access Driver (*.mdb)};DBQ=" + database + ";"; 
        Connection con=DriverManager.getConnection(url,"","");
	PreparedStatement pst= con.prepareStatement(sql);
	int a=pst.executeUpdate(); 
	out.println("DATA INSERTED");
   	 }
catch(Exception e)
	{
	out.println(e);
	}
%>
