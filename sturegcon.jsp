<%-- 
    Document   : sturegcon
    Created on : Mar 14, 2013, 2:17:45 PM
    Author     : madhuri
--%>


<%@ page language="java" contentType="text/html" import="java.sql.*" session="true"%>
        <%
            try {
                String studentid = request.getParameter("id_no");
                String user = request.getParameter("username");
                String pass = request.getParameter("password");
                String repass = request.getParameter("retypepass");
                String des = request.getParameter("designation");
                String na = request.getParameter("trainee_name");
                String email = request.getParameter("email");
                String city = request.getParameter("city");
                String coun = request.getParameter("country");
                Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:mydsn","system","madhuri");
	Statement st=con.createStatement();
        PreparedStatement pstmt1 = null;
        PreparedStatement pstmt2 = null;
        //Statement st1 = con1.createStatement();
        ResultSet rs = null;
                st = con.createStatement();
                rs = st.executeQuery("select studentid from stureg where studentid= '" + studentid + "' " );
                session.setAttribute("studentid",studentid);
                if(rs.next())
                {
                  response.sendRedirect("error.jsp");
                }
               else    
               {
                 pstmt1 = con.prepareStatement("insert into stureg values('" + studentid + "','" + na + "','" + email + "','" + city + "','" + coun + "','" + des+ "','" + user + "','" + pass +"')");
                 pstmt1.executeUpdate();
                 pstmt2 = con.prepareStatement("insert into stulogin values('" + studentid + "','" + user + "','" + pass +"')");
                 pstmt2.executeUpdate();
                 out.println("Congrats!!Now you are a registered Member");  
               }
            } catch (Exception e) {
                out.println(e);
            }
 %>