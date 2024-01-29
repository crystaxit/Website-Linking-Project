<%@ page import="java.sql.*" %>
<%ResultSet resultset =null;%>

<HTML>
<HEAD>
    <TITLE>Selection Of Table</TITLE>
</HEAD>

<BODY BGCOLOR=lavender>
    <form action="Temp3.jsp"
  <b><a href="Client.jsp">Home</a><hr>
<%
    try{
//Class.forName("com.mysql.jdbc.Driver").newInstance();
String database="E:\\Experiment10.mdb";
        String url="jdbc:odbc:Driver={Microsoft Access Driver (*.mdb)};DBQ=" + database + ";";
Connection conn = 
         DriverManager.getConnection
            (url,"","");

       String[] TABLE_TYPES = {"TABLE"};
      	DatabaseMetaData meta = conn.getMetaData();
      	ResultSet rs = meta.getTables(null, null, null, TABLE_TYPES);
       // ResultSet rs2=null;
        //ResultSetMetaData rsm=rs2.getColumnName(1);
        
        
%>

<center>
    <h1 align='center'> Select Condition</h1>
    <center>
       <h3>Select Table Name: <select name="tbl">
        <%  while(rs.next()){ %>
            <option><%= rs.getString("TABLE_NAME")%></option>
        <% } %>
       </select><br><br>
        
        
       <h3>Enter Column Name: <input type="text" name="name" value=""><br><br>
           <h3> Select DataType <select name="s3">
           <option value="char">CHAR</option>
            <option value="int">INT</option>
        </select><br><br>
        <input type="submit" name="sb1" value="SUBMIT">
</center>

<%
//**Should I input the codes here?**
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>

</BODY>
</HTML>