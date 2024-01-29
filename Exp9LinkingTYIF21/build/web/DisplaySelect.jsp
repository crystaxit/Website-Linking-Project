<html>
<head>
<title>Select Table</title>
</head>
<body>
<form METHOD="GET">
      <b><a href="Client.jsp">Home</a><hr>
<h1 align=center>Select Table For Displaying The Data</h1>
<center>
Select Condition: <select name="tbl">
<option value="student">Student</option>
<option value="employee">Employee</option>

</select>

<input type="submit" name="btn" value="Submit" onclick="if(confirm('Are You Want to Display?')){form.action='Temp4.jsp';}else{return false;}">
</center>
</form>
</body>
</html>
