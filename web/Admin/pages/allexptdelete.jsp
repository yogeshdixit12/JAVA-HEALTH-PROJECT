<%-- 
    Document   : allexptdelete
    Created on : Mar 28, 2017, 10:15:39 PM
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
        String sql="Delete from expert where id='"+request.getParameter("name")+"'";
       
        
             
              
  int p=st.executeUpdate(sql);
            
            if(p>0){
           response.sendRedirect("http://localhost:8080/HealthProject/Admin/pages/AdminMasterpage.jsp?msg=2");
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