<%-- 
    Document   : viewsharedrprts
    Created on : Mar 22, 2017, 2:42:23 PM
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
                    <h1 class="page-header"> View Review</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            
            <div class="row">
                <div class="col-lg-12">
                   
                    
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
        String sql="Select * from shar where patientid='"+t+"' ";
            
            ResultSet rs=st.executeQuery(sql);
            
            %>
                            <table width="100%" class="table table-striped table-bordered table-hover" id="epi">
                               <thead>
                                    <tr>
                                    
                                        <th>Doctor id</th>
                                        <th>Patient id</th>
                                        <th>View Report</th>
                                       <th>Share Date</th>
                                        <th>Delete</th>
                                        
                                        
                                       
                                       
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
   <th><button value="<%="Delete-"+rs.getInt("id")%>" ><img src="../../images/deletee.png"  height="25" width="25"></button></th>
  
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