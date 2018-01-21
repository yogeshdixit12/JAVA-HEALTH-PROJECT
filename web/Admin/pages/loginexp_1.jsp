<%-- 
    Document   : loginexp
    Created on : Mar 27, 2017, 10:54:27 AM
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
                             String sql="update auth set loginexp='"+"Deactive"+"' where id='"+"1"+"'";
       
        
             
              
  int p=st.executeUpdate(sql);
            
            if(p>0){
                    
           out.println("Success");
        }
                        con.close();
                        st.close();
                  
                  
                    
                    }catch(Exception e)
                    {
                      out.println(e.getMessage());
                    }
                            %>
                           
    </body>
</html>
