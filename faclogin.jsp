<%-- 
    Document   : faclogin
    Created on : Mar 14, 2013, 2:40:20 PM
    Author     : madhuri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><title>E-LEARNING</title>
<marquee behaviour="scroll" direction="left"><p style="font-size:50px">
<font color="green">
Welcome to E-Learning.... A new way to learn 
</font>
</p>
</marquee>
<style>
.activeMenu{
font-family:verdana;font-weight:bold;font-size:11px;color:#666666;text-decoration:none;
}
A.menuLink{
font-family:verdana;font-size:11px;color:#666666;text-decoration:none;
}
A.menuLink:hover{
font-family:verdana;font-size:11px;color:#666666;text-decoration:none;
}
TD.infoLabel{
font-family:verdana;font-size:11px;color:#666666;text-decoration:none;
}
TD.infoValue{
font-family:verdana;font-weight:bold;font-size:11px;color:#336699;text-decoration:none;
}
TD.login{
font-family:verdana;font-size:11px;color:#111111;text-decoration:none;
}
</style>
<script>
function fnValidate()
{
if(document.f1.user_name.value==""){
alert("Enter your user id.");
return false;
}
if(document.f1.pass_word.value==""){
alert("Enter your Password.");
return false;
}
}

</script>
</head>
<table width="100%">
    <tr>
        <td>
<table width="100%" border="0">
<tr>
<td>
<table width="100%" align="center">
<tr> <td> 
</td> </tr> </table>
<br>
<br>
<form name=f1 action="fachome.jsp" method=post >
    
<table width="50%" border="0" align="right" cellpadding="0" cellspacing="2">
<tr> 
<td rowspan="5"></td>
<td colspan="1"></td>
</tr>
<tr> 
<td height="25" colspan="2" align="center"><div align="left">
<font color="green" size="2" face="Arial">
    <strong>Login As Faculty Member</strong></font></div></td>
</tr>
<tr> 
    <td width="25%" class="infoLabel"><font color="green">User ID:</font></td>
<td width="75%"><font color="green"> 
<input type="text" name="user_name" >
</font></td>
</tr>
<tr> 
    <td class="infoLabel"><font color="green">Password:</font></td>
<td> <input type="password" name="pass_word"> </td>
</tr>
<tr> 
    <td>&nbsp;</td>
<td><input type="submit" name=submit value=Login onClick="return fnValidate()"></td>
</tr>
<tr> 
<Td colspan=2></Td>
</tr>
<tr> 
<Td colspan=2></Td>
</tr>
<tr> 
<Td colspan=2><div align="left"><font size="2" face="Arial, Helvetica, sans-serif">
</font><font size="2">&nbsp;&nbsp;&nbsp;&nbsp;</font>
<font size="2" face="Arial, Helvetica, sans-serif">
    <a href="facreg.jsp"><font color="green">SignUp</font></a></font>
<font size="2"></font></div></Td>
</tr>
</table>
</form>
</td>
</tr>
</table>
</td>
<td>
<div align="right"><img src="a.jpg"></div></td>
</tr></table>
<p>&nbsp;</p>
<table align="center">  
            <tr><input type=submit value=BACK onClick="back()"><td>&nbsp;</td><td>&nbsp;</td></tr>
    <tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>
        <tr><a href="index.jsp"><b> HOMEPAGE</tr><td>&nbsp;</td><td>&nbsp;</td></b></a>
    </table>
</body>
</html>

