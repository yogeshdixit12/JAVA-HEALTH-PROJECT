<%-- 
    Document   : vewwprt
    Created on : Mar 25, 2017, 2:47:08 PM
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
         <img src="http://localhost:8080/HealthProject/vwrpt?msg=<%=request.getParameter("name")%>" width="100%" height="80%">
        
     
    </body>
</html>
