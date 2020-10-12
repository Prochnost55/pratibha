<%
	confirm = request.querystring("confirm")
	rollno = request.form("rollno")
	name = request.form("name")
	
%>
<%
	if confirm = 1 then
		
			Set objConn =Server.CreateObject("ADODB.Connection")
			db_path = server.mappath("db2.mdb")
			objConn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & db_path 
			set objRS = Server.CreateObject("ADODB.RecordSet")
			objRS.Open "students", objConn,2,2
	Do Until objRS.EOF
		If cstr(trim(objRS("rollno")))= cstr(Rollno) Then
						
						Fname = Objrs("Fname")
						add	= objrs("address")
						continfo = objrs("Mobile No")
						Subj	= objrs("Subject")
						doj = Objrs("doj")
						mac = objrs("machine no")
 						mon1 = objrs("Jan15")
						mon2 = objrs("Feb15")
						mon3 = objrs("Mar15")
						mon4 = objrs("Apr15")
						mon5 = objrs("May15")
						mon6 = objrs("Jun15")
						mon7 = objrs("Jul15")
						mon8 = objrs("Aug15")
						mon9 = objrs("Sep15")
						mon10 = objrs("Oct15")
						mon11 = objrs("Nov15")
						mon12 = objrs("Dec15")
			
			timing = objrs("Time")
			mac_no = objrs("Machine No")
		objRS.Delete
		End If
	objRS.MoveNext
	Loop
	objRS.Close
	objRS.Open "record", objConn, 2,3
				do until objRS.EOF
						if objrs("timing") = timing then
							
								objrs(mac_no) = "None"
								response.write("<center><h2>Record deleted succesfully.</h2></center> ")
							
						end if
						objRS.MoveNext
				loop		
	objRS.Close
	objConn.Close
	Set objRS = Nothing
	Set objConn = Nothing

	Set FileObj=Server.CreateObject("Scripting.FileSystemObject")
		filename = server.mappath("data")& "/" & name&"_"&rollno&".txt"
	Set Myfile=Fileobj.createTextFile(filename,true)
			
	myfile.writeline("Details of "&name & " are")
	myfile.writeline("Fname : "& Fname)
	myfile.writeline("Address : "& Add)
	myfile.writeline("Contact Info : "& continfo)
	myfile.writeline("Subject : "& Subj)
	myfile.writeline("Date Of Joining : "& doj)
	myfile.writeline("Date Of Leaving : "& date())
	myfile.writeline("Date Of Birth : "& dob)
	myfile.writeline("Machine No : "& mac_no)
	myfile.writeline("Fee Details are: ")
	myfile.writeline("Jan "& mon1)
	myfile.writeline("Feb "& mon2)
	myfile.writeline("Mar "& mon3)
	myfile.writeline("Apr "& mon4)
	myfile.writeline("May "& mon5)
	myfile.writeline("Jun "& mon6)
	myfile.writeline("Jul "& mon7)
	myfile.writeline("Aug "& mon8)
	myfile.writeline("Sep "& mon9)
	myfile.writeline("Oct "& mon10)
	myfile.writeline("Nov "& mon11)
	myfile.writeline("Dec "& mon12)
	
	MyFile.close	
	response.redirect("user.asp?cp=2&msg=1")
		
	else
	
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
		<center><h2>You are about to delete records of <%=name& ", Roll no."& rollno%>.<h2>
			<form action="del.asp?confirm=1" method="post">
				<input type = "hidden" name = "rollno" value = "<%=rollno%>">
				<input type = "hidden" name = "name" value = "<%=name%>">
						<input type = "submit" value = "Confirm">
		</form>
		</center>
		
<%
	end if
%>		