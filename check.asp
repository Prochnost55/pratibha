<%
			
'			Set objConn =Server.CreateObject("ADODB.Connection")
'			db_path = server.mappath("db2.mdb")
'			objConn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & db_path 
'			set objRS = Server.CreateObject("ADODB.RecordSet")
'			objRS.Open "record", objConn,2,2
'			do until objRS.EOF
'				if objrs("timing") = timing then
'					objrs(mac) = new_rollno
'					objRS.Update
'				else
'					response.write("fail")
'				end if
'				
'				objRS.MoveNext
'			loop
'			objRs.close
'	objConn.Close
'	Set objRS = Nothing
'	Set objConn = Nothing
%>
<%
	'		Set Fileobj=Server.CreateObject("Scripting.FileSystemObject")
	'		File_path = server.mappath("data")& "\" & "newStudent2.txt"
	'		newFile = server.mappath("data")& "\" & "test.txt"
	'		Set Myfile=Fileobj.openTextFile(file_path, 1)
	'		while NOT Myfile.AtEndOfStream
	'		text = Myfile.Readline
	'		Set Mf=Fileobj.createTextfile(newfile,1)
	'		set mf=Fileobj.openTextfile(newfile,8,1)
	'		mf.writeline(text)
	'		wend
			'Set Myfile=Fileobj.openTextFile(server.mappath("data")& "\" & "newStudent.p65",8 ,1)

%>
<%	
	name = "abhi"
	rollno = 21
Set FileObj=Server.CreateObject("Scripting.FileSystemObject")
		filename = server.mappath("data")& "/" & name&"_"&rollno&".txt"
	Set Myfile=Fileobj.createTextFile(filename,true)
			
	myfile.writeline("Details of "&name & " are")
	myfile.writeline("Fname : "& Stu_Fname)
	myfile.writeline("Address : "& Stu_Add)
	myfile.writeline("Contact Info : "& Stu_continfo)
	myfile.writeline("Subject : "& Stu_Sub)
	myfile.writeline("Date Of Joining : "& Stu_doj)
	myfile.writeline("Date Of Leaving : "& date())
	myfile.writeline("Date Of Birth : "& Stu_dob)
	myfile.writeline("Machine No : "& Stu_mac)
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
%>