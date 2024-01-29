<html>
<head>
<title>INSERT</title>
</head>
<body>
      <b><a href="Client.jsp">Home</a><hr>
<%@page import="java.sql.*"%>


<%String fields="",s="";
String sql="";

String tbl=request.getParameter("tname");
String str[]=request.getParameterValues("chk");
if (str != null && str.length != 0) 
{

    for (int i = 0; i < str.length; i++)
    {

  
        fields+=","+str[i]+" "+"char";
  
    }
}
int len=fields.length();
s=fields.substring(1,len);
sql="CREATE TABLE "+tbl+" ("+s+");";
//out.println(sql);

try
{               
                Class.forName ("sun.jdbc.odbc.JdbcOdbcDriver"); 
                String database="E:\\Experiment10.mdb";
                String url="jdbc:odbc:Driver={Microsoft Access Driver (*.mdb)};DBQ=" + database + ";"; 
                Connection conn=DriverManager.getConnection(url,"","");
		out.println("DRIVER LOADED"+"<br>");
                Statement st = conn.createStatement();
                st.executeUpdate(sql);
                out.println("TABLE CREATED");
                st.close();     
                
 }catch(Exception e)
    {
	out.println(e);
    }

%>

</body>
</html>