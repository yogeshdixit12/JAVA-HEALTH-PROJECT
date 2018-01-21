<%-- 
    Document   : expre
    Created on : Mar 23, 2017, 11:49:47 AM
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
          <img src="http://localhost:8080/HealthProject/expre?msg=<%=request.getParameter("name")%>" width="100%" height="80%">
    </body>
</html>
