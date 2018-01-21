<%-- 
    Document   : Expert
    Created on : 20 Feb, 2017, 3:59:22 AM
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
   
        <select class="form-control" id="expid" name="expid" onchange="showQuali(this.value)" >
            
                           <option value>Please Select Name</option>
                            <%
                            try
                            {    
                            
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/site","root","root");
                            Statement st=con.createStatement();
                            String sql="Select * from expert where country='"+request.getParameter("country")+"' and state='"+request.getParameter("state")+"' and city='"+request.getParameter("city")+"' and expert='"+request.getParameter("q")+"'";
                           
                            ResultSet rs=st.executeQuery(sql);
                            while(rs.next())
                            {%>
                            
                            <option value="<%=rs.getInt(1)%>"><%= rs.getString(2)%></option>
                           <%=rs.getString(2)%>
                            <%}
                           
                            rs.close();
                            con.close();
                            st.close();
                            
                            }catch(Exception e){}
                            
                            %>
                        </select>  
    </body>
</html>
