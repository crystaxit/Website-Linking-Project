<html>
<head>
<title>Response code
</title>
</head>
<body>
<form>
<h1 align="center">JSP CODE LOGIN</h1>

<%
	String name=request.getParameter("txt1");
	String pass=request.getParameter("txt2");
	String nm="sarvesh";
	String pw="123456";
	session.setAttribute("session-name", name);
	if(name.equals(nm) && pass.equals(pw))
	{
		response.sendRedirect("success.jsp");
	
	}
	else
		response.sendRedirect("failed.jsp");
	
%>
<%--END--%>
</form>
</body>
</html>
