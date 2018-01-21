<%-- 
    Document   : viewmyreport
    Created on : Mar 25, 2017, 3:15:31 PM
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
       
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header"> View Review</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
 
            <div class="row">
                <div class="col-lg-12">
                   
                      <div class="form-group">
                                            <label>Doctor Id</label>
                                            <input  type="text" name="dctrid" id="dctrid">
                                            <button type="submit" class="btn btn-success">Share</button>
                                        </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                        Report Status Page
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                          
                            
                            
                            
                                             <%
                                                 
                                                 
                                                 HttpSession sess=request.getSession();  
     String t= sess.getAttribute("id").toString();
       try 
 {
  Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/site","root","root");
       Statement st=con.createStatement();
        String sql="Select * from report where patid='"+t+"' ";
            
            ResultSet rs=st.executeQuery(sql);
            
            %>
                            <table width="100%" class="table table-striped table-bordered table-hover" id="epi">
                               <thead>
                                    <tr>
                                        <th>Id</th>
                                        <th>Problem</th>
                                        <th>Description</th>
                                        <th>View Report</th>
                                       <th>Status</th>
                                       
                                        
                                        
                                       
                                       
           </tr>
                                </thead>
                                <tbody>
                                    
 <%
            int x=0;
     while(rs.next())
                    {
                        
                        %>
                        
     
 <tr class="odd gradeX">
    <th><%=rs.getInt("id")%></th>  
   <th><%=rs.getString("prblm")%></th>
   <th><%=rs.getString("descr")%></th>
  <th><button value="<%="VView-"+rs.getInt("id")%>"   data-toggle="modal" data-target="#pawanpal" ><img src="../../images/dtl.png"  height="25" width="25"></button></th>
   
   <th><%=rs.getString("status")%></th>
  </tr>
                                    <%
                     }
            con.close();
                        st.close();
                    
                    
                    }catch(Exception e)
                    {
                 out.println(e.getMessage());
                    }
        %>
                                    </tr>
                                </tbody>
                            </table>
                            <!-- /.table-responsive -->
                           
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
  
        
    </body>
</html>
