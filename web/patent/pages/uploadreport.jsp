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
                    <h1 class="page-header">Upload Your Report</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                          Submit Reports Of Patient
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    
                      
                                     
                               <form method="post" action="http://localhost:8080/HealthProject/patientReport" enctype="multipart/form-data">
                                        
                                     
                       

 <div class="form-group">
                                            <label>Problem</label>
                                            <select class="form-control" name="topic" id="topic"  >
                                                 <option value="0">select problem Related category............</option>
                                                <option value="Beautician">Beautician</option>
     
        <option value="Nutrition">Nutrition</option>
        <option value="Yoga">Yoga</option>
        <option value="Anesthesiologist">Anesthesiologist</option>
        <option value="Addiction psychiatrist">Addiction psychiatrist</option>
        <option value="Allergist (immunologist)">Allergist (immunologist)</option>
        <option value="Cardiologist">Cardiologist</option>
        <option value="Neonatologist">Neonatologist</option>
         <option value="Neurological surgeon">Neurological surgeon</option>
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