<%-- 
    Document   : expupdateprofile
    Created on : 20 Feb, 2017, 2:58:15 AM
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

    <!-- Bootstrap Core CSS -->
    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="../vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

   <!---------------------------------SCRIPT -------------------------------------------------------------->
 
   
      
   
   <!----------------------------------------------------------------------------------------------->

</head>

<body>
  
    <div id="wrapper">
<div class="col-lg-12">
        <!-- Navigation -->
         
        


        
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Profile Updation Form</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           Update Your Profile
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    
                                        
                                          <%
     
    HttpSession sess=request.getSession();  
      String t= sess.getAttribute("id").toString();
                            try
                            {    
                            
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/site","root","root");
                            Statement st=con.createStatement();
                            String sql="Select * from expert where id='"+t+"'";
                            ResultSet rs=st.executeQuery(sql);
                            while(rs.next())
                            {%>
                                     
                               <form method="post" action="http://localhost:8080/HealthProject/expdeleteprofile">
                                        
                                     
                            <div class="form-group"> 
         <label for="name">Name:</label>
         <input type="name"class="form-control"id="name" value="<%=rs.getString(2)%>" name="name">
     </div>
<div class="form-group">
    <label for="email">Email address:</label>
    <input type="email" class="form-control" value="<%=rs.getString(3)%>" id="email" name="email">
  </div>

                                          <div class="form-group">
                                            <label>Contact No</label>
                                            <input class="form-control" value="<%=rs.getString(5)%>" id="contact" name="contact">
                                           
                                        </div>    
                                        
                                        <div class="form-group">
                                            <label>Expert</label>
                                             <input class="form-control" value="<%=rs.getString(6)%>">
                                           
                                        </div>
                                         
                                       
                                        <div class="form-group">
                                            <label>Experience</label>
                                            <input class="form-control" value="<%=rs.getString(9)%>" id="exp" name="exp">
                                           
                                        </div>
                      
      
           
    <div class="form-group">
      <label for="comment">Comment:</label>
      <textarea class="form-control" rows="5" id="coment" name="coment" value="<%=rs.getString(10)%>"></textarea>
    </div>
                                       
              
  
             <button type="submit" class="btn btn-default">Delete</button>
                                        <button type="reset" class="btn btn-default">Reset Button</button>
                                  
                                    
                                    
                                    
                                    <%}
                            rs.close();
                            con.close();
                            st.close();
                            
                            }catch(Exception e){}
                            
                            %>
                                    
                                    </form>
                                </div>
                                <!-- /.col-lg-6 (nested) -->
                               
                                <!-- /.col-lg-6 (nested) -->
                            </div>
                            <!-- /.row (nested) -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="../vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../dist/js/sb-admin-2.js"></script>

</body>
  
                                 
</html>
