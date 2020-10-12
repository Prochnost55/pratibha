<%
		var_time = cdate("08:00:00 AM")
				for i = 1 to 6
					for j = 1 to 16
						var_ptime = var_time + Cdate("00:45")
						varx = var_time&" - "& var_ptime
						
						var_time = var_ptime
					next
				next
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
		<%
			name = session("name")
		%>
		<center><h2>Welcome, <%=name%></h2>
<%
			
			Set objConn =Server.CreateObject("ADODB.Connection")
			db_path = server.mappath("db2.mdb")
			objConn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & db_path 
			set objRS = Server.CreateObject("ADODB.RecordSet")
			objRS.Open "record", objConn,2,2
						tym_ini = cdate("08:00:00 AM")
						tym_end = tym_ini + cdate("00:45")
						tym_period = tym_ini & " - " & tym_end
			do until objRS.EOF
						
						if objrs("timing") = tym_period then
							response.write("<h3>In Time Period " & tym_period &"</h3>Machines available are ")
							for i = 1 to 10 
								if objrs(i) = "none" then
									response.write( i & "," )
								 end if
								 
							Next
							response.write("<br><br>")
						end if
						tym_ini = tym_ini + cdate("00:45")
						tym_end = tym_end + cdate("00:45")
						tym_period = tym_ini & " - " & tym_end
							
					
					
				
			

			objRS.MoveNext
			loop
			objRs.close
		objConn.Close
		Set objRS = Nothing
		Set objConn = Nothing
%>
		
		</center>
		<hr width = 80%>
		</body>
		</html>
		