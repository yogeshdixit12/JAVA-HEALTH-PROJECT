<%-- 
    Document   : Expertpastreview
    Created on : 20 Feb, 2017, 12:22:56 PM
    Author     : Rowdy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
   
  <title>Bootstrap Example</title>
 
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

    <div id="wrapper">
<div class="col-lg-12">
        <!-- Navigation -->
         
        


        
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Expert Review Post Page</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           Post Your Review Here
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    
                      
                                     
                               <form method="post" action="http://localhost:8080/HealthProject/expertpostriview" enctype="multipart/form-data">
                                        
                                     
                            <div class="form-group"> 
         <label for="name">Name:</label>
         <input type="name" class="form-control"id="name" name="name" >
     </div>
<div class="form-group">
    <label for="email">Topic:</label>
    <input type="text" class="form-control"  id="topic" name="topic">
  </div>

                                          
   
        
            <div class="form-group">
      <label for="expert">Profession:</label>
   
      <select class="form-control" id="expert" name="expert">
        <option value="Beautician">Beautician</option>
        <option value="Gym Trainer">Gym Trainer</option>
        <option value="Nutrition">Nutrition</option>
        <option value="Yoga">Yoga</option>
        <option value="Therapist">Therapist</option>
      </select> 
    </div>
         <div class="form-group">
      <label for="comment">Description:</label>
      <textarea class="form-control" rows="5" id="coment" name="coment" ></textarea>
    </div>
            <div class="form-group">
      <label for="comment">Report:</label>
         <input class="w3-input w3-border w3-margin-bottom" name="images" type="file">
 </div>
         <button type="submit" class="btn btn-default">Submit Button</button>
                                        <button type="reset" class="btn btn-default">Reset Button</button>
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

   
</body>
  
                                 
</html>