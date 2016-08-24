<%-- 
    Document   : attendance
    Created on : Mar 14, 2013, 7:03:35 PM
    Author     : madhuri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" session="true"%>
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
    <p class='NavItem'><a href='change.html'><font color="green">Change Password</font></a></p>
    <p class='NavItem'><a href='signout.jsp'><font color="green">Sign Out</font></a></p>
</span>
</td>
<table align="center" border="5">
    <tr>
        <th style="width:20%" class="tablehead"><font color="green"><b>Course</b></font></th>
        <th style="width:20%" class="tablehead"><font color="green"><b>TotalClasses</b></font></th>
        <th style="width:20%" class="tablehead"><font color="green"><b>AttendedClasses</b></font></th>
        
    </tr>
    <% 
    try {
        
   //String s1 = request.getParameter("user_name");
        String s1= "madhurimeka";
    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    Connection con=DriverManager.getConnection("jdbc:odbc:mydsn","system","madhuri");
	Statement st=con.createStatement();
        ResultSet rs,rs1,rs2;
        rs = st.executeQuery("select * from attendance where usr='"+s1+"' ");
   while(rs.next()) { 
//int i=rs.getInt(2);
//int j=rs.getInt(3);
//float z=j/i*100;
%>
   <tr> <td align="center" class="celldata">CNS</td>
             <td align="center" class="celldata"> <%=rs.getString(2) %> </td>
        <td align="center" class="celldata"> <%=rs.getString(3) %> </td>
        
    </tr>
         <% }
        rs.close();
st.close();
con.close();
}
catch(Exception e)
{
  System.out.println(e);
} 
    try {
        
   //String s1 = request.getParameter("user_name");
        String s1= "madhurimeka";
    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    Connection con=DriverManager.getConnection("jdbc:odbc:mydsn","system","madhuri");
	Statement st=con.createStatement();
        ResultSet rs,rs1,rs2;
        rs = st.executeQuery("select * from ooadattendance where usr='"+s1+"' ");
   while(rs.next()) { 
//int i=rs.getInt(2);
//int j=rs.getInt(3);
//float z=j/i*100;
%>
    <tr> <td align="center" class="celldata">OOAD</td>
             <td align="center" class="celldata"> <%=rs.getString(2) %> </td>
        <td align="center" class="celldata"> <%=rs.getString(3) %> </td>
        
    </tr>
    <% }
        rs.close();
st.close();
con.close();
}
catch(Exception e)
{
  System.out.println(e);
} 
    try {
        
   //String s1 = request.getParameter("user_name");
        String s1= "madhurimeka";
    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    Connection con=DriverManager.getConnection("jdbc:odbc:mydsn","system","madhuri");
	Statement st=con.createStatement();
        ResultSet rs,rs1,rs2;
        rs = st.executeQuery("select * from swattendance where usr='"+s1+"' ");
   while(rs.next()) {
//int i=rs.getInt(2);
//int j=rs.getInt(3);
//float 
   //z=(j/i)*100;         %>
   <tr> <td align="center" class="celldata">SW</td>
             <td align="center" class="celldata"> <%=rs.getString(2) %> </td>
        <td align="center" class="celldata"> <%=rs.getString(3) %> </td>
    
    </tr>
    </table>
 &NewLine;
  &NewLine;
<table align="center">  
    <tr> <tr><input type=submit value=BACK onClick="back()"><td>&nbsp;</td><td>&nbsp;</td></tr></tr>
    <tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>
        <tr><a href="index.jsp"><b> HOMEPAGE</tr><td>&nbsp;</td><td>&nbsp;</td></b></a>
    </table>
    <% }
        rs.close();
st.close();
con.close();
}
catch(Exception e)
{
  System.out.println(e);
} %>

</html>

