<%@page import="java.sql.*"%>
  <b><a href="Client.jsp">Home</a><hr>
<%
String name=request.getParameter("txtname");
String no =request.getParameter("txtno");
String gender=request.getParameter("txtgender");
String id=request.getParameter("txtid");
String sal =request.getParameter("txtsalary");

String sql="insert into employee(Name,DOB,Gender,Empid,BasicSalary) values('"+name+"','"+no+"','"+gender+"','"+id+"','"+sal+"');";
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
