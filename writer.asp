<%
						var_time = cdate("08:00:00 AM")
						for i = 1 to 16 
						var_ptime = var_time + Cdate("00:45")
						a = var_time&" - "& var_ptime 
						
				
				dim objConn, strConn, objRs
	set objConn = Server.CreateObject("ADODB.Connection")
	db_path = server.mappath("db2.mdb")
	
	strConn = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & db_path
'		"C:\Database\db2.mdb"
	objConn.Open strConn
	Set objRS = Server.CreateObject("ADODB.RecordSet")
	objRS.Open "record", objConn, 2,2
	objRS.AddNew
	objrs("timing") = a
	objRS.Update
	objRS.Close
	objconn.close
	set objrs = nothing
	set objconn = nothing
						var_time = var_ptime
						next
	%>