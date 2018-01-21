<%-- 
    Document   : updateappointment
    Created on : Mar 14, 2017, 6:08:27 PM
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
        
        HttpSession sess=request.getSession();  
 String t= sess.getAttribute("id").toString();
         String name = request.getParameter("name");
            String email=request.getParameter("email");
              String contact=request.getParameter("contact");
              String expert=request.getParameter("expert");
              String age=request.getParameter("age");
              String gen=request.getParameter("gen");
              
            String country=request.getParameter("country");
          
             String state=request.getParameter("state");
             String city=request.getParameter("city");
              
               String coment=request.getParameter("coment");
           
     
        try{        
                
            //String destination=request.getParameter("destination");

        Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/site","root","root");
       Statement st=con.createStatement();
        String sql="update patent set name='"+name+"',contact='"+contact+"',expert='"+expert+"',country='"+country+"',state='"+state+"',city='"+city+"',age='"+age+"',gen='"+gen+"',coment='"+coment+"',email='"+email+"' where id='"+t+"'";
       
        
             
              
  int p=st.executeUpdate(sql);
            
            if(p>0){
                    
            response.sendRedirect("http://localhost:8080/HealthProject/patent/pages/PatientMasterpage.jsp");
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
