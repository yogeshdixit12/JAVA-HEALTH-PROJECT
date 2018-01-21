<%-- 
    Document   : setvalue
    Created on : Mar 16, 2017, 3:09:45 AM
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
          
       session.setAttribute("expiid",request.getParameter("topi"));
  String tv=session.getAttribute("expiid").toString();
      // out.println(tv);
    response.sendRedirect("http://localhost:8080/HealthProject/patent/pages/chatroom.jsp");
        %>
    </body>
</html>
