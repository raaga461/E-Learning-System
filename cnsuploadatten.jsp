<%-- 
    Document   : uploadattendancecon
    Created on : Mar 15, 2013, 8:40:08 PM
    Author     : madhuri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page language="java" contentType="text/html" import="java.sql.*" session="true"%>
       <html><head id="Head1">
<title>Welcome to e-Learning System</title>
<link href="images" rel="stylesheet" type="text/css" />
</head>
<form name="form1" method="post" action="cnsuploadattencon.jsp" id="form1">
<script language="javascript">
function doCheck()
{
  var n=document.getElementById("name");
  var tc=document.getElementById("tc_no");
  var ac=document.getElementById("ac_no");
   if(n.value == "")
  {
    alert ("enter the studentname");
	n.focus();
	return false;
	}
        if(n.value == "")
  {
     alert ("enter the total classes conducted.");
	tc.focus();
	return false;
	}
        
  if(ac.value == "")
  {
     alert ("enter the total classes attended.");
	ac.focus();
	return false;
	}
 </script>
<body><table><tr><td>    
<marquee behaviour="scroll" direction="left"><p style="font-size:50px">
<font color="green">Welcome to E-Learning System....A new way to learn</font></marquee></td>
<td><div align="right"><img src="a.jpg" alt="e-Learning Logo" /></div></td></tr></table>
<div class="vspacer"></div>
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
    <p class='NavItem'><a href='forum.jsp'><font color="green">Forums</font></a></p>
    <p class='NavItem'><a href='subjects.jsp'><font color="green">AllocatedSubjects</font></a></p>
    <p class='NavItem'><a href='uploadattendance.jsp'><font color="green">UploadAttendance</font></a></p>
    <p class='NavItem'><a href='change1.html'><font color="green">ChangePassword</font></a></p>
    <p class='NavItem'><a href='signout.jsp'><font color="green">SignOut</font></a></p>
</span>
</td>
<td style="width:80%;" align="top"></td>
</tr>
<table align="center" border="5">
    <tr>
        <th style="width:30%" class="tablehead"><font color="green"><b>ID NO</b></font></th>
        <th style="width:30%" class="tablehead"><font color="green"><b>Name</b></font></th>
    </tr>
    <% 
try {
    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    Connection con=DriverManager.getConnection("jdbc:odbc:mydsn","system","madhuri");
	Statement st=con.createStatement();
        
        ResultSet rs;
                rs = st.executeQuery("select * from stulogin");
                while(rs.next())
                                       {
    %><tr> <td align="center" class="celldata"> <%=rs.getString(1) %> </td>
        <td align="center" class="celldata"> <%=rs.getString(2) %> </td></tr>
  <% } 
  rs.close();
st.close();
con.close();
}
catch(Exception e)
{
  System.out.println(e);
} %>
</table>
<table>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr><tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr><tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
&NewLine;
&NewLine;
<table align="center">
    <tr>
        <td><font color="green">StudentName:</font></td>
        <td width="75%"> 
            <input type="text" name="name" id="name"></td>
    </tr>
   
     <tr>
        <td><font color="green">TotalClasses:</font></td>
        <td><input type="text" name="tc_no" id="tc_no"></td>
    </tr>
    <tr>
        <td><font color="green">AttendedClasses:</font></td>
        <td><input type="text" name="ac_no" id="ac_no"></td>
    </tr>
    <tr> 
<td>&nbsp;</td>
<td> <input name="Submit" type="Submit" id="submit" value="Upload" onclick="return doCheck()" />
</tr>
</table>
</form>
</body>
</html>
