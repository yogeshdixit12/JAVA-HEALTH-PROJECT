<%-- 
    Document   : qualification
    Created on : 20 Feb, 2017, 3:59:10 AM
    Author     : Rowdy
--%>

<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
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
                            String sql="Select * from expert where  id='"+request.getParameter("q")+"'";
                           
                            ResultSet rs=st.executeQuery(sql);
                            while(rs.next())
                            {
                  
                          
                                  out.println("Experience  :"+rs.getString(9));%><br><br><%
                                  
                               out.println("Qualifications  :"+rs.getString(16));%><br><br><%
                                 out.println("Avalibility  :"+rs.getString(17));%><br><br><%
                                  
                            %>
                                 
                                 
                                 
                                <div class="form-group">
                                             
                                            <label>Appointment Fee</label>  
                                            <input class="form-control" id="fee" name="fee" value="<%=rs.getString(18)%> " readonly="">
                                            
                                 <%
                                        

                          
                    
                        }
                           
                            rs.close();
                            con.close();
                            st.close();
                            
                            }catch(Exception e){}
                            
                            %>
       
    </body>
</html>
