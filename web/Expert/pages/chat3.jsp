<%-- 
    Document   : chat3
    Created on : Mar 16, 2017, 4:45:21 AM
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
                                        HttpSession sess=request.getSession();  
                                    
                                        // sess.setAttribute("expiid",request.getParameter("topi"));
 
  String t= sess.getAttribute("id").toString();
    String tg=sess.getAttribute("patid").toString();
    
    
    %>
    <br>                      
    <h3><b>  Patient Name :<%=hlpr.user.getUser(sess.getAttribute("patid").toString())%> </h3> </b>    
                    
                                         
        <nav>
            <br><br>
        <div class="col-lg-12">
             <div class="col-lg-12">
                  <div class="chat-panel panel panel-default">
                        <div class="panel-heading">
                            <i class="fa fa-comments fa-fw"></i></i> Chat
                            <div class="btn-group pull-right">
                                <button type="button" class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown">
                                    <i class="fa fa-chevron-down"></i>
                                </button>
                                <ul class="dropdown-menu slidedown">
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-refresh fa-fw"></i> Refresh
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-check-circle fa-fw"></i> Available
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-times fa-fw"></i> Busy
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-clock-o fa-fw"></i> Away
                                        </a>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-sign-out fa-fw"></i> Sign Out
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                   
                    <!-- /.panel-heading -->
                      
                          <div class="panel-body">
                        

                    <%
    
    
                            try
                            {    
                            
                         Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/site","root","root");
       Statement st=con.createStatement();
        String sql="Select * from chat where expid='"+t+"' and iid='"+tg+"' ";
            
            ResultSet rs=st.executeQuery(sql);
           
             int x=0;
     while(rs.next())
                    {
            %>
                         
          
              <ul class="chat">
                                <li class="left clearfix">
                                   
            <span class="chat-img pull-left">
                                        <img src="http://placehold.it/50/55C1E7/fff" alt="User Avatar" class="img-circle" />
                                    </span>
                             <div class="chat-body clearfix">
                                        <div class="header">
                                            <strong class="primary-font"><%=rs.getString(2)%></strong>
                                           
                                             <small class="pull-right text-muted">
                                               
                                                Suggested By :<%=rs.getString(6)%>  
                                             </small><br>
                                             <small class="pull-right text-muted">
                                                
                                                <i class="fa fa-clock-o fa-fw"></i> <%=rs.getString(3)%>  
                                            </small>
                                        </div>
                                        
                                    </div>
                          </li>
                                
                               
                            </ul>
                        
                               <%
                     }
            con.close();
                        st.close();
                    
                    
                    }catch(Exception e)
                    {
                 out.println(e.getMessage());
                    }
        %>
                                   </div>
                              
                        <!-- /.panel-body -->
                          <form action="http://localhost:8080/HealthProject/chati" method="post" enctype="multipart/form-data">
                             
              
                        <div class="panel-footer">
                            <div class="input-group">
                               
                               <input  type="text" id="name" name="name" type="text" class="form-control input-sm" placeholder="Type your message here..." />
                                <span class="input-group-btn">
                                     <button class="btn btn-warning btn-sm" id="btn-chat">
                                        Send
                                    </button>
                                    
                                </span>
                               
                            </div>
                        </div>
 </form>
                  </div></div></div>
        </nav>
                             
            <!-- /.row -->
    </body>
</html>
