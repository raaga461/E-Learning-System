<%-- 
    Document   : ooaduploadattencon
    Created on : Mar 16, 2013, 8:30:20 AM
    Author     : madhuri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page language="java" contentType="text/html" import="java.sql.*" session="true"%>
        <%
        try {
                String name = request.getParameter("name");
                String tc_no = request.getParameter("tc_no");
                String ac_no = request.getParameter("ac_no");
                Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:mydsn","system","madhuri");
	Statement st=con.createStatement();
        String id="";
        PreparedStatement pstmt1 = null; ResultSet rs = null;
                st = con.createStatement();
Statement st2=con.createStatement();                
                rs = st.executeQuery("select * from stureg where usr= '" + name + "' " );
                //session.setAttribute("usr",name);
                while(rs.next())
                                 { id=rs.getString(7);}
                if(name.equals(id))
                     {Statement st1=con.createStatement();
                  int i = st1.executeUpdate("update ooadattendance set totalclasses='"+tc_no+"' where usr= '" + name + "' " );
                  
                  int j = st1.executeUpdate("update ooadattendance set attendedclasses='"+ac_no+"' where usr= '" + name + "' " );
                  out.println("Attendance of '"+ name +"' has been updated succesfully.");  
                  st1.close();
                  con.close();
               }
                              
            }
        catch (Exception e) {
                out.println(e);
            }
 %>
