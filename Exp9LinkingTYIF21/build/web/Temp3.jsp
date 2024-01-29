  <b><a href="Client.jsp">Home</a><hr>
<%@page import ="java.sql.*"%>
        
<%
    

    String a=request.getParameter("tbl");
    String b=request.getParameter("name");
    String c=request.getParameter("s3");
   
  String sql="alter table"+" "+a+" "+"ADD"+" "+b+" "+c+";";
  //out.println(sql);
try	{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	//Connection con=DriverManager.getConnection("jdbc:odbc:DDD");
        String database="E:\\Experiment10.mdb";
        String url="jdbc:odbc:Driver={Microsoft Access Driver (*.mdb)};DBQ=" + database + ";"; 
        Connection con=DriverManager.getConnection(url,"","");
	PreparedStatement pst= con.prepareStatement(sql);
	int aa=pst.executeUpdate(); 
	out.println("TABLE ALTERED");
   	 }
catch(Exception e)
	{
	out.println(e);
	}
%>