<%-- 
    Document   : editappointment
    Created on : 20 Feb, 2017, 5:09:07 AM
    Author     : Rowdy
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
</html><body>
         <%
       try 
 {
  Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/site","root","root");
       Statement st=con.createStatement();
        String sql="Select * from appointmentt where id='"+request.getParameter("name")+"'";
            
            ResultSet rs=st.executeQuery(sql);
            rs.next();
            %>
        <div class="modal-body">
     <div class="form-group"> 
         <label for="name" >Patient Id:</label>
         <input type="name"class="form-control" name="patid" value="<%=rs.getString("patid")%>" >
     </div>
     <div class="form-group"> 
         <label for="name" >Country:</label>
         <input type="name"class="form-control" name="country" value="<%=rs.getString("country")%>" >
     </div>
     <div class="form-group"> 
         <label for="name" >State:</label>
         <input type="name"class="form-control" name="state" value="<%=rs.getString("state")%>" >
     </div>
     <div class="form-group"> 
         <label for="name" >City:</label>
         <input type="name"class="form-control" name="city" value="<%=rs.getString("city")%>" >
     </div>
     <div class="form-group"> 
         <label for="name" >Email:</label>
         <input type="name"class="form-control" name="email" value="<%=rs.getString("email")%>" >
     </div>
     <div class="form-group"> 
         <label for="name" >contact:</label>
         <input type="name"class="form-control" name="contact" value="<%=rs.getString("contact")%>" >
     </div>
   
         <div class="modal-footer" style="background-color:yellowgreen;">
       
  <div>
  <button type="submit" class="btn pull-left">Submit</button>
       
  <button type="button"margin="top" class="btn pull-right" data-dismiss="modal">Close</button></div>
          </div>
     </div>
      </div>
  </div>
</form>
  </div>
       <%
  rs.close();
  
 }
       catch(Exception e){out.print(e.getMessage());}
  
  %>
    </body>
