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
<%
rollno = request.querystring("rollno")
%>
</HEAD>
<BODY>
		<CENTER><H1>Pratibha Typing Institute</H1></CENTER>
		<HR WIDTH=80%>
		<%
			name = session("name")
		%>
		<center><h2>Welcome, <%=name%></h2>
		 <div id="form">
		<% if rollno="" then%>
		<form action = "About.asp">
		Please enter students Roll No <input type= "text" name = "rollno">
		<br><input type = "submit" >
		</form>
		<%else%>
		<form action = "user.asp" method = "post"><table cellspacing="3px" cellpadding = "2px">
		
		<%
			Dim objConn, objRS,  Flag
			Set objConn =Server.CreateObject("ADODB.Connection")
			db_path = server.mappath("db2.mdb")
			objConn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & db_path 
			set objRS = Server.CreateObject("ADODB.RecordSet")
			objRS.Open "Students", objConn
			Flag=0
			Do until objRS.EOF
					If lcase(objRS("RollNo"))=trim(Rollno) Then
						Stu_Name = Objrs("Name")
						stu_Fname = Objrs("Fname")
						stu_add	= objrs("address")
						stu_continfo = objrs("Mobile No")
						stu_Sub	= objrs("Subject")
						Stu_time = objrs("Time")
						stu_dob = Objrs("dob")
						stu_doj = Objrs("doj")
						stu_mac = objrs("machine no")
 						mon1 = objrs("jan15")
						mon2 = objrs("feb15")
						mon3 = objrs("mar15")
						mon4 = objrs("apr15")
						mon5 = objrs("may15")
						mon6 = objrs("jun15")
						mon7 = objrs("jul15")
						mon8 = objrs("aug15")
						mon9 = objrs("sep15")
						mon10 = objrs("oct15")
						mon11 = objrs("nov15")
						mon12 = objrs("dec15")
						
						
					End if
					
				ObjRS.MoveNext
			loop
				%>
				Details of <%=stu_name%> are:
			<tr><td>Roll No</td><td> <input type= "text" name = "rollno" value = "<%=rollno%>" readonly="readonly"></td></tr>
			<tr><td>Student's Name</td><td><input type= "text"  value = "<%=stu_name%>" readonly="readonly"></td></tr>
			<tr><td>Student's Father's Name</td><td><input type= "text"  value = "<%=stu_Fname%>" readonly="readonly"></td></tr>
			<tr><td>Student's Address</td><td><input type= "text"  value = "<%=stu_Add%>" readonly="readonly"></td></tr>
			<tr><td>Student's Mobile No</td><td><input type= "text"  value = "<%=stu_continfo%>" readonly="readonly"></td></tr>
			<tr><td>Student's Subject</td><td><input type= "text"  value = "<%=stu_sub%>" readonly="readonly"></td></tr>
			<tr><td>Student's Batch Timings</td><td><input type= "text"  value = "<%=stu_time%>" readonly="readonly"></td></tr>
			<tr><td>Student's DOB</td><td><input type= "text"  value = "<%=stu_dob%>" readonly="readonly"></td></tr>
			<tr><td>Student's Date of Joining</td><td><input type= "text"  value = "<%=stu_doj%>" readonly="readonly"></td></tr>
			<tr><td>Student's Machine No.</td><td><input type= "text"  value = "<%=stu_mac%>" readonly="readonly"></td></tr>
			</table>
		<br>
			<table cellspacing="10px" cellpadding = "5px">
			<tr><th>Month</th><td>Jan</td><td>Feb</td><td>Mar</td><td>Apr</td><td>May</td><td>Jun</td><td>Jul</td><td>Aug</td><td>Sept</td><td>Oct</td><td>Nov</td><td>Dec</td></tr>
			<tr><th>Status</th><td><%=mon1%></td><td><%=mon2%></td><td><%=mon3%></td><td><%=mon4%></td><td><%=mon5%></td><td><%=mon6%></td><td><%=mon7%></td><td><%=mon8%></td><td><%=mon9%></td><td><%=mon10%></td><td><%=mon11%></td><td><%=mon12%></td></tr>
			
			</table>
			<input type ="submit" Value="Back to Home">
		</form>
		<form action="del.asp" method="post">
				<input type = "hidden" name = "rollno" value = "<%=rollno%>">
				<input type = "hidden" name = "name" value = "<%=stu_name%>">
						<input type = "submit" value = "Delete Student">
		</form>
		<%end if%>
		
		</div>
		</center>
		<hr width = 80%>
		
		</body>
		</html>