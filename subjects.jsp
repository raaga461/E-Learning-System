<%-- 
    Document   : subjects
    Created on : Mar 14, 2013, 8:01:04 PM
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
<form name="form1" method="post" action="upload.jsp" id="form1" method="POST" enctype="multipart/form-data">
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
    <p class='NavItem'><a href='fachome.jsp'><font color="green">Home</font></a></p>
    <p class='NavItem'><a href='forum1.jsp'><font color="green">Forums</font></a></p>
    <p class='NavItem'><a href='subjects.jsp'><font color="green">AllocatedSubjects</font></a></p>
    <p class='NavItem'><a href='uploadattendance.jsp'><font color="green">UploadAttendance</font></a></p>
    <p class='NavItem'><a href='change1.html'><font color="green">Change Password</font></a></p>
    <p class='NavItem'><a href='signout1.jsp'><font color="green">Sign Out</font></a></p>
</span>
</td>
<td style="width:80%;" align="top"></td>
</tr>
<tr>
<td style="width:80%;height:280px">
<span id="lblInfo">
<table style="width:80%;" border="5"  align="center" class="tab1">
<tr>
    <td style="width:4%" class="tablehead" rowspan="2"><font color="green"><b>S.No</b></font></td>
    <td style="width:13%" class="tablehead" rowspan="2"><font color="green"><b>Subject Code</b></font></td>
    <td style="width:50%" class="tablehead" rowspan="2"><font color="green"><b>Subject Description</b></font></td>
    <td class="tablehead" colspan="2"><font color="green"><b>Max.Marks</b></font></td>
    <td style="width:8%" class="tablehead" rowspan="2"><font color="green"><b>Total Marks</b></font></td>
     <td style="width:8%" class="tablehead" rowspan="2"><font color="green"><b>Browse</b></font></td>
    <td style="width:8%" class="tablehead" rowspan="2"><font color="green"><b>UploadMaterial</b></font></td>
</tr>
<tr>
    <td style="width:7%" class="tablehead"><font color="green">Ses</font></td>
    <td style="width:6%" class="tablehead"><font color="green">Uni</font></td>
</tr>
<tr><td align="center" class="celldata">&nbsp;1</td>
<td align="center" class="celldata">CS10CS306</td>
<td class="celldata"><font color="green">cryptology & Network Security</font></a>
</td>
<td align="center" class="celldata">60</td>
<td align="center" class="celldata">40</td>
<td align="center" class="celldata">&nbsp;100</td>
<td align="center" class="celldata"><font color="green"><input type="file" name="theFile"><br></td>
<td align="center" class="celldata"><input type="submit" value="upload"></font></td>
</tr>
<tr><td align="center" class="celldata">&nbsp;2</td>
<td align="center" class="celldata">CS10CS307</td>
<td class="celldata"><font color="green">Object Oriented Analysis and design</font></a></td>
<td align="center" class="celldata">60</td>
<td align="center" class="celldata">40</td>
<td align="center" class="celldata">&nbsp;100</td>
<td align="center" class="celldata"><font color="green"><input type="file" name="theFile"><br></td>
<td align="center" class="celldata"><input type="submit" value="upload"></font></td>
</tr>
<tr><td align="center" class="celldata">&nbsp;3</td>
<td align="center" class="celldata">CS10CSE51</td>
<td class="celldata"><font color="green">Semantic web</font></a>
</td>
<td align="center" class="celldata">60</td>
<td align="center" class="celldata">40</td>
<td align="center" class="celldata">&nbsp;100</td>
<td align="center" class="celldata"><font color="green"><input type="file" name="theFile"><br></td>
<td align="center" class="celldata"><input type="submit" value="upload"></font></td>
</tr>
</form>

