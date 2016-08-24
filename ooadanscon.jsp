<%-- 
    Document   : ooadanscon
    Created on : Mar 15, 2013, 5:00:04 PM
    Author     : madhuri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%

  String forumid = request.getParameter("QID");
  String answer = request.getParameter("answer");
  Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
  Connection con=DriverManager.getConnection("Jdbc:Odbc:mydsn","system","madhuri");
  String id="";
  try
  {
  Statement st=con.createStatement();
 ResultSet rs=st.executeQuery("select * from ooadforum where forumid='"+forumid+"'");
while(rs.next()){
id=rs.getString(1);
}
 if(forumid.equals(id)){
 Statement st1=con.createStatement();    
int i=st1.executeUpdate("update ooadforum set answer='"+answer+"' where forumid='"+id+"'");
out.println("Answer was posted Succesfully");
st1.close();
con.close();
}
else
{
 out.println("Answer cannot be posted.");   
}
  }     
catch(Exception e){
out.println(e);
}
%>
