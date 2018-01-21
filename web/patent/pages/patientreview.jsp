<%-- 
    Document   : patientreview
    Created on : 20 Feb, 2017, 1:31:48 PM
    Author     : Rowdy
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
   
  <title>Bootstrap Example</title>

</head>
<body>

    <div id="wrapper">
<div class="col-lg-12">
        <!-- Navigation -->
         
        


        
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Post Your Review</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           Review Post Page
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    
                      
                                     
                               <form method="post" action="http://localhost:8080/HealthProject/Patientreview" enctype="multipart/form-data">
                                        
                                     
                            <div class="form-group"> 
         <label for="name">Name:</label>
         <input type="name"class="form-control"id="name" name="name" >
     </div>
<div class="form-group">
    <label for="name">Topic:</label>
    <input type="name" class="form-control"  id="topic" name="topic">
  </div>

                                          
   
        
            
         <div class="form-group">
      <label for="comment">Description:</label>
      <textarea class="form-control" rows="5" id="coment" name="coment" ></textarea>
    </div>
            <div class="form-group">
      <label for="comment">Report:</label>
         <input class="w3-input w3-border w3-margin-bottom" name="images" type="file">
 </div>
         <button type="submit" class="btn btn-success">Submit Button</button>
                                         </form>                    
  </div>                           
              
  
            
                               
                               
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
   
</body>
  
                                 
</html>