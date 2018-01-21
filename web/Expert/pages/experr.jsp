<%-- 
    Document   : experr
    Created on : Mar 25, 2017, 7:47:24 AM
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
        
        <%
        session.setAttribute("patid", request.getParameter("msgg"));
        String ttt=session.getAttribute("patid").toString();
       //out.println(ttt);
        response.sendRedirect("http://localhost:8080/HealthProject/Expert/pages/chatroom.jsp");
      %>
        