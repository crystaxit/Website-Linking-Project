  <b><a href="Client.jsp">Home</a><hr>
<%@page import="java.sql.*"%>
<%
    
     try {
         String s="";
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	String database="E:\\Experiment10.mdb";
        String url="jdbc:odbc:Driver={Microsoft Access Driver (*.mdb)};DBQ=" + database + ";"; 
        Connection conn=DriverManager.getConnection(url,"","");
      	String[] TABLE_TYPES = {"TABLE"};
      	DatabaseMetaData meta = conn.getMetaData();
      	ResultSet rs = meta.getTables(null, null, null, TABLE_TYPES);
      	out.println("List of tables: "); 
     	 while (rs.next()) 
	{       out.println("<br>");
         	s+="<br>"+rs.getString("TABLE_NAME");
            
         }
         out.println(s);
       
      rs.close();

        conn.close();
    }catch(Exception e){out.println(e);}  
%>