<html>
  <head>
    <title>Update Condition</title>
  </head>
  <body>
   <form action="UpdateServer.jsp">
         <b><a href="Client.jsp">Home</a><hr>
      <h1 align=center>Update Condition For Student Table</h1>
       <center>
                Select Column: <select name="column1">
                   <option value="Name">Name</option>
	   <option value="Rollno">Roll No</option>
	   <option value="SEN">SEN</option>
	   <option value="JAVA">JAVA</option>
	   <option value="CTE">CTE</option><br>
	   <option value="ISE">ISE</option>
	   <option value="NMA">NMA</option>
                </select>
                NEW VALUE <input type="text" name="old">
                Select Condition: <select name="column2">
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
                OLD VALUE<input type=text name="val" size=7 ><br><br>
               <input type="submit" name="btn" value="Submit"onclick="if(confirm('Are You sure you Want to Update this record?')){form.action='UpdateServer.jsp';}else{return false;}">
                
         </center>
      </form>
    </body>
</html>