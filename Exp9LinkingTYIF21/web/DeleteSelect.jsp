<html>
  <head>
    <title>Search</title>
  </head>
  <body>
   <form method="get">
         <b><a href="Client.jsp">Home</a><hr>
      <h1 align=center>Delete Condition for Student Table</h1>
       <center>
                Select Condition: <select name="column">
                   <option value="Name">Name</option>
	   <option value="Rollno">Roll No</option>
	   <option value="SEN">SEN</option>
	   <option value="JAVA">JAVA</option>
	   <option value="CTE">CTE</option><br>
	   <option value="ISE">ISE</option>
	   <option value="NMA">NMA</option>
                </select>
	<select name="operator">
	   <option value="=">=</option>
	   
	</select>
	<input type=text name="val" size=7 >
                <input type="submit" name="btn" value="Submit"onclick="if(confirm('Are You sure you Want to Delete this record?')){form.action='DeleteServer.jsp';}else{return false;}">
                
         </center>
      </form>
    </body>
</html>