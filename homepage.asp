<HTML>
<HEAD><TITLE>Pratibha Typing Institute</TITLE>
<style>
@import url("layout.css");
</style>
<%
 err = request.querystring("err")
%>
</HEAD>
<BODY>
		<CENTER><H1>Pratibha Typing Institute</H1></CENTER>
		<HR WIDTH=80%>
		<%
			if err = 1 then
				response.write("<div id='error'><b>Invalid Username or Password</b></div>")
				end if
		%>
		<center><TABLE>
		<FORM ACTION="http://localhost/asp/login_process.asp" method="post">
		<tr><td>Username</td><td><input type="text" name="Uname"></td></tr>
		<tr><td>Password</td><td><input type="Password" name="Upass"></td></tr>
		<tr><td><input type="Submit" value="Login"></td><td><input type="reset"></td></tr>
		</form>
		</table></center>

</BODY>
</HTML>