<%-- 
    Document   : updatereview
    Created on : Mar 24, 2017, 2:31:15 AM
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
     String t=request.getParameter("name");
    
                            try
                            {    
                            
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/site","root","root");
                            Statement st=con.createStatement();
                            String sql="Select * from postreview where id='"+t+"'";
                            ResultSet rs=st.executeQuery(sql);
                            while(rs.next())
                            {%>
                                
                    <input type="hidden" class="form-control" id="idd" value="<%=request.getParameter("name")%>" name="idd">
                  
                            <div class="form-group"> 
         <label for="name">Name:</label>
         <input type="name"class="form-control"id="name" value="<%=rs.getString(3)%>" name="name">
     </div>

                                         <div class="form-group">
                                            <label>Topic</label>
                                            <input class="form-control"  value="<%=rs.getString(7)%>" id="topp" name="topp">
                                           
                                        </div>    
                                        
                                        <div class="form-group">
                                            <label>Profession</label>
                                            <select class="form-control" row="3" id="expert" name="expert">
        <option value="Beautician">Beautician</option>
        <option value="Gym Trainer">Gym Trainer</option>
        <option value="Nutrition">Nutrition</option>
        <option value="Yoga">Yoga</option>
        <option value="Therapist">Therapist</option>
      </select> 
                                        </div>
                           
    <div class="form-group">
      <label >Comment:</label>
      <textarea class="form-control" rows="3" id="coment" name="coment" ></textarea>
    </div>
                      
                                    <%}
                            rs.close();
                            con.close();
                            st.close();
                            
                            }catch(Exception e){}
                            
                            %>
    </body>
</html>
