<%-- 
    Document   : stuhome
    Created on : Mar 14, 2013, 3:12:09 PM
    Author     : madhuri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.io.*,java.sql.*;"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1">
<title>
	Welcome to e-Learning System
</title>
</head>
    <body><table><tr><td>    
<marquee behaviour="scroll" direction="left"><p style="font-size:50px">
<font color="green">Welcome to E-Learning system..A new way to learn</font></marquee></td>
<td><div align="right"><img src="a.jpg" alt="e-Learning Logo" /></div></td></tr></table>   
    <div id="header"></div>

        <table>
            <div align="left">
<table>
    <TR>
        <td>
            <th></th> <th></th><th>Welcome..,</th></td></TR>
    <tr></tr>
    <tr></tr>
    <tr></tr>
    <tr>
    <TD width=120>
        <a href="http://localhost:8084/elearn/stuhome.jsp"><font color="green"> Home</font></a>&nbsp;
        <a href="http://localhost:8084/elearn/forum.jsp"><font color="green">Forums</font></a>
        &nbsp;<a href="http://localhost:8084/elearn/academics.jsp"><font color="green"> Academics</font></a>
        <a href="http://localhost:8084/elearn/attendance.jsp"><font color="green"> Attendance</font></a>
        <a href="http://localhost:8084/elearn/change.html"><font color="green"> ChangePassword</font></a>
        <a href="http://localhost:8084/elearn/signout.jsp"><font color="green"> SignOut</font></a>
        
    </TD> 
    </tr>
</table>
                <%
try
{
                String s1 = request.getParameter("user_name");
                 //Connection con;
                 //Statement st1=con1.createstatement();
                ResultSet rs;
                String SQL;
                //String s1 = request.getParameter("user_name");
                String s2 = request.getParameter("pass_word");
                session.setAttribute("s1", s1);
                session.setAttribute("s2", s2);
               Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                 Connection con = DriverManager.getConnection("Jdbc:Odbc:mydsn","system","madhuri");
                  Statement st=con.createStatement();
                  Statement st1=con.createStatement();
                String stat = "";
                ResultSet rs1,rs2;
                rs1 = st.executeQuery("select * from stureg where usr='" + s1 + "' and password= '" + s2 + "'");
                SQL="select * from stulogin where usr= '" + s1 + "' " ;
                //rs2 =st.executeQuery(SQL);
//Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
//con=DriverManager.getConnection("jdbc:odbc:mydsn","system","madhuri");
//SQL= "select * from stulogin ";
//st1=con.createStatement();
rs2=st1.executeQuery(SQL);
 while (rs2.next())
         {
     //{ out.println("welcome");}
                %>
<center><font color="green" size="30"<pre><b>ID:</b><%= rs2.getString(1) %><br>
<pre><b>Name:</b><%= rs2.getString(2) %><br> </font>
 </center>
<%}
      %>
<alert> <% %> </alert>
 <%
rs2.close();
st.close();
con.close();}
catch(Exception e)
{
  System.out.println(e);
}
%>
            </div>
            <td><div align="right">
<img src="a.jpg">
</div>
        </table>

            <table align="center">  
        <tr> <input type=submit value=BACK onClick="back()"><td>&nbsp;</td><td>&nbsp;</td></tr>
    <tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>
        <tr><a href="index.jsp"><b> HOMEPAGE</tr><td>&nbsp;</td><td>&nbsp;</td></b></a>
    </table>
  </body>
</html>