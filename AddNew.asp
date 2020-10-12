<%
	
			name = session("name")
			If name ="" then
			response.redirect("homepage.asp")
			end if
%>
<HTML>
<HEAD><TITLE>Pratibha Typing Institute</TITLE>
<style>
@import url("layout.css");
</style>
</HEAD>
<BODY>
		<CENTER><H1>Pratibha Typing Institute</H1></CENTER>
		<HR WIDTH=80%>
		<%
			name = session("name")
		%>
		<center><h2>Welcome, <%=name%></h2>
		<b>Please submit the details of new student</b>
		<table>
		<form action="NewStu.asp" method="post">
				<tr><td>Name</td><td><input type="text" name="Stu_name"></td></tr>
				<tr><td>Father's Name</td><td><input type="text" name="Fname"></td></tr>
				<tr><td>Address</td><td><Textarea name="add"></textarea></td></tr>
				<tr><td>Mobile Number</td><td><input type="text" name="mob"></td></tr>
				<tr><td>Subject</td><td><select name="Sub">
										<option>Hindi(Normal)</option>
										<option>Hindi(Mangal)</option>
										<option>English</option>
										
										</select></td></tr>
				<tr><td>Date of Birth</td><td><input type="text" name="Dob"></td></tr>
				<tr><td>Date of Joining</td><td><input type="text" name="Doj" value="<%=left(now,10)%>" readonly></td></tr>
				<tr><td>Timings</td><td><select name="timing">
				<option>Select time</option>
				<%
						var_time = cdate("08:00:00 AM")
						for i = 1 to 16 
						var_ptime = var_time + Cdate("00:45")
						response.write("<option>" & var_time&" - "& var_ptime &"</option>")
						var_time = var_ptime
						next
				%>	
				
				 </select></td></tr>
				 <tr><td>Machine No</td><td><select name="mac">
				 <option>1</option>
				 <option>2</option>
				 <option>3</option>
				 <option>4</option>
				 <option>5</option>
				 <option>6</option>
				 <option>7</option>
				 <option>8</option>
				 <option>9</option>
				 <option>10</option>
				 
				 </select></td></tr>
				 <tr><td><input type="submit" value="Add New"></form></td><td>
				 <form action="user.asp">
				 <input type="submit" value="Back to Home">
				 </form></td></tr>
				 </table>
				 
		
		
		</form>
		</table>
		</center>
		<hr width = 80%>
		</body>
		</html>