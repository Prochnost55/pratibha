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
		

<%
	dim join
	join = trim(request.form("doj"))
	a = instr(join,"/")
	y = right(join,2)
	mon = left(join,a-1)
	a = mon
	mon = monthname(mon)
	MOJ = mon & y
		
	
	%>


<%
	dim objConn, strConn, objRs
	set objConn = Server.CreateObject("ADODB.Connection")
	db_path = server.mappath("db2.mdb")
	
	strConn = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & db_path
'		"C:\Database\db2.mdb"
	objConn.Open strConn
	Set objRS = Server.CreateObject("ADODB.RecordSet")
	objRS.Open "students", objConn, 2,2
	objRS.AddNew
	objRS("Name")=request.form("stu_Name")
	objRS("Fname")=request.form("Fname")
	objRS("Address")=request.form("Add")
	objRS("Mobile No")=request.form("mob")
	objRS("Subject")=request.form("sub")
	objRS("time")=request.form("timing")
	objRS("Dob")=request.form("Dob")
	objRS("Doj")=request.form("Doj")
	objrs("machine No") = request.form("mac")
	objrs(MOJ) = "joined"
			for i = 1 to a-1
				Pmon = monthname(i)
				varx = left(Pmon,3) & y
				objrs(varx) = "Not Admitted"
			next
			for i = a+1 to 12
				Nmon = monthname(i)
				varz = left(Nmon,3) & y
'				response.write(varz)
				objrs(varz) = "Not Paid"
			next

	objRS.Update
	name = objrs("name")
	fname = objRS("Fname")
	add = objRS("Address")
	mob = objRS("Mobile No")
	subj = objRS("Subject")
	timing = objRS("time")
	dob = objRS("Dob")
	doj = objRS("Doj")
	mac = objrs("machine no")
	New_rollno = Objrs("rollno")
	objRS.Close
	objconn.close
	set objrs = nothing
	set objconn = nothing
%>
<%
			
			Set objConn =Server.CreateObject("ADODB.Connection")
			db_path = server.mappath("db2.mdb")
			objConn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & db_path 
			set objRS = Server.CreateObject("ADODB.RecordSet")
			objRS.Open "record", objConn,2,2
			do until objRS.EOF
				if objrs("timing") = timing then
					objrs(mac) = new_rollno
					objRS.Update
				
				end if
				
				objRS.MoveNext
			loop
			objRs.close
objConn.Close
Set objRS = Nothing
Set objConn = Nothing
%>
<%
			Set Fileobj=Server.CreateObject("Scripting.FileSystemObject")
			File_path = server.mappath("data")& "\" & "newStudent.p65"
			
			'Set Myfile=Fileobj.openTextFile(server.mappath("data")& "\" & "newStudent.p65",8 ,1)

%>

				<center><h2>Details of New student are</h2>
<table>
				<tr><td>Roll No.</td><td><input type="text" value = "<%=New_rollno%>" readonly autosuggestion="off"></td></tr>
				<tr><td>Name</td><td><input type="text" value = "<%=name%>" readonly></td></tr>
				<tr><td>Father's Name</td><td><input type="text" value="<%=Fname%>" readonly></td></tr>
				<tr><td>Address</td><td><input type="text" value="<%=add%>" readonly></td></tr>
				<tr><td>Mobile Number</td><td><input type="text" value="<%=mob%>" readonly></td></tr>
				<tr><td>Subject</td><td><input type="text" value="<%=Subj%>" readonly></td></tr>
				<tr><td>Date of Birth</td><td><input type="text" value="<%=Dob%>" readonly></td></tr>
				<tr><td>Date of Joining</td><td><input type="text" value="<%=Doj%>" readonly></td></tr>
				<tr><td>Timings</td><td><input type="text" value="<%=timing%>" readonly></td></tr>
				<tr><td>Machine No</td><td><input type="text" value="<%=mac%>" readonly></td></tr>

</table>
					<form action = "user.asp">
						<input type="submit" value="Back to Home">
					</form></center>
					<hr width = 80%>
		</body>
		</html>
