<%-- 
    Document   : cnsquescon
    Created on : Mar 15, 2013, 4:21:23 PM
    Author     : madhuri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%

  String forumid = request.getParameter("QID");
  String question = request.getParameter("question");
  Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
  Connection con=DriverManager.getConnection("Jdbc:Odbc:mydsn","system","madhuri");
  String id="";
  try
  {
  Statement st=con.createStatement();
PreparedStatement pstmt1 = null;
 ResultSet rs = null;
                st = con.createStatement();
                rs = st.executeQuery("select forumid from cnsforum where forumid= '" + forumid + "' " );
                session.setAttribute("forumid",forumid);
                if(rs.next())
                {
                  response.sendRedirect("error.jsp");
                }
               else    
               {
                 pstmt1 = con.prepareStatement("insert into cnsforum values('" + forumid + "','" + question + "','')");
                 pstmt1.executeUpdate();
                 out.println("Answer was posted Succesfully");
                  }
            } catch (Exception e) {
                out.println(e);
                           }
%>
