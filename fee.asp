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
		<% 
		 msg = request.querystring("msg")
		%>
		<HR WIDTH=80%>
		<%
			name = session("name")
		%>
		<center><h2>Welcome, <%=session("name")%></h2>
		<%
		 if msg = 1 then
		 response.write("<b><h2>Fee Updated</h2></b>")
		 end if
		%>
		<% if rollno="" then%>
		<form action = "fee.asp">
		Please enter students Roll No <input type= "text" name = "rollno">
		<br><input type = "submit" >
		</form>
		<%else%>
			<%
				deposit_req = request.querystring("deposit")
				if deposit_req="" then
			%>
		<table cellspacing="3px" cellpadding = "2px">
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
			<tr><th>Month</th><td>Jan</td><td>Feb</td><td>Mar</td><td>Apr</td><td>May</td><td>Jun</td><td>Jul</td><td>Aug</td><td>Sept</td><td>Oct</td><td>Nov</td><td>Dec</td></tr>
			<tr><th>Status</th><td><%=mon1%></td><td><%=mon2%></td><td><%=mon3%></td><td><%=mon4%></td><td><%=mon5%></td><td><%=mon6%></td><td><%=mon7%></td><td><%=mon8%></td><td><%=mon9%></td><td><%=mon10%></td><td><%=mon11%></td><td><%=mon12%></td></tr>
			
			</table>
		<form action = "fee.asp">
			<input type= "hidden" name = "rollno" value="<%=rollno%>">
			<input type= "hidden" name = "deposit" value="true">
		<input type ="submit" Value="Deposit Fee">
		</form>
<%else%>
			<form action = "fee_update.asp" method= "post">
			<table>
			<%
		
			Set objConn =Server.CreateObject("ADODB.Connection")
			db_path = server.mappath("db2.mdb")
			objConn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & db_path 
			set objRS = Server.CreateObject("ADODB.RecordSet")
			objRS.Open "Students", objConn
			Flag=0
			Do until objRS.EOF
					If lcase(objRS("RollNo"))=trim(Rollno) Then
						Stu_Name = Objrs("Name")
					%>
					<tr><td>Jan</td><td><input type="text" value = "<%=objrs("Jan15")%>" name="Jan15"></td></tr>
					<tr><td>Feb</td><td><input type="text" value = "<%=objrs("Feb15")%>" name="feb15"></td></tr>
					<tr><td>Mar</td><td><input type="text" value = "<%=objrs("Mar15")%>" name="Mar15"></td></tr>
					<tr><td>Apr</td><td><input type="text" value = "<%=objrs("Apr15")%>" name="Apr15"></td></tr>
					<tr><td>May</td><td><input type="text" value = "<%=objrs("May15")%>" name="MAy15"></td></tr>
					<tr><td>Jun</td><td><input type="text" value = "<%=objrs("Jun15")%>" name="Jun15"></td></tr>
					<tr><td>Jul</td><td><input type="text" value = "<%=objrs("Jul15")%>" name="Jul15"></td></tr>
					<tr><td>Aug</td><td><input type="text" value = "<%=objrs("Aug15")%>" name="Aug15"></td></tr>
					<tr><td>Sept</td><td><input type="text" value = "<%=objrs("Sep15")%>" name="Sept15"></td></tr>
					<tr><td>Oct</td><td><input type="text" value = "<%=objrs("Oct15")%>" name="Oct15"></td></tr>
					<tr><td>Nov</td><td><input type="text" value = "<%=objrs("Nov15")%>" name="NOv15"></td></tr>
					<tr><td>Dec</td><td><input type="text" value = "<%=objrs("Dec15")%>" name="Dec15"></td></tr>
					
					<%					
					End if
				ObjRS.MoveNext
			loop
	%>
			</table>
				<input type="hidden" value = "<%=request.querystring("rollno")%>" name="rn">
				<input type="submit" value="update">
			<%end if%>		
		<form action = "user.asp" method = "post">
			<input type ="submit" Value="Back to Home">
		</form>
		<%end if%>
		</center>
		
		<hr width = 80%>
		</body>
		</html>