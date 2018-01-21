<%-- 
    Document   : editappointment
    Created on : 20 Feb, 2017, 5:09:07 AM
    Author     : Rowdy
--%>

<%@page import="java.sql.*"%>
<%@page import="hlpr.*"%>
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
       
           
      <!-- Modal content-->
      
       
          <div class="form-group"> 
         <label for="name" >Patid:</label>
         <input type="name" class="form-control" name="patid" readonly="" value="<%=rs.getString("patid")%>" >
     </div>
      <input type="hidden" class="form-control" name="id" readonly="" value="<%=rs.getString("id")%>" >
     <div class="form-group"> 
         <label for="name" >Country:</label>
         <input type="name"class="form-control" name="country" readonly="" value="<%=hlpr.Helper.getCountry(rs.getString("country"))%>" >
     </div>
     <div class="form-group"> 
         <label for="name" >State:</label>
         <input type="name"class="form-control" name="state" readonly="" value="<%=hlpr.stat.getState(rs.getString("state"))%>" >
     </div>
     <div class="form-group"> 
         <label for="name" >City:</label>
         <input type="name"class="form-control" name="city" readonly="" value="<%=hlpr.cty.getCity(rs.getString("city"))%>" >
     </div>
     <div class="form-group"> 
         <label for="name" >Timing:</label>
         <input type="name"class="form-control" name="apptime"  value="<%=rs.getString("apptime")%>" >
     </div>
     <div class="form-group"> 
         <label for="name" >Appointment Date:</label>
         <input type="name"class="form-control" name="appdate" value="<%=rs.getString("appdate")%>" >
     </div>
     <div class="form-group"> 
         <label for="name" >Appointment Status:</label>
        <select class="form-control" id="status" name="status">
                                               
 <option value="Pending">Pending</option> 
 <option value="Approved">Approved</option>
 </select>
     </div>
   
     
    
    
       
          
       <%
  rs.close();
  
 }
       catch(Exception e){out.print(e.getMessage());}
  
  %>
    </body>
</html>