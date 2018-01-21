<%-- 
    Document   : payrecpt
    Created on : Mar 23, 2017, 4:06:03 PM
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
         try{        
                
            //String destination=request.getParameter("destination");

        Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/site","root","root");
       Statement st=con.createStatement();
        String sql="update patent set status='"+"Active"+"' where id='"+geno.getidno()+"'";
       
        
             
              
  int p=st.executeUpdate(sql);
            
            if(p>0){
                    
           response.sendRedirect("http://localhost:8080/HealthProject/Mainpage.jsp");
               // out.println("status updated");
        }
                        con.close();
                        st.close();
                  
                  
                    
                    }catch(Exception e)
                    {
                      out.println(e.getMessage());
                    }
                
                
            %>
            
          
        </form>
        
        
        
    </body>
</html>
