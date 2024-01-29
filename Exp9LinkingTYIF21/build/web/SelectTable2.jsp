<%@ page import="java.sql.*" %>
<%ResultSet resultset =null;%>

<HTML>
<HEAD>
    <TITLE>Selection Of Table</TITLE>
</HEAD>

<BODY BGCOLOR=lavender>
    <form action="Temp2.jsp"
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
%>

<center>
    <h1> Select Table Name</h1>
        <select name="tbl">
        <%  while(rs.next()){ %>
            <option><%= rs.getString("TABLE_NAME")%></option>
        <% } %>
        </select>
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