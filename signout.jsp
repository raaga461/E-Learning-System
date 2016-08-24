<%-- 
    Document   : signout
    Created on : Mar 14, 2013, 5:04:55 PM
    Author     : madhuri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*,java.sql.*;"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1"><title>
	Welcome to e-Learning System
</title><link href="images/Styles.css" rel="stylesheet" type="text/css" />
 <SCRIPT type="text/javascript">
    window.history.forward();
    function noBack() { window.history.forward(); }
</SCRIPT>
</head>
<body onload="noBack();"
    onpageshow="if (event.persisted) noBack();" onunload="">
<div align="right">
<img src="a.jpg" alt="e-Learning Logo" style="float:center" />
</div>
<div id="topspacer"></div>
<div id="mainhead2">Sign Out!</div>
<div id="topspacer2"></div>
<div id="main2">  
<form name="form1" method="post" action="signout.jsp" id="form1">
<div>
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value=""</div>
<table style="width:70%;height:280px" align="center" >
<tr>
<td valign="middle">
    <span id="Label1">You have been logged out sucessfully.<br/><br/>
    <a href="stulogin.jsp"><font color="green">Back to Home</font></a></span>
    </td>
</tr>
</table>
</form>
</div> 
</body>
</html>

