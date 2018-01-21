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
   
     <script>
function showExp(str) {
         var country=document.getElementById("country").value;
          var state=document.getElementById("state").value;
           var city=document.getElementById("city").value;
           
    if (str.length == 0) { 
        document.getElementById("ndiv").innerHTML = "";
        return;
    } else {
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function() {
            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                document.getElementById("ndiv").innerHTML = xmlhttp.responseText;
            }
        };
         

            
            
        xmlhttp.open("GET", "http://localhost:8080/HealthProject/Region/Expert.jsp?q="+ str+"&country="+ country+"&state="+ state+"&city="+ city, true);
        xmlhttp.send();
    }
}
function showQuali(str) {
        
           
    if (str.length == 0) { 
        document.getElementById("qdiv").innerHTML = "";
        return;
    } else {
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function() {
            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                document.getElementById("qdiv").innerHTML = xmlhttp.responseText;
            }
        };
         

            
            
        xmlhttp.open("GET", "http://localhost:8080/HealthProject/Region/qualification.jsp?q="+ str, true);
        xmlhttp.send();
    }
}
</script>
    







  <script>
function showExpe(str) {
    if (str.length == 0) { 
        alert();
        document.getElementById("ii").innerHTML = "";
        return;
    } else {
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function() {
            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                document.getElementById("ii").innerHTML = xmlhttp.responseText;
            }
        };
        xmlhttp.open("GET", "http://localhost:8080/HealthProject/setvalue.jsp?q=" + str, true);
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
                    <h1 class="page-header">Appointment Form</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                          Appointment
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    
                       <form role="form" action="http://localhost:8080/HealthProject/patent/pages/paymentgateway/payment.jsp" method="post">
                                   
                                        
                                        
                                        <div class="form-group">
                                            <label>Country</label>
     <select class="form-control" id="country"  name="country" onchange="showState_1(this.value)">
                           
                            <option value="0" >Please Select Country</option>
                            <%
                            try
                            {    
                            
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/site","root","root");
                            Statement st=con.createStatement();
                            String sql="Select * from country";
                            ResultSet rs=st.executeQuery(sql);
                            while(rs.next())
                            {%>
                            
                            <option value="<%=rs.getInt(1)%>"><%= rs.getString(2) %></option>
                            <%}
                            rs.close();
                            con.close();
                            st.close();
                            
                            }catch(Exception e){}
                            
                            %>
                        </select>
                                        </div>
                        
    <div class="form-group">
                                            <label>State:</label>
                                            <div id="ssdiv"></div>
                                        </div>
                       
                         <div class="form-group">
                             <label>City:</label>
                                    <div id="ccdiv"></div>        
                                        </div>
    
    
     <div class="form-group">
                                            <label>Expert</label>
                                            <select class="form-control" name="exp" id="exp" onchange="showExp(this.value)" >
                                                 <option value="0">select Expert Type</option>
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
                                            <label>Name</label>
                                             
                   <div id="ndiv"></div>
                                        </div>
                          <div class="form-group">
                                            <label>Qualification Details</label>
                                             
                   <div id="qdiv"></div>
                                        </div>
                                     
                         
                        
                        
                        
                                        <div class="form-group">
                                            <label>Date</label>
                                            <input class="form-control" type="date" name="date" id="date">
                                        </div>
                                       <div class="form-group">
                                            <label>Appointment Time</label>
                                            <select class="form-control" id="time" name="time">
                                               
 <option value="10:30AM">10:30AM</option> 
 <option value="12:10AM">12:10AM</option>
 <option value="12:50PM">12:50PM</option> 
 <option value="01:30PM">01:30PM</option>
 <option value="02:50PM">02:50PM</option>
 <option value="03:30PM">03:30PM</option> 
 <option value="04:10PM">04:10PM</option>
 <option value="04:50PM">04:50PM</option> 
 <option value="05:30PM">05:30PM</option>

 
 
 
 
 
                                            </select>
                                        </div>
                        
                        <div class="form-group">
                                            <label>Discription</label>
                                            <textarea class="form-control" id="des" name="des" rows="3"></textarea>
                                        </div>
                                
                                   
 
                       <button type="submit" class="btn btn-success">Appointment</button>
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
