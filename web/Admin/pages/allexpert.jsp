<%-- 
    Document   : viewallappointment
    Created on : 20 Feb, 2017, 4:29:43 AM
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

                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            DataTables Advanced Tables
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                             <%
       try 
 {
  Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/site","root","root");
       Statement st=con.createStatement();
        String sql="Select * from expert ";
            
            ResultSet rs=st.executeQuery(sql);
            rs.next();
            %>
                            <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                    <tr>
                                      <th>Expert ID</th>
                                        <th>Expert Name</th>
                                        <th>Expert</th>  
 <th>Country</th>
  <th>State</th>
   <th>City</th>
   
    <th>Email</th>
     <th>Contact</th>
     
     <th>Qualification</th>
   
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
       <th><%=rs.getInt("id")%></th>
     <th><%=rs.getString("name")%></th>
      <th><%=rs.getString("expert")%></th>
     
      <th><%=hlpr.Helper.getCountry(rs.getString("country"))%></th>
      <th><%=hlpr.stat.getState(rs.getString("state"))%></th>
      <th><%=hlpr.cty.getCity(rs.getString("city"))%></th>
   <th><%=rs.getString("email")%></th>
   <th><%=rs.getString("contact")%></th>
    <th><%=rs.getString("quali")%></th>
   
   <th><button value="<%="Expert-"+rs.getInt("id")%>"  ><img src="../../images/deletee.png"  height="25" width="25"></button></th>
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
            <!-- /.row -->
        
            <!-- /.row -->

            <!-- /.row -->
     
                <!-- /.col-lg-6 -->
            
      
    <!-- jQuery -->
   
    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
            responsive: true
        });
    });
    </script>

</body>
</html>