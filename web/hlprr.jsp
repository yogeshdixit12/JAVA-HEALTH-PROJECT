<%-- 
    Document   : hlprr
    Created on : Mar 28, 2017, 4:38:45 AM
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
                            String sql="Select * from auth where id ='"+"1"+"' ";
                            ResultSet rs=st.executeQuery(sql);
                            rs.next();
                           
         %>
        
        
        
         <%=rs.getString(2)%>
        
        
        <%                   
                            
                            
                            
                            
                            rs.close();
                            con.close();
                            st.close();
                            
        }catch(Exception e)
        { out.println(e.getMessage());
                    }
        
        %>
    </body>
</html>
