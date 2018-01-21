<%-- 
    Document   : selectdoctor
    Created on : Mar 15, 2017, 9:49:05 AM
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
                                   
 <div class="form-group">
            <form action="http://localhost:8080/HealthProject/patent/pages/setvalue.jsp">
 
                                            <label>select Expert</label>
                                            <select class="form-control" name="topi" id="topi" >
                                                 <option value="0">Select Your Expert......</option>
                                                <%
                                                    
                            try
                            {    
                            
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/site","root","root");
                            Statement st=con.createStatement();
                            String sql="Select * from expert";
                            ResultSet rs=st.executeQuery(sql);
                            while(rs.next())
                            {%>
                                                        <option value="<%=rs.getInt(1)%>"><%= rs.getString(2)%></option>
                            <%}
                            rs.close();
                            con.close();
                            st.close();
                            
                            }catch(Exception e){}
                            
                            %>
                        </select>
                         <button type="submit" class="btn btn-success">Start Chat</button>
                       </form>
                        
                      
                       
  </div>                           
              <div id="ii"></div>
  
    </body>
</html>
