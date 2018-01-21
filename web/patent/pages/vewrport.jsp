<%-- 
    Document   : vewrport
    Created on : Mar 22, 2017, 12:31:27 PM
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
        <img src="http://localhost:8080/HealthProject/vewreport?msg=<%=request.getParameter("name")%>" width="100%" height="80%">
    </body>
</html>
