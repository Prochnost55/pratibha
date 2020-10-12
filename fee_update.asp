<%

			Rn = request.form("rn")
			
			Dim objConn, objRS,  Flag
			Set objConn =Server.CreateObject("ADODB.Connection")
			db_path = server.mappath("db2.mdb")
			objConn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & db_path 
			set objRS = Server.CreateObject("ADODB.RecordSet")
			objRS.Open "Students", objConn,2,2
			do until objRS.EOF
		if cstr(objRs("Rollno"))= cstr(rn) Then
	objRS("Jan15")=Request.form("Jan15")
	  objRS("Feb15")=Request.form("Feb15")
	  objRS("Mar15")=Request.form("Mar15")
	  objRS("Apr15")=Request.form("Apr15")
	  objRS("May15")=Request.form("May15")
	  objRS("Jun15")=Request.form("Jun15")
	  objRS("Jul15")=Request.form("Jul15")
	  objRS("Aug15")=Request.form("Aug15")
	  objRS("Sep15")=Request.form("Sept15")
	  objRS("Oct15")=Request.form("Oct15")
	  objRS("Nov15")=Request.form("Nov15")
	  objRS("Dec15")=Request.form("Dec15")
	objRS.Update
		flag = 1
	End If
	objRS.MoveNext
Loop
objRs.close
objConn.Close
Set objRS = Nothing
Set objConn = Nothing
if flag = 1 then
response.redirect("fee.asp?rollno="& rn & "&msg=1")
end if
%>