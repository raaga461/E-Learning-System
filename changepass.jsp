<%-- 
    Document   : changepass
    Created on : Mar 14, 2013, 5:11:59 PM
    Author     : madhuri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%
String currentPassword=request.getParameter("current");
String Newpass=request.getParameter("new");
String conpass=request.getParameter("confirm");
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("Jdbc:Odbc:mydsn","system","madhuri");
String pass="";
String id="";
try{
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from stulogin where password='"+currentPassword+"'");
while(rs.next()){
id=rs.getString(2);
pass=rs.getString(3);
}
System.out.println(id+ " " +pass);
if(pass.equals(currentPassword)){
Statement st1=con.createStatement();
//
int i=st1.executeUpdate("update stulogin set password='"+Newpass+"' where usr='"+id+"'");
int j=st1.executeUpdate("update stureg set password='"+Newpass+"' where usr='"+id+"'");
out.println("Password changed successfully");
st1.close();
con.close();
}
else{
out.println("Invalid Password");
}
}
catch(Exception e){
out.println(e);
}
%>