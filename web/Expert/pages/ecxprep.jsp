<%-- 
    Document   : ecxprep
    Created on : Mar 24, 2017, 3:07:46 AM
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
       
        String t = request.getParameter("idd");
           String name = request.getParameter("name");
            String topp=request.getParameter("topp");
             String expert=request.getParameter("expert");
              String coment=request.getParameter("coment");
          out.println(t);
            
     
        try{        
                
            //String destination=request.getParameter("destination");

        Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/site","root","root");
       Statement st=con.createStatement();
        String sql="update postreview set pname='"+name+"',topic='"+topp+"',cat='"+expert+"',coment='"+coment+"'where id='"+t+"'";
       
        
             
              
  int p=st.executeUpdate(sql);
            
            if(p>0){
                    
            response.sendRedirect("");
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
