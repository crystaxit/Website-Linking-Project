  <b><a href="Client.jsp">Home</a><hr>
<%@page import="java.sql.*"%>
<%
        String name,dob,gender,empid,sal;
	
String p1=request.getParameter("column");
String p2=request.getParameter("operator");
String p3=request.getParameter("val");
String str="select * from employee where"+" "+p1+" "+p2+"'"+p3+"'"+";";
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
	out.println("<tr><th>Name</th><th>DOB</th><th>Gender</th><th>Empid</th><th>BasicSalary</th>");
	//out.println("<th>JPR</th><th>Total</th><th>Average</th><th>Percentage</th><th>Grade</th></tr>");
	while(rs.next())
	 {
		name=rs.getString(1);
		dob=rs.getString(2);
		gender=rs.getString(3);
		empid=rs.getString(4);
		sal=rs.getString(5);
				   
		out.println("<tr><td>" +name+ "</td><td>" +dob+ "</td><td>" +gender+ "</td><td>" +empid+ "</td><td>" +sal);
 		//out.println("</td><td>" +total+ "</td><td>" +avg+ "</td><td>" +per+ "</td><td>" +grade+ "</td></tr>");
	  }
	out.println("</table>");   
        con.close();  
    }catch(Exception e){out.println(e);}  
%>