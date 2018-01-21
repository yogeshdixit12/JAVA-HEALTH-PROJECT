<%-- 
    Document   : Chatperson
    Created on : Mar 16, 2017, 10:56:29 AM
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
           <div class="row">
         
         
         
         
               <div class="col-lg-4">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="fa fa-bell fa-fw"></i> Notifications Panel
                        </div>
                        
                        
                        
                        
                        
                        
                        
                        <div class="panel-body">
                            <div class="list-group">
                               
                        
                        
                        
                        <%
                            
                              HttpSession sess=request.getSession();  
      String t= sess.getAttribute("id").toString();
        out.println(t);
                       try
                            {    
                            
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/site","root","root");
                            Statement st=con.createStatement();
                            String sql="Select distinct(iid) from chat where expid='"+t+"'";
                            
                            ResultSet rs=st.executeQuery(sql);
                            while(rs.next())
                            {
                         
                              
                        %>
                          
                             <a href="http://localhost:8080/HealthProject/Expert/pages/experr.jsp?msgg=<%=rs.getInt(1)%>" class="list-group-item">
                        
                          
                                 <i class="fa fa-comment fa-fw"></i>  <%="Id:"+rs.getInt(1)+"  "%><br>   <option value="<%=rs.getInt(1)%>">
                                     <%="Name:"+hlpr.user.getUser(rs.getString(1))%></option>
                          
                         
          <!-----------------               <span class="pull-right text-muted small"><em>4 minutes ago</em>
                                    </span>--------------->
                                 </a>
                                
                         
                         <%}
                           // }
                                                        
                            rs.close();
                            con.close();
                            st.close();
                            
                            }catch(Exception e){}
                            
                        
                        
                        
                        %>
                        <!-- /.panel-heading -->
                        
                              
                                    
                               
                            </div>
                            <!-- /.list-group -->
                            <a href="#" class="btn btn-default btn-block">View All Alerts</a>
                        </div>
                        <!-- /.panel-body -->
                    </div>
              </div>

         </div>
    </body>
</html>
