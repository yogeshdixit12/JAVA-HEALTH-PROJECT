<%-- 
    Document   : appprv
    Created on : Mar 29, 2017, 2:22:05 AM
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
              <input type="hidden" class="form-control"id="name" value="<%=request.getParameter("name")%>" name="name">
   
        <div class="form-group">
      <label >Comment:</label>
      <textarea class="form-control" rows="3" id="coment" name="coment" ></textarea>
    </div>
          <div class="form-group"> 
         <label for="name" >Report Status:</label>
        <select class="form-control" id="status" name="status">
                                               
 <option value="Pending">Pending</option> 
 <option value="Approved">Approved</option>
 </select>
     </div>
    </body>
</html>
