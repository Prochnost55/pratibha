<%
			
			Set objConn =Server.CreateObject("ADODB.Connection")
			db_path = server.mappath("db2.mdb")
			objConn.Open "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" & db_path 
			set objRS = Server.CreateObject("ADODB.RecordSet")
			objRS.Open "students", objConn,2,2
			do until objRS.EOF
					DOJ = trim(objrs("DOJ"))
					leng = len(doj)
					chop = instr(doj,"/")
					doj_mon = left(doj, chop-1)
					doj = right(doj,leng-chop)
					leng = len(doj)
					dates = left(doj,leng-5)
					
					today = trim(date())
					
					leng = len(today)
					chop = instr(today,"/")
					today_mon = left(today, chop-1)
					today = right(today,leng-chop)
					leng = len(today)
					today = left(today,leng-5)
					
				
					
					if today_mon > Doj_mon then
						if dates =< today then
								for i = doj_mon to today_mon-1
									mon_name = monthname(i)
									mon_name = trim(left(mon_name,3)) & "15"
									objrs(mon_name) = "Pending"
									
								next
						end if
						
					end if
					objrs.movenext
			loop
				
			objRs.close
objConn.Close
Set objRS = Nothing
Set objConn = Nothing
response.redirect("user.asp?cp=yes")
%>