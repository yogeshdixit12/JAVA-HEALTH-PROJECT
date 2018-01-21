<%-- 
    Document   : updateprofile
    Created on : 20 Feb, 2017, 1:37:40 AM
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
 
   
       <script>
function showState_1(str) {
    if (str.length == 0) { 
        document.getElementById("ssdiv").innerHTML = "";
        return;
    } else {
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function() {
            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                document.getElementById("ssdiv").innerHTML = xmlhttp.responseText;
            }
        };
        xmlhttp.open("GET", "http://localhost:8080/HealthProject/Region/state_1.jsp?q=" + str, true);
        xmlhttp.send();
    }
}

function showCity_1(str) {
    if (str.length == 0) { 
        document.getElementById("ccdiv").innerHTML = "";
        return;
    } else {
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function() {
            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                document.getElementById("ccdiv").innerHTML = xmlhttp.responseText;
            }
        };
        xmlhttp.open("GET", "http://localhost:8080/HealthProject/Region/city_1.jsp?q=" + str, true);
        xmlhttp.send();
    }
}
</script>
   
   
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
                            String sql="Select * from patent where id='"+t+"'";
                            ResultSet rs=st.executeQuery(sql);
                            while(rs.next())
                            {%>
                                     
                               <form method="post" action="http://localhost:8080/HealthProject/updateprofile">
                                        
                                     
                            <div class="form-group"> 
         <label for="name">Name:</label>
         <input type="name"class="form-control"id="name" value="<%=rs.getString(2)%>" name="name">
     </div>


                                          <div class="form-group">
                                            <label>Contact No</label>
                                            <input class="form-control" value="<%=rs.getString(4)%>" id="contact" name="contact">
                                           
                                        </div>    
                                        
                                        <div class="form-group">
                                            <label>Looking For</label>
                                            <select class="form-control" id="expert" name="expert">
        <option value="Beautician">Beautician</option>
        <option value="Gym Trainer">Gym Trainer</option>
        <option value="Nutrition">Nutrition</option>
        <option value="Yoga">Yoga</option>
        <option value="Therapist">Therapist</option>
      </select> 
                                        </div>
                                        
                                        <div>
 <label for="cpwd">Country:</label>
  <select class="form-control" id="country"  name="country" onchange="showState_1(this.value)">
                           
                            <option value="0" >Please Select Country</option>
                          
                            
                            <option value="1">India</option>
                             <option value="2">Austrlia</option>
                              <option value="3">US</option>
                               <option value="4">Srilanka</option>
                             
                             <option value="5">afganistan</option>
                              <option value="6">albania</option>
                               <option value="7">algeria</option> 
                               <option value="8">austria</option>
                               <option value="9">belaus</option>
                               <option value="10">bhutan</option>
                               <option value="11">Buleifaria</option> 
                               <option value="12">Canda</option>
                               <option value="13">China</option>
                               <option value="14">Comoros</option>
                               <option value="15">Japan</option> 
                             
                        </select>

  </div>
               <div class="form-group" >
    <label for="state">State:</label>
    <div id="ssdiv"></div>
  
  </div>
                        <div class="form-group">
    <label for="city">City:</label>
    <div id="ccdiv"></div>
  </div>  
                                        
                                        
                                        <div class="form-group">
                                            <label>Age</label>
                                            <input class="form-control" value="<%=rs.getString(9)%>" id="age" name="age">
                                           
                                        </div>
                        <div class="form-group">
                                            <label>Gender</label>
                                            <input class="form-control" value="<%=rs.getString(10)%>" id="gen" name="gen">
                                            
                                        </div>
                                        
                                        
                                       <div class="form-group">
      <label for="comment">Picture:</label>
         <input class="w3-input w3-border w3-margin-bottom" name="images" type="file">
 </div>
           
    <div class="form-group">
      <label for="comment">Comment:</label>
      <textarea class="form-control" rows="5" id="coment" name="coment" value="<%=rs.getString(11)%>"></textarea>
    </div>
                                       
              
  <div class="form-group">
    <label for="email">Email address:</label>
    <input type="email" class="form-control" value="<%=rs.getString(13)%>" id="email" name="email">
  </div>
             <button type="submit" class="btn btn-success">Update Profile</button>
                                      
                                    
                                    
                                    
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
