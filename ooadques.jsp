<%-- 
    Document   : ooadques
    Created on : Mar 15, 2013, 5:03:51 PM
    Author     : madhuri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.io.*,java.sql.*;"%>
<html><head id="Head1">
<title>Welcome to e-Learning System</title>
<link href="images" rel="stylesheet" type="text/css" />
</head>
<body><table><tr><td>    
<marquee behaviour="scroll" direction="left"><p style="font-size:50px">
<font color="green">Welcome to E-Learning System....A new way to learn</font></marquee></td>
<td><div align="right"><img src="a.jpg" alt="e-Learning Logo" /></div></td></tr></table>
<div class="vspacer"></div>
<form name="form1" method="post" action="ooadquescon.jsp" id="form1">
<div>
    <input type="hidden" name="" id="" value="" />
</div>
<table style="width:100%; height:100%" cellpadding="0" cellspacing="0" >
<tr>
<td id="NavHead"> Navigation</td>
<td id="ConHead" "height:20px"></td>
</tr> 
<tr>
<td style="width:20%; height:100%; vertical-align:top"  bgcolor="ffffff" id="lmenu" rowspan="2">
<span id="Label1">
    <p class='NavItem'><a href='stuhome.jsp'><font color="green">Home</font></a></p>
    <p class='NavItem'><a href='forum.jsp'><font color="green">Forums</font></a></p>
    <p class='NavItem'><a href='academics.jsp'><font color="green">Academics</font></a></p>
    <p class='NavItem'><a href='attendance.jsp'><font color="green">Attendance</font></a></p>
    <p class='NavItem'><a href='change.html'><font color="green">Change Password</font></a></p>
    <p class='NavItem'><a href='signout.jsp'><font color="green">Sign Out</font></a></p>
</span>
</td>
<td style="width:80%;" align="top"></td>
</tr>
<tr>
<td style="width:100%;height:280px">
<span id="lblInfo">
<SCRIPT type="text/javascript" LANGUAGE="JavaScript">
function validate(){
	var v= document.getElementById("id_no").value;
	if(v == ""){
		alert("Please enter question ID");
		document.getElementById("id").focus();
		return false;
	}
}
function back()
{
window.history.back();
}
</SCRIPT>
<table style="width:100%;" border="5"  align="center" class="tab1">
<tr>
    <td style="width:6%" class="tablehead" rowspan="2"><font color="green"><b>Ques ID</b></font></td>
    <td style="width:45%" class="tablehead" rowspan="2"><font color="green"><b>Questions</b></font></td>
    <td style="width:55%" class="tablehead" rowspan="2"><font color="green"><b>Answers</b></font></td>
</tr>
</SCRIPT>
 <%
try
{
Connection con;
Statement st;
ResultSet rs;
String SQL;
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("jdbc:odbc:mydsn","system","madhuri");
SQL="select * from ooadforum";
st=con.createStatement();
rs=st.executeQuery(SQL);
while(rs.next())
	{
		%>
<tr>
<td align="center" class="celldata"><%= rs.getString(1) %></td>
<td align="center" class="celldata"> <%= rs.getString(2) %> </td>
<td class="celldata"> <%= rs.getString(3) %> </td>
</tr>
<%
}
rs.close();
st.close();
con.close();
}
catch(Exception e)
{
  System.out.println(e);
}
%>

&NewLine;
&NewLine;
&NewLine;
&NewLine;
<table>
    <tr>
        <td>Ques ID:</td>
        <td><INPUT TYPE="text" size=10 id="id_no" name="QID"></td>
    </tr>
    <tr>
        <td>Question:</td>
        <TD><TEXTAREA NAME="question" ROWS="5" COLS="50" onFocus="setvalue()" id="problem" ></TEXTAREA></TD>
    </tr>
    <TR>
                    <TD></TD>
                    <td style="text-align: center" align=center><INPUT TYPE="submit"value="submit" onClick="javascript:validate();"></td>
                </TR>
</table>
<table align="center">  
    <tr><input type=submit value=BACK onClick="back()"><td>&nbsp;</td><td>&nbsp;</td></tr><br>
    <tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>
    <tr><a href="index.jsp"><b> HOMEPAGE</tr><td>&nbsp;</td><td>&nbsp;</td></b></a><br>
    </table>