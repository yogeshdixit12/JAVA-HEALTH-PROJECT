<%-- 
    Document   : viewappointment
    Created on : 20 Feb, 2017, 11:48:30 AM
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
    <body>
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
         <input type="name"class="form-control" name="patid" value="<%=rs.getString("patid")%>" readonly="">
     </div>
    
     <div class="form-group"> 
         <label for="name" >Country:</label>
         <input type="name"class="form-control" name="country" value="<%=hlpr.Helper.getCountry(rs.getString("country"))%>" readonly="">
     </div>
     <div class="form-group"> 
         <label for="name" >State:</label>
         <input type="name"class="form-control" name="state" value="<%=hlpr.stat.getState(rs.getString("state"))%>" readonly="">
     </div>
     <div class="form-group"> 
         <label for="name" >City:</label>
         <input type="name"class="form-control" name="city" value="<%=hlpr.cty.getCity(rs.getString("city"))%>" readonly="" >
     </div>
      <div class="form-group"> 
         <label for="name" >Expert Type:</label>
         <input type="name"class="form-control" name="exptype" value="<%=rs.getString("exptype")%>" readonly="">
     </div>
     <div class="form-group"> 
         <label for="name" >Appointment Date:</label>
         <input type="name"class="form-control" name="patid" value="<%=rs.getString("appdate")%>" readonly="" >
     </div>
     <div class="form-group"> 
         <label for="name" >Appointment Time:</label>
         <input type="name"class="form-control" name="patid" value="<%=rs.getString("apptime")%>"  readonly="">
     </div>
     <div class="form-group"> 
         <label for="name" >Fee:</label>
         <input type="name"class="form-control" name="patid" value="<%=rs.getString("fee")%>"readonly="" >
     </div>
     <div class="form-group"> 
         <label for="name" >Description:</label>
         <input type="name"class="form-control" name="patid" value="<%=rs.getString("descr")%>"readonly="" >
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
</html>
