<%-- 
    Document   : paymentrecipt
    Created on : 20 Feb, 2017, 4:21:55 AM
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
        
        
        <form>
            <%
                
                 String cardname=request.getParameter("cardname");
                  String cardno=request.getParameter("cardno");
                 String type=request.getParameter("type");
                
            HttpSession sess=request.getSession();  
      String t= sess.getAttribute("id").toString();
        
            
            String expid=request.getParameter("expid");
         String patid=t;
            String country=request.getParameter("country");
             String state=request.getParameter("state");
              String city=request.getParameter("city");
              String exptype=request.getParameter("exp");
            String appdate=request.getParameter("date");
             String apptime=request.getParameter("time");
              String fee=request.getParameter("fee");
            
              String descr=request.getParameter("des");
           String s[]=appdate.split("-");
                 int sr= Paitent.count.getcount(expid,appdate);
             String aid=expid+exptype+""+(s[0]+""+s[1]+""+s[2]+sr);
               out.println(patid+""+expid+""+exptype+""+appdate+""+apptime+""+fee);
            Connection conn = null; // connection to the database
        String message = null;  // message will be sent back to client
         
      
        
        try{ 
          Class.forName("com.mysql.jdbc.Driver");
        conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/site","root","root");
         String sql ="Insert into appointmentt(expid,patid,country,state,city,exptype,appdate,apptime,fee,descr,aid,cardname,cardno,type,status) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1,expid);
            statement.setString(2,patid);
            statement.setString(3,country);
      
            statement.setString(4,state);
             statement.setString(5,city);
              statement.setString(6,exptype);
               statement.setString(7,appdate);
              statement.setString(8,apptime);
             statement.setString(9,fee);
              statement.setString(10,descr);
               statement.setString(11,aid);
               statement.setString(12,cardname);
               statement.setString(13,cardno);
               statement.setString(14,type);
               statement.setString(15,"Pending");
            
               
  int row = statement.executeUpdate();
          
           response.sendRedirect("http://localhost:8080/HealthProject/patent/pages/PatientMasterpage.jsp");
                    }catch (Exception ex) {
            message = "ERROR: " + ex.getMessage();
            ex.printStackTrace();
        } finally {
            if (conn != null) {
                // closes the database connection
                try {
                    conn.close();
              //    response.sendRedirect("index.jsp?msgg=You Registered Succesfully");
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
         out.println(message);
        
        }
            
            %>
            
            
            
            
            
            
        </form>
        
        
        
    </body>
</html>
