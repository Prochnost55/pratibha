<%
	
			name = session("name")
			If name ="" then
			response.redirect("homepage.asp")
			end if
			cp = request.querystring("cp")
			msg = request.querystring("msg")
					
			if cp = "" then
			response.redirect("pender.asp")
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
		<div id="user_action">
		<%
		if msg = 1 then
		response.write("<h2> Record deleted Succesfully</h2>")
		end if
		if msg = 2 then
		response.write("<h2> No such record found.</h2>")
		end if
		%>
		
		<form method = "post" action = "fee.asp">
			<input type="submit" value="Fee Deposit">
		</form>
		<form method = "post" action = "AddNew.asp">
			<input type="submit" value="New Admission">
		</form>
		<form method = "post" action = "CheckAvail.asp">
			<input type="submit" value="Check Availability">
		</form>
		<form method = "post" action = "CheckPending.asp">
			<input type="submit" value="Check Pending">
		</form>
		<form method = "post" action = "About.asp">
			<input type="submit" value="About Student">
		</form>
		</div>
		
		<a href = "homepage.asp">Logout</a></center>
		<hr width = 80%>
		</body>
		</html>
		