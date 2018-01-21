<%-- 
    Document   : updatereview
    Created on : Mar 25, 2017, 10:39:18 AM
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
        String sql="Select * from postreview where id='"+request.getParameter("name")+"'";
            
            ResultSet rs=st.executeQuery(sql);
            rs.next();
            %>
       
           
      <!-- Modal content-->
      
       
          <input type="hidden" class="form-control" id="idd" value="<%=request.getParameter("name")%>" name="idd">
                  
                            <div class="form-group"> 
         <label for="name">Name:</label>
         <input type="name"class="form-control"id="name" value="<%=rs.getString(3)%>" name="name">
     </div>

                                         <div class="form-group">
                                            <label>Topic</label>
                                            <input class="form-control" value="<%=rs.getString(7)%>" id="topp" name="topp">
                                           
                                        </div>    
                                        
                                        <div class="form-group">
                                            <label>Profession</label>
                                            <select class="form-control" id="expert" name="expert">
        <option value="Beautician">Beautician</option>
        <option value="Gym Trainer">Gym Trainer</option>
        <option value="Nutrition">Nutrition</option>
        <option value="Yoga">Yoga</option>
        <option value="Therapist">Therapist</option>
      </select> 
                                        </div>
                           
    <div class="form-group">
      <label for="comment">Comment:</label>
      <textarea class="form-control" rows="3" id="coment" name="coment" value="<%=rs.getString("coment")%>"></textarea>
    </div>
                      
                                    <%
                           
                            
                            }catch(Exception e){}
                            
                            %>
    </body>
</html>
