<%-- 
    Document   : fcns
    Created on : Mar 14, 2013, 9:37:10 PM
    Author     : madhuri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head id="Head1">
<title>Welcome to e-Learning System</title>
<link href="images" rel="stylesheet" type="text/css" />
</head>
<body><table><tr><td>    
<marquee behaviour="scroll" direction="left"><p style="font-size:50px">
<font color="green">Welcome to E-Learning System....A new way to learn</font></marquee></td>
<td><div align="right"><img src="a.jpg" alt="e-Learning Logo" /></div></td></tr></table>
<div class="vspacer"></div>
<form name="form1" method="post" action="academics.jsp" id="form1">
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
    <p class='NavItem'><a href='change.html'><font color="green">ChangePassword</font></a></p>
    <p class='NavItem'><a href='signout.jsp'><font color="green">Sign Out</font></a></p>
</span>
</td>
<td style="width:80%;" align="top"></td>
</tr>
<tr>
<td style="width:80%;height:280px">
<span id="lblInfo">
    <%@ page import="java.sql.*" %>
<%
try
{
Connection con;
Statement st;
ResultSet rs;
String SQL;
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("jdbc:odbc:mydsn","system","madhuri");
SQL="select * from cnsforum";
st=con.createStatement();
rs=st.executeQuery(SQL);
%>
<br><br><br><b><center><font face='bookman old style' color='darkgreen'>CNS FORM DETAILS</b></font></center>
<%
while(rs.next())
	{
		%>
<pre><b>      Forum ID: </b><%= rs.getString(1) %>
<pre><b>      Question: </b><%= rs.getString(2) %>
<pre><b>      Answer:   </b><%= rs.getString(3) %><br>
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
<center><a href="cnsans.jsp"><font color="green">post answers</font></a><br><br>
    <a href="cnsques.jsp"><font color="green">Post New Questions</font></a>
    </center>
 <table align="center">  
            <tr><input type=submit value=BACK onClick="back()"><td>&nbsp;</td><td>&nbsp;</td></tr>
    <tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>
        <tr><a href="index.jsp"><b> HOMEPAGE</tr><td>&nbsp;</td><td>&nbsp;</td></b></a>
    </table>
</html>

