<html> 
<head><title>Success Page</title>
</head>
<body> 	
<% 
String data=(String)session.getAttribute("session-name");
out.println("Welcome "+ data+"!!");
%> 
</body> 
</html>
