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
		
		
		<center><h2>Welcome, <%=name%></h2>

<%
			Dim objConn, objRS,  Flag
			Set objConn =Server.CreateObject("ADODB.Connection")
			db_path = server.mappath("db2.mdb")
			objConn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & db_path 
			set objRS = Server.CreateObject("ADODB.RecordSet")
			objRS.Open "Students", objConn
			Flag=0
			Do until objRS.EOF
				for i = 1 to 12
					MonName =monthname(i)
					monName = left(MonName,3)
					monName = MonName & "15"
						if objrs(monName) = "Pending" then
							def_name = objrs("name")
							def_rollno = objrs("rollno")
							response.write("<b>"& def_name & ", Roll No. " & def_rollno & "</b> Has not deposited <b>" & left(monname,3) & "</b> fees.<br>")
							counter = counter+1						
						end if
				next
				objrs.movenext
			loop
			if counter = 0 then
			response.write("<h2>No such record found</h2>")
			end if
%>
<form action = "user.asp" method = "post">
			<input type ="submit" Value="Back to Home">
		</form>
<hr width = 80%>

		</body>
		</html>