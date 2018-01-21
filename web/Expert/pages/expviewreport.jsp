<%-- 
    Document   : expviewreport
    Created on : Mar 15, 2017, 1:55:39 AM
    Author     : Rowdy
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Bootstrap Admin Theme</title>

  


</head>
<body>

            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header"> View Report</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            
            <div class="row">
                <div class="col-lg-12">
                   
                
                    <div class="panel panel-default">
                        <div class="panel-heading">
                    View Report
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
        String sql="Select * from shar where doctorid='"+t+"' ";
            
            ResultSet rs=st.executeQuery(sql);
            
            %>
                            <table width="100%" class="table table-striped table-bordered table-hover" id="epi">
                               <thead>
                                    <tr>
                                    
                                        <th>Doctor id</th>
                                        <th>Patient id</th>
                                        <th>View Report</th>
                                       <th>Share Date</th>
                                        <th>View</th>
                                      
           </tr>
                                </thead>
                                <tbody>
                                    
 <%
            int x=0;
     while(rs.next())
                    {
                        
                        %>
                        
     
 <tr class="odd gradeX">
    <th><%=rs.getString("doctorid")%></th>  
   <th><%=rs.getString("patientid")%></th>
   <th><%=rs.getString("reportid")%></th>
   <th><%=rs.getString("shredate")%></th>
   <th><button value="<%="vvview-"+rs.getString("reportid")  %>" ><img src="../../images/dtl.png"  height="25" width="25"></button></th>
  
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
  

                                    <div id="viiew"></div>


</body>
</html>