<%-- 
    Document   : admin
    Created on : Mar 25, 2017, 6:34:52 AM
    Author     : Rowdy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <script src="jquery.min.js"></script>
        <script src="notify.js"></script>
        <script src="notify.min.js"></script>
         <link rel="stylesheet" href=".../css/bootstrap.min.css">
 
  <script src="js/bootstrap.min.js"></script>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <link rel="stylesheet" href="w3.css">
       <script src="jquery.min.js"></script>
        <script src="notify.js"></script>
        <script src="notify.min.js"></script>
         <link rel="stylesheet" href=".../css/bootstrap.min.css">
 
  <script src="js/bootstrap.min.js"></script>

        <title>jsp page</title>
      
        
        
        <style>
            
            
            
            
            /* The switch - the box around the slider */
.switch {
  position: relative;
  display: inline-block;
  width: 60px;
  height: 34px;
}

/* Hide default HTML checkbox */
.switch input {display:none;}

/* The slider */
.slider {
  position: absolute;
  cursor: pointer;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #ccc;
  -webkit-transition: .4s;
  transition: .4s;
}

.slider:before {
  position: absolute;
  content: "";
  height: 26px;
  width: 26px;
  left: 4px;
  bottom: 4px;
  background-color: white;
  -webkit-transition: .4s;
  transition: .4s;
}

input:checked + .slider {
  background-color: #2196F3;
}

input:focus + .slider {
  box-shadow: 0 0 1px #2196F3;
}

input:checked + .slider:before {
  -webkit-transform: translateX(26px);
  -ms-transform: translateX(26px);
  transform: translateX(26px);
}

/* Rounded sliders */
.slider.round {
  border-radius: 34px;
}

.slider.round:before {
  border-radius: 50%;
}
            
            
        </style>
       
    </head>
    <body>
        <div class="w3-white">
        <div class="w3-row-padding w3-center w3-margin-top  w3-white ">
     <div class="w3-third">
  <div class="w3-card-2 w3-padding-top w3-pale-blue " style="min-height:460px">
  <h4> Login</h4><br>
  <img src="images/Login.png" class="w3-round" alt="1" style="width:30%;" ></img>
      
      <table>
      <tr><th class="w3-large w3-padding" >Patient :</th><td>
  <label class="switch">
      <input type="checkbox" id="sa_login" value="Yes">
  <div class="slider round"></div>
 </label>
          </td>
      </tr>
      
      <tr><th class="w3-large w3-padding-48">&nbsp&nbsp&nbsp; Expert :</th><td>
  <label class="switch">
      <input type="checkbox" id="sp_login" value="Yes">
  <div class="slider round"></div>
 </label>
          </td>
  </tr>
  
  </table>
  </div>
     </div>
      <div class="w3-third">
  <div class="w3-card-2 w3-padding-top w3-pale-blue" style="min-height:460px">
      <h4>Registration</h4><br>
      <img src="images/Reg.png" class="w3-round" alt="1" style="width:30%;"></img>
      
      <table>
      <tr><th class="w3-large w3-padding" >Patient :</th><td>
  <label class="switch">
      <input type="checkbox" id="sa_reg" value="Yes">
  <div class="slider round"></div>
 </label>
          </td>
      </tr>
  <tr><th class="w3-large w3-padding-48">&nbsp&nbsp&nbsp; Expert :</th><td>
  <label class="switch">
      <input type="checkbox" id="sp_reg" value="Yes">
  <div class="slider round"></div>
 </label>
          </td>
  </tr>
  
  </table>
  </div>
</div>
          
                          <div class="w3-third">
  <div class="w3-card-2 w3-padding-top w3-pale-blue" style="min-height:460px">
      <h4>Database</h4><br>
      <img src="images/db.png" class="w3-round" alt="1" style="width:30%;"></img>
      
      <table>
      
  <tr><th class="w3-large w3-padding-48">&nbsp&nbsp&nbsp; Back Up :</th><td>
  <label class="switch">
      <input type="checkbox" id="databas" value="Yes">
  <div class="slider round"></div>
 </label>
          </td>
  </tr>
  
  </table>
  </div>
