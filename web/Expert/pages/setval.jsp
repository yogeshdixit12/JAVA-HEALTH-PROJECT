<%-- 
    Document   : setval
    Created on : Mar 25, 2017, 7:10:34 AM
    Author     : Rowdy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>gjgj</h1>
        <%
          
       session.setAttribute("patidd",request.getParameter("msgg"));
  String tvv=session.getAttribute("msgg").toString();
       out.println(tvv);
    //response.sendRedirect("http://localhost:8080/HealthProject/Expert/pages/chatroom.jsp");
        %>
    </body>
</html>
