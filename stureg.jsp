<%-- 
    Document   : stureg
    Created on : Mar 14, 2013, 2:07:44 PM
    Author     : madhuri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <marquee behaviour="scroll" direction="left"><p style="font-size:50px">
<font color="green">
Welcome to E-Learning
&nbsp;&nbsp;&nbsp;&nbsp;A new way to learn.....
</font>
</p>
</marquee>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>e-learning</title>
        <script language="javascript">
function doCheck()
{
  var u=document.getElementById("username");
  var p=document.getElementById("password");
  var r=document.getElementById("retypepass");
  var e=document.getElementById("email");
  var v=document.getElementById("city");
  var t=document.getElementById("country");
  var d=document.getElementById("designation");
  if(u.value == "")
  {
    alert ("enter the username");
	u.focus();
	return false;
	}
  
    if(p.value == "")
  {
    alert ("enter the password");
	p.focus();
	return false;
	}
	
	else if((p.value.length)<6)   
	{
	 alert("password should contain atleast 6 characters ");
	 p.focus();
 return false;
	 }
         if(r.value == "")
  {
    alert ("enter the confirm password");
	r.focus();
	return false;
	}
	
		   if((r.value)!=(p.value))
		   {
		   alert("Re-enter the password");
		   r.focus();
		   return false;
	}
		   
 if(n.value == "")
  {
    alert ("enter your name");
    n.focus();
	return false;
	}
	  if(e.value == "")
  {
    alert ("enter the email");
	e.focus();
	return false;
	}
	
	 else if(e.value.indexOf('@')==-1)
		      {
		       alert("Use @ email correctly");
		       e.focus();
		       return false;
		      }
	
	  else if(e.value.indexOf('.')==-1)
		       {
		        alert("Use . email correctly");
		        e.focus();
		        return false;
		       }
	

    if(v.value == "")
  {
    alert ("enter the city");
	v.focus();
	return false;
  }
  
  if(t.value == "")
  {
    alert ("enter the country");
	t.focus();
	return false;
	}
  if(d.value == "")
  {
    alert ("enter the designation");
	d.focus();
	return false;
	}
}
</script>
</head>
<body background="signup.jpg">
<!--start of result display-->
<!--end of result display-->
<table width="45%" border="0" align="center" cellpadding="0" cellspacing="0" bordercolorlight="green">
<tr>
<td>
<form name="f1" action="sturegcon.jsp" method="post">
<table width="100%" border="0" align="center" cellpadding="3" cellspacing="3">
<tr> 
    <tr>
            <td colspan="2" align="center"><b></b></td>
   </tr>
<tr>
    
<td colspan="2">
   
        </td>
<td> &nbsp;</td>
</tr>
     <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
     </tr>
        
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
<td colspan="2" class="infoLabel"><strong>
<font color="green" size="2" face="Arial, Helvetica, sans-serif">
Enter Your Personal Details</font></strong></td>
</tr>
<tr> 
<td class="infoLabel"><font color="green">*</font>Your Name:</td>
<td><input type="text" name="trainee_name" id="trainee_name"></td>
</tr><tr><td class="infoLabel"><font color="green">*</font>Id No:</td>
<td><input type="text" name="id_no" id="id_no"></td>
</tr>
<tr> 
<td class="infoLabel"><font color="green">*</font>Email ID(abc@example.com):</td>
<td><input type="text" name="email" id="email"></td>
</tr>
<tr> 
<td class="infoLabel"> City:</td>
<td><input type="text" name="city" id="city"></td>
</tr>
<tr> 
<td class="infoLabel"> Country:</td>
<td><input type="text" name="country" id="country"></td>
</tr>
<tr> 
<td class="infoLabel">Designation:</td>
<td><input type="text" name="designation" id="designation"></td>
</tr>
<tr> 
<td class="infoLabel">&nbsp;</td>
<td>&nbsp;</td>
</tr>
<tr> 
<td colspan="2" class="infoLabel">
<font color="green" size="2" face="Arial, Helvetica, sans-serif">
<strong>Enter Your Login Details</strong></font></td>
</tr>
<tr> 
<td class="infoLabel"><font color="green">*</font>User Name:</td>
<td><input type="text" name="username" id="username" ></td>
</tr>
<tr> 
<td class="infoLabel"><font color="green">*</font>Password:</td>
<td><input type="password" name="password" id="password"></td>
</tr>
<tr> 
<td class="infoLabel"><font color="green">*</font>Retype Password:</td>
<td><input type="password" name="retypepass" id="retypepass"></td>
</tr>
<tr> 
<td class="infoLabel">&nbsp;</td>
<td> <input name="Submit" type="Submit" id="submit" value="Register" onclick="return doCheck()" />
</tr>
</table>
</form>
</td>
</tr>
</table>
</body>
</html>
