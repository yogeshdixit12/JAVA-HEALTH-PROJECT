<%-- 
    Document   : delsarjsp
    Created on : Mar 22, 2017, 3:18:41 PM
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
         <%  try{        
                
            //String destination=request.getParameter("destination");

        Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/site","root","root");
       Statement st=con.createStatement();
        String sql="Delete from shar where id='"+request.getParameter("name")+"'";
       
        
             
              
  int p=st.executeUpdate(sql);
            
            if(p>0){
           response.sendRedirect("http://localhost:8080/HealthProject/patent/pages/PatientMasterpage.jsp?msg=13");
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