</div>
        </div>
        </div>
        </div>
        <!--------------------------------end----------------------------->
        
        
        
        
     
                <script>
$(document).ready(function(){
    $("#sa_login").change(function(){
      // alert("hello");
        if($("#sa_login").val()=="Yes")
       
        {
          // alert("hello");
              $.post("http://localhost:8080/HealthProject/Admin/pages/logadmin.jsp",
    
     function(data, status){
    // alert("Data: " + data + "\nStatus: " + status);
       // $.notify( "Patient Registration Activated.","success");
         $("#sa_login").val("No");
       });
            
       
        }
        else
        {
        
         // alert("hello");
              $.post("http://localhost:8080/HealthProject/Admin/pages/logadmin_1.jsp",
    
     function(data, status){
    // alert("Data: " + data + "\nStatus: " + status);
       $("#sa_login").val("Yes");
          $.notify( "Student Registration DeActivated.");
        
       });
       }
    });
    
    
    //expert
    
     $("#sp_login").change(function(){
      // alert("hello");
        if($("#sp_login").val()=="Yes")
       
        {
           //alert("hello");
              $.post("http://localhost:8080/HealthProject/Admin/pages/loginexp.jsp",
    
     function(data, status){
    // alert("Data: " + data + "\nStatus: " + status);
       // $.notify( "Patient Registration Activated.","success");
         $("#sp_login").val("No");
       });
            
       
        }
        else
        {
        
        //  alert("hello");
              $.post("http://localhost:8080/HealthProject/Admin/pages/loginexp_1.jsp",
    
     function(data, status){
    // alert("Data: " + data + "\nStatus: " + status);
       $("#sp_login").val("Yes");
          $.notify( "Student Registration DeActivated.");
        
       });
       }
    });
    
    
    //patient reg
    $("#sa_reg").change(function(){
      // alert("hello");
        if($("#sa_reg").val()=="Yes")
       
        {
           //alert("hello");
              $.post("http://localhost:8080/HealthProject/Admin/pages/regpat.jsp",
    
     function(data, status){
    // alert("Data: " + data + "\nStatus: " + status);
       // $.notify( "Patient Registration Activated.","success");
         $("#sa_reg").val("No");
       });
            
       
        }
        else
        {
        
        //  alert("hello");
              $.post("http://localhost:8080/HealthProject/Admin/pages/regpat_1.jsp",
    
     function(data, status){
    // alert("Data: " + data + "\nStatus: " + status);
       $("#sa_reg").val("Yes");
          $.notify( "Student Registration DeActivated.");
        
       });
       }
    });
    //expert reg
    $("#sp_reg").change(function(){
      // alert("hello");
        if($("#sp_reg").val()=="Yes")
       
        {
           //alert("hello");
              $.post("http://localhost:8080/HealthProject/Admin/pages/expprg.jsp",
    
     function(data, status){
    // alert("Data: " + data + "\nStatus: " + status);
       // $.notify( "Patient Registration Activated.","success");
         $("#sp_reg").val("No");
       });
            
       
        }
        else
        {
        
        //  alert("hello");
              $.post("http://localhost:8080/HealthProject/Admin/pages/expprg_1.jsp",
    
     function(data, status){
    // alert("Data: " + data + "\nStatus: " + status);
       $("#sp_reg").val("Yes");
          $.notify( "Student Registration DeActivated.");
        
       });
       }
    });
    
      $("#databas").change(function(){
      // alert("hello");
        if($("#databas").val()=="Yes")
       
        {
           //alert("hello");
              $.post("http://localhost:8080/HealthProject/Admin/pages/databackup.jsp",
    
     function(data, status){
    // alert("Data: " + data + "\nStatus: " + status);
        alert( "Backup Has been Created");
        
       });
            
       
        }
        else
        {
        
       }
    });
    
    });
    
   
  
</script>

    </body>
</html>
