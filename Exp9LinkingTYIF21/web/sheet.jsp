<html>
<head>
<title>Sheet</title>
</head>
<body>
<%@page language="Java"%>
<%!				//(<%! -> 1st declaration for string datatype)
	String name,grade;
%>
<%!				//(<%! -> 2nd declaration for int datatype)	
	int roll=0,java=0,sen=0,osy=0,ise=0,cte=0;	
%>
<%!
	double total=0.0,avg1=0.0;

%>
<%				
	name=request.getParameter("sname");	
	roll=Integer.parseInt(request.getParameter("sroll"));		
	java=Integer.parseInt(request.getParameter("sjava"));		
	sen=Integer.parseInt(request.getParameter("ssen"));
	osy=Integer.parseInt(request.getParameter("sosy"));
	ise=Integer.parseInt(request.getParameter("sise"));
	cte=Integer.parseInt(request.getParameter("scte"));		
			
	total=(java+sen+osy+ise+cte);		 
	avg1=(total/500)*100;
	if(avg1>90)
	{grade="A";}				
	else if(avg1<90 && avg1>60)
	{grade="B";}
	else if(avg1<60)
	{grade="C";}
%>

<%	
	out.println("<table border=3>");
	out.println("<tr><th>Name:</th><td>"+name+"</td></tr>");
	out.println("<tr><th>Roll NO:</th><td>"+roll+"</td></tr>");
	out.println("<tr><th>Java Marks:</th><td>"+java+"</td></tr>");
	out.println("<tr><th>SEN Marks:</th><td>"+sen+"</td></tr>");
	out.println("<tr><th>OS Marks:</th><td>"+osy+"</td></tr>");
	out.println("<tr><th>ISE Marks</th><td>"+ise+"</td></tr>");
	out.println("<tr><th>CTE Marks</th><td>"+cte+"</td></tr>");
	out.println("<tr><th>Average:</th><td>"+avg1+"</td></tr>");
	out.println("</table>");
	
%>

	Total=<%=total%><br>
	Grade=<%=grade%><br>
</body>
<form method="get" action="redirect.jsp">
<input type="Submit" name="sbn" value="Click to Redirect">
</form>
</html>















