<head><title>Pratibha Typing Institute</title></head>
<%  
	Dim objConn, objRS,  Flag
	Uname = Request.Form("Uname")
	Password = Request.Form("Upass")
	set objConn =Server.CreateObject("ADODB.Connection")
	db_path = server.mappath("db2.mdb")
	objConn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & db_path 
	set objRS = Server.CreateObject("ADODB.RecordSet")
	objRS.Open "Friend", objConn
	Flag=0
	Do until objRS.EOF
		If lcase(objRS("username"))=lcase(Uname) Then
			If(objRS("Password")) = Password Then
				flag = 1
					Name = objrs("Name")
					session("name") = Name
			end if
			
		End if
	ObjRS.MoveNext
	loop
%>

<%
	if flag = 1 then 
	response.redirect("user.asp")
	else
	response.redirect("homepage.asp?err=1")
	end if
%>