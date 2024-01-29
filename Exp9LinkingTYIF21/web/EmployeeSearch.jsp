<html>
  <head>
    <title>Search</title>
  </head>
  <body>
   <form action="serversearch2.jsp">
         <b><a href="Client.jsp">Home</a><hr>
      <h1 align=center>Search</h1>
       <center>
                Select Condition: <select name="column">
                   <option value="Name">Name</option>
	   <option value="DOB">D.O.B</option>
	   <option value="Gender">Gender</option>
	   <option value="Empid">Empid</option>
	   <option value="BasicSalary">BasicSalary</option><br>
	   
                </select>
	<select name="operator">
	   <option value="=">=</option>
	   
	</select>
	<input type=text name="val" size=7 >
                <input type="submit" name="btn" value="Submit">
         </center>
      </form>
    </body>
</html>