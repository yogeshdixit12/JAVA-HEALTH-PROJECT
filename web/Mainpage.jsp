<%-- 
    Document   : index
    Created on : 19 Feb, 2017, 8:51:19 PM
    Author     : Rowdy

--%>

<%@page import="java.sql.*"%>
<%@page import="hlpr.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <title>Modern Business - Start Bootstrap Template</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">

    <link href="css/modern-business.css" rel="stylesheet">

    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    
    
    
  <!-------------------------------SCRIPT FILES----------------------------->
       <script>
function showState(str) {
    if (str.length == 0) { 
        document.getElementById("sdiv").innerHTML = "";
        return;
    } else {
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function() {
            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                document.getElementById("sdiv").innerHTML = xmlhttp.responseText;
            }
        };
        xmlhttp.open("GET", "http://localhost:8080/HealthProject/Region/state.jsp?q=" + str, true);
        xmlhttp.send();
    }
}

function showCity(str) {
    if (str.length == 0) { 
        document.getElementById("cdiv").innerHTML = "";
        return;
    } else {
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function() {
            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                document.getElementById("cdiv").innerHTML = xmlhttp.responseText;
            }
        };
        xmlhttp.open("GET", "http://localhost:8080/HealthProject/Region/city.jsp?q=" + str, true);
        xmlhttp.send();
    }
}
</script>


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
       function getLocation() {
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(showPosition);
    } else { 
      
    }
}



function showPosition(position) {
    document.getElementById("longi").value=position.coords.longitude;
              document.getElementById("lati").value=position.coords.latitude;
}

    </script>
    
    
  <!----------------------------------------------------------------------->
</head>

<body>

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" style="background-color:yellowgreen;"  style="color: white;" role="navigation">
        <div class="container">
            <font color="white">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only" style="color:white;">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="Mainpage.jsp" style="color:white;"> <b>EHealthCare System</b></a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="mainmasterpag.jsp?msg=7" style="color:white;"><b>About</b></a>
                    </li>
                    
                    <li>
                        <a href="mainmasterpag.jsp?msg=8" style="color:white;"><b>Contact</b></a>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color:white;"><b>Project</b><b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="mainmasterpag.jsp?msg=1">Yoga</a>
                            </li>
                            <li>
                                <a href="mainmasterpag.jsp?msg=2">Nutrition</a>
                            </li>
                            <li>
                                <a href="mainmasterpag.jsp?msg=3">Fitness</a>
                            </li>
                            <li>
                                <a href="mainmasterpag.jsp?msg=4">Weight</a>
                            </li>
                            <li>
                                <a href="mainmasterpag.jsp?msg=5">Food</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color:white;"><b>Registration</b><b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>  
                               
                            
                            
                            
                               <a href=""   data-toggle="modal" <% if(Hlp.getStat("1").equals("Active")){ %> data-target="#ExpertModal" <%}else{ %>data-target="#" <%} %> >Expert Registration</a>
                           
                             
                            <li>
                               <a href=""   data-toggle="modal" <% if(Hlp.getStatus("1").equals("Active")){ %> data-target="#PatientModal" <%}else{ %>data-target="#" <%} %> >Patient Registration</a>
                            </li>
                            
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color:white;"><b>Log In </b> <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                    <a href=""   data-toggle="modal" <% if(Hlp.getLog("1").equals("Active")){ %> data-target="#ExperttModal" <%}else{ %>data-target="#" <%} %> >Expert Login</a>
                           
                                
                            </li>
                             <li>
                                <a href="" data-toggle="modal" data-target="#AdminModal">Admin LogIn</a>
                            </li>
                            <li>
                                   <a href=""   data-toggle="modal" <% if(Hlp.getLo("1").equals("Active")){ %> data-target="#PatienttModal" <%}else{ %>data-target="#" <%} %> >Patient Login</a>
                           
                            </li>
                            
                           
                           
                        </ul>
                    </li>
                </ul>
            </div>
            </font>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Header Carousel -->
    <header id="myCarousel" class="carousel slide">
        <!-- Indicators -->
          <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
           
             <li data-target="#myCarousel" data-slide-to="3"></li>
              <li data-target="#myCarousel" data-slide-to="4"></li>
               <li data-target="#myCarousel" data-slide-to="5"></li>
               <li data-target="#myCarousel" data-slide-to="6"></li>
                <li data-target="#myCarousel" data-slide-to="7"></li>
                
                 <li data-target="#myCarousel" data-slide-to="8"></li>
                  <li data-target="#myCarousel" data-slide-to="9"></li>
            
            
            
            
            
            
            
        </ol>


        <!-- Wrapper for slides -->
         <div class="carousel-inner">
             
            <div class="item active">
                
                <div class="fill" style="background-image:url('images/hel4.png');"></div>
                <div class="carousel-caption">
                    <h2> YOGA</h2>
                </div>
            </div>
            <div class="item">
                <div class="fill" style="background-image:url('images/hel1.jpg');"></div>
                <div class="carousel-caption">
                    <h2>NUTRITION</h2>
                </div>
            </div>
            <div class="item">
                <div class="fill" style="background-image:url('images/hel3.jpg');"></div>
                <div class="carousel-caption">
                    <h2>FITNESS</h2>
                </div>
            </div>
            
            <div class="item">
                <div class="fill" style="background-image:url('images/hel2.jpg');"></div>
                <div class="carousel-caption">
                    <h2>WEIGHT</h2>
                </div>
            </div>
            
            <div class="item">
                <div class="fill" style="background-image:url('images/hel5.jpg');"></div>
                <div class="carousel-caption">
                    <h2>FOOD</h2>
                </div>
            </div>
            <div class="item">
                <div class="fill" style="background-image:url('images/hel6.jpg');"></div>
                <div class="carousel-caption">
                    <h2>HEALTH A-Z</h2>
                </div>
            </div>
            <div class="item">
                <div class="fill" style="background-image:url('images/hel7.jpg');"></div>
                <div class="carousel-caption">
                    <h2>DOCTORS</h2>
                </div>
            </div>
            <div class="item">
                <div class="fill" style="background-image:url('images/hel8.jpg');"></div>
                <div class="carousel-caption">
                    <h2>ABOUT US</h2>
                </div>
            </div>
            <div class="item">
                <div class="fill" style="background-image:url('images/hel9.jpg');"></div>
                <div class="carousel-caption">
                    <h2>CONTACT US</h2>
                </div>
            </div>
            <div class="item">
                <div class="fill" style="background-image:url('images/hel10.jpg');"></div>
                <div class="carousel-caption">
                    <h2>SERVICES</h2>
                </div>
            </div>
            
        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="icon-prev"></span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="icon-next"></span>
        </a>
    </header>

    <!-- Page Content -->
    <div class="container">

        <!-- Marketing Icons Section -->
          <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">
                    Welcome to Health & Fitness
                </h1>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default" >
                    <div class="panel-heading" style="background-color:yellowgreen;">
                        
                  <div  style="background-color: yellowgreen" >      <h4><font style="background-color: yellowgreen" ><i class="fa fa-fw fa-yen" style="color:white;"></i><font color="white">yoga</h4>
                  </div>  </div>
            
            
            
                    <div class="panel-body">
                        <img src="images/yoga.jpg" height="80px;" width="100%">
                        <p><font color="black">The word "yoga" comes from the Sanskrit root yuj,which means "to join"or"to yoke".yoga is practical aid,not a religion </p>
                        <a href="mainmasterpag.jsp?msg=1" class="btn btn-default">Learn More </a>
                        
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default" >
                    <div class="panel-heading" style="background-color:yellowgreen;">
                        
                        <div  style="background-color: yellowgreen" >      <h4><font style="background-color: yellowgreen" ><i class="fa fa-fw fa-check" style="color:white;" ></i><font color="white">Nutrition</h4>
                  </div>  </div>
                    <div class="panel-body">
                        <img src="images/nut.jpg" height="80px;" width="100%">
                        <p><font color="black">Nutrition is the study of study of food at work our bodies, our source for energy, and .Think of nutrition as the building  blocks of life.</p>
                        <a href="mainmasterpag.jsp?msg=2" class="btn btn-default">Learn More </a>
                        
                    </div>
                </div>
            </div>
              <div class="col-md-4">
                <div class="panel panel-default" >
                    <div class="panel-heading" style="background-color:yellowgreen;">
                        <h4><i class="fa fa-fw fa-check" style="color:white;"></i><font color="white"> Fitness</h4>
                    </div>
                    <div class="panel-body">
                        <img src="images/weight.jpg" height="80px;" width="100%">
                        <p><font color="black">The condition for physically fit and healthy. the quality of being suitable to fulfill a particular role or task. </p>
                        <a href="mainmasterpag.jsp?msg=3" class="btn btn-default">Learn More </a>
                        
                    </div>
                </div>
            </div>
              <div class="col-md-4">
                <div class="panel panel-default" >
                    <div class="panel-heading" style="background-color:yellowgreen;">
                        <h4><i class="fa fa-fw fa-check" style="color:white;"></i><font color="white"> Weight</h4>
                    </div>
                    <div class="panel-body">
                        <img src="images/fit.jpg" height="80px;" width="100%">
                        <p><font color="black">A bodies relative mass or the quality of matter contained by it, giving rise to a downward force; the heaviness of a person or thing.</p>
                        <a href="mainmasterpag.jsp?msg=4" class="btn btn-default">Learn More </a>
                        
                    </div>
                </div>
            </div>
             <div class="col-md-4">
                <div class="panel panel-default" >
                    <div class="panel-heading" style="background-color:yellowgreen;">
                        <h4><i class="fa fa-fw fa-check" style="color:white;"></i><font color="white"> Food</h4>
                    </div>
                    <div class="panel-body">
                        <img src="images/food.jpg" height="80px;" width="100%">
                        <p><font color="black">Any nutrition substance that people or animal eat or that plants absorbs in order to maintain life and growth.also to make body work,grow and repair.</p>
                        <a href="mainmasterpag.jsp?msg=5" class="btn btn-default">Learn More </a>
                        
                    </div>
                </div>
            </div>
              <div class="col-md-4">
                <div class="panel panel-default" >
                    <div class="panel-heading" style="background-color:yellowgreen;">
                        <h4><i class="fa fa-fw fa-check" style="color:white;"></i><font color="white"> Health A-z</h4>
                    </div>
                    <div class="panel-body">
                        <img src="images/health.jpg" height="80px;" width="100%">
                        <p><font color="black">Health and medical information.it is your ultimate guide to reliable health nformation on common topics Ato Z</p>
                        <a href="mainmasterpag.jsp?msg=5" class="btn btn-default">Learn More </a>
                        
                    </div>
                </div>
            </div>
             <div class="col-md-4">
                <div class="panel panel-default" >
                    <div class="panel-heading" style="background-color:yellowgreen;">
                        <h4><i class="fa fa-fw fa-check" style="color:white;"></i><font color="white"> Doctors</h4>
                    </div>
                    <div class="panel-body">
                        <img src="images/doc.jpg" height="80px;" width="100%">
                        <p><font color="black">the doctor is someone who maintain or resource human health through the practice of medicine. he or she will degree. </p>
                        <a href="#" class="btn btn-default">Learn More </a>
                        
                    </div>
                </div>
            </div>
             <div class="col-md-4">
                <div class="panel panel-default" >
                    <div class="panel-heading" style="background-color:yellowgreen;">
                        <h4><i class="fa fa-fw fa-check" style="color:white;"></i><font color="white"> About us</h4>
                    </div>
                    <div class="panel-body">
                        <img src="images/abb.jpg" height="80px;" width="100%">
                        <p><font color="black">E-Health ,as an online and print platform, elegantly guides the health care stakeholder through the trajectory of healthcare that witness </p>
                        <a href="mainmasterpag.jsp?msg=7" class="btn btn-default">Learn More </a>
                        
                    </div>
                </div>
            </div>
              <div class="col-md-4">
                <div class="panel panel-default" >
                    <div class="panel-heading" style="background-color:yellowgreen;">
                        <h4><i class="fa fa-fw fa-check"style="color:white;" ></i><font color="white"> Contact us</font></h4>
                    </div>
                    <div class="panel-body">
                        <img src="images/contactt.png" height="80px;" width="100%">
                        <p> <font color="black">If you have any comments or suggestion we'd like to hear from you.With your help, we will be continually...</p>
                        <a href="mainmasterpag.jsp?msg=8" class="btn btn-default">Learn More </a>
                        
                    </div>
                </div>
            </div>
        </div>
        <!-- /.row -->

        <!-- Portfolio Section -->
        <div class="row">
            <div class="col-lg-12"> 
                <h2 class="page-header">GALLERY</h2>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="portfolio-item.html">
                    <img class="img-responsive img-portfolio img-hover" src="images/food.jpg" alt="">
                </a>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="portfolio-item.html">
                    <img class="img-responsive img-portfolio img-hover" src="images/food.jpg" alt="">
                </a>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="portfolio-item.html">
                    <img class="img-responsive img-portfolio img-hover" src="images/food.jpg" alt="">
                </a>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="portfolio-item.html">
                    <img class="img-responsive img-portfolio img-hover" src="images/fit.jpg" alt="">
                </a>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="portfolio-item.html">
                    <img class="img-responsive img-portfolio img-hover" src="images/food.jpg" alt="">
                </a>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="portfolio-item.html">
                    <img class="img-responsive img-portfolio img-hover" src="images/health.jpg" alt="">
                </a>
            </div>
        </div>
        <!-- /.row -->

        <!-- Features Section -->
        <div class="row">
            <div class="col-lg-12">
                <h2 class="page-header">Latest Starting Program</h2>
            </div>
            <div class="col-md-6">
                <p>The Latest Starting Program In Next month:</p>
                <ul>
                    <li><strong>Yoga Training</strong>
                    </li>
                    <li>3 days Trail Free</li>
                    <li>Weekend Class Avaliable</li>
                    <li>Class were organized by well trained Person</li>
                    <li>Reliable and Very affordable Fee</li>
                    <li>Classes are avaliable for all age group person</li>
                </ul>
                <p>The word "yoga" comes from the Sanskrit root yuj,which means "to join"or"to yoke".yoga is practical aid,not a religion 
                      The word "yoga" comes from the Sanskrit root yuj,which means "to join"or"to yoke".yoga is practical aid,not a religion </p>
                       </div>
            <div class="col-md-6">
                <img class="img-responsive" src="images/yoga.jpg" alt="">
            </div>
        </div>
        <!-- /.row -->

        <hr>

        <!-- Call to Action Section -->
        

    
</div>
    <footer style="background-color:black;">
       <div class="row" style="background-color:black;" >
          
  <div class="col s12 m12 l12" style="background-color:black;">
 
                    <div class="row" style="background-color:black;">
  
</div>
                    <div class="row" style="background-color:black;">
     <div class="col-md-1 col-sm-1" style="background-color:black;"><br></div>
   
      <div class="col-md-3 col-sm-3" style="background-color:black;">
 
      
      <br>
     <font color="white">
     <h4><u><b>contact Us</b></u><br></h4>
     <br>
      <h5><b>Call :</b>+91-7060830393</h5>
     <h5><b>Call :</b>+91-7417700793</h5>
       
        <h5>
       <b>Email :</b>Pawan123magic@gmail.com
        </h5>
     <h5><b>Skype :</b>pawan221magic</h5>
       <br>
  </div> 
                           <div class="col-md-1 col-sm-1" style="background-color:black;"><br></div>
   
    <div class="col-md-3 col-sm-3" style="background-color:black;">
        <br>
     <h4><u><b>Follow Us</b></u><br></h4>
     <br>
   
    
      <ul class="list-inline">
          <li><a href="#"><i  class="fa fa-3x  fa-facebook-square"></i></a>
                            </li>
                            <li><a href="#"><i class="fa fa-3x fa-linkedin-square"></i></a>
                            </li>
                            <li><a href="#"><i class="fa fa-3x fa-twitter-square"></i></a>
                            </li>
                            <li><a href="#"><i class="fa fa-3x fa-pinterest-square"></i></a>
                            </li><br><br>
                            <li><a href="#"><i class="fa fa-3x  fa-youtube-square"></i></a>
                            </li>
                            
                            <li><a href="#"><i class="fa fa-3x fa-rss-square"></i></a>
                            </li>
                            <li><a href="#"><i class="fa fa-3x fa-rss-square"></i></a>
                            </li>
                            <li><a href="#"><i class="fa fa-3x fa-rss-square"></i></a>
                            </li>
                            <li><a href="#"><i class="fa fa-3x fa-instagram-square"></i></a>
                            </li>
                        </ul>
     
     <br>    

  </div> 
                        
                        
                        <div class="col-md-1 col-sm-1" style="background-color:black;"><br></div>
   
                        
   <div class="col-md-3 col-sm-3"style="background-color:black;">
           <br>
         <h4><u><b>Mailing List</b></u><br></h4>
         <br>
         <p> <h5> <b>Sign Up!</b>If you would like to update</p>
         <p>for all Education related information</p>
         <br>
        <form class="form-inline">
    <input type="email" class="form-control" size="25" placeholder="Email Address" required>
    <button type="button" class="btn btn-danger">Go</button>
  </form>
     
</div>
</div>
                    
                      </div>
           <div style="background-color:black;">
               <hr>
               
               <p> <center><b>All Rights Are Reserved</b></center></p>
           </div>
</footer>
    
    
    <!----------------------------------EXPERT REGISTRATION--------------------------------------->
    <font color="black">
      <div>
   <form action="expertreg" method="post" enctype="multipart/form-data">
  <!-- Modal -->
  <div id="ExpertModal" class="modal fade" role="dialog">
  <div class="modal-dialog">
 <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header" style="background-color:yellowgreen;">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title"><h1><center><b><font color="white"> Expert Registration</font></b></center></h1>
      </div>
     <div class="modal-body">
    <div class="form-group"> 
         <label for="name" >Name:</label>
         <input type="name"class="form-control"id="name" name="name" >
     </div>
  <div class="form-group">
    <label for="email" >Email address:</label>
    <input type="email" class="form-control" name="email" id="email">
  </div>
  <div class="form-group">
    <label for="pwd" >Password:</label>
    <input type="password" class="form-control" id="pass" name="pass">
  </div>
             <div class="form-group">
    <label for="pwd" >Confirm Password:</label>
    <input type="password" class="form-control" id="passs" name="passs">
  </div>
         <div class="form-group">
    <label for="gender">Gender:</label>
           <input class="w3-radio" type="radio" name="gen" value="male" checked>
<label class="w3-validate">Male</label>

<input class="w3-radio" type="radio" name="gen" value="female">
<label class="w3-validate">Female</label></div>
        <div class="form-group">
    <label for="contact">Contact no:</label>
    <input type="contact no" class="form-control" id="contact" name="contact">
  </div>
   <div class="form-group">
      <label for="expert">Expert:</label>
      <select class="form-control" id="expert" name="expert">
        <option value="Beautician">Beautician</option>
        <option value="Gym Trainer">Gym Trainer</option>
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
         <label for="name">Longitude:</label>
         <input type="name"class="form-control"id="longi" name="longi">
        </div>
               <div class="form-group"> 
         <label for="name">Latitude:</label>
         <input type="name"class="form-control"id="lati" name="lati">
     </div>
          <div class="form-group"> 
              <button   type="button"  onclick="getLocation()"> Location</button>
              </div>
   <div class="form-group">
    <label for="cpwd">Country:</label>
    <select class="form-control" id="country"  name="country" onchange="showState(this.value)">
                      <option value="NA" >Please Select Country</option>
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
               <div class="form-group" >
    <label for="state">State:</label>
    <div id="sdiv"></div>
  
  </div>
                        <div class="form-group">
    <label for="city">City:</label>
    <div id="cdiv"></div>
  </div>
 
       <div class="form-group">
    <label for="Experience">Experience:</label>

     <select class="form-control" id="Experience" name="exp">
        <option value="1">1</option>
        <option value="2">2</option>
          <option value="3">3</option>
        <option value="4">4</option>
          <option value="5">5</option>
        <option value="6">6</option>
          <option value="7">7</option>
        <option value="8">8</option>
          <option value="9">9</option>
        <option value="10">10</option>  
        <option value="11">11</option>
        <option value="12">12</option> 
        <option value="13">13</option>
        <option value="14">14</option>
    </select> 
  </div>
     <div class="form-group">
    <label for="contact">Qualification:</label>
    <input type="quali" class="form-control" id="quali" name="quali">
  </div>
                         <div class="form-group">
      <label for="comment">Attached Documents:</label>
         <input class="w3-input w3-border w3-margin-bottom" name="imagess" type="file">
 </div>
              
 <div class="form-group">
      <label for="comment">Picture:</label>
         <input class="w3-input w3-border w3-margin-bottom" name="images" type="file">
 </div>
           
        
    <div class="form-group">
      <label for="comment">Comment:</label>
      <textarea class="form-control" rows="5" id="comment" name="coment"></textarea>
    </div>
        
         </div>
      <div class="modal-footer" style="background-color:yellowgreen;">
       
  <div>
  <button type="submit" class="btn pull-left">Submit</button>
       
  <button type="button"margin="top" class="btn pull-right" data-dismiss="modal">Close</button></div>
          </div>
    </div>
      </div>
      
  </div>
</form>
  </div>
    <!------------------------------------------------------------------------->

    <!-----------------------------------------------PATIENT REGISTRATION------------------------------------------------------------------------>
    <div>
   
              <form action="patientreg" method="post" enctype="multipart/form-data">
  <!-- Modal -->
  <div id="PatientModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

   
    <div class="modal-content">
      <div class="modal-header" style="background-color:yellowgreen;">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title"><h1><center><b><font color="white"> Patient Registration</font></b></center></h1>
      </div>
       
      <div class="modal-body">
          
          
          
          
         
     <div class="form-group"> 
         <label for="name">Name:</label>
         <input type="name"class="form-control"id="name" name="name">
     </div>
              
            
              
          
              
              
              
  <div class="form-group">
    <label for="email">Email address:</label>
    <input type="email" class="form-control" id="email" name="email">
  </div>
  <div class="form-group">
    <label for="pwd">Password:</label>
    <input type="password" class="form-control" id="pass" name="pass">
  </div>
              
              <div class="form-group">
    <label for="pwd">Confirm Password:</label>
    <input type="password" class="form-control" id="passs" name="passs">
  </div>
          
          
          
           <div class="form-group">
    <label for="cpwd">Age:</label>
    <input type="age" class="form-control" id="age" name="age">
  </div>
          
          
          
          
           <div class="form-group">
    <label for="cpwd">Gender:</label>
           <input class="w3-radio" type="radio" name="gen" value="male" checked>
<label class="w3-validate">Male</label>

<input class="w3-radio" type="radio" name="gen" value="female">
<label class="w3-validate">Female</label></div>
          <div>
 <label for="cpwd">Country:</label>
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
               <div class="form-group" >
    <label for="state">State:</label>
    <div id="ssdiv"></div>
  
  </div>
                        <div class="form-group">
    <label for="city">City:</label>
    <div id="ccdiv"></div>
  </div>
   <div class="form-group">
    <label for="contact">Contact no:</label>
    <input type="contact no" class="form-control" id="contact" name="contact">
  </div>
        
    <div class="form-group">
      <label for="expert">Looking For:</label>
   
      <select class="form-control" id="expert" name="expert">
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
  </div>
 <div class="form-group">
      <label for="comment">Picture:</label>
         <input class="w3-input w3-border w3-margin-bottom" name="images" type="file">
 </div>
           
       <div class="form-group"> 
         <label for="name" >Registration Fee:</label>
         <input type="name"class="form-control"id="fee" value="100" readonly="" name="fee" >
     </div>
        
    <div class="form-group">
      <label for="comment">Comment:</label>
      <textarea class="form-control" rows="5" id="coment" name="coment"></textarea>
    </div>
  <div class="modal-footer" style="background-color:yellowgreen;">
       
  
  <button type="submit" class="btn pull-left">Submit</button>
       
  <button type="button"margin="top" class="btn pull-right" data-dismiss="modal">Close</button></div>
          </div>
           
        </div>
      </div>
    
   
  </form>
    </div>
    
      <!----------------------------------------------------------------------------------------------------------------------->
   
      
      
      
      
      
        <!------------------------------------------------------EXPERT LOGIN----------------------------------------------------------------->
   <div>
   <form action="expertlogin" method="get" >
  <!-- Modal -->
  <div id="ExperttModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header" style="background-color:yellowgreen;">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title"><h1><center><b><font color="white"> Expert Login</font></b></center></h1>
      </div>
        
      <div class="modal-body">
     <div class="form-group"> 
         <label for="name" >User Id:</label>
         <input type="name"class="form-control"id="uname" name="uname" >
     </div>
    <label for="pwd" >Password:</label>
    <input type="password" class="form-control" id="pass" name="pass">
  </div>
         <div class="modal-footer" style="background-color:yellowgreen;">
       
  <div>
  <button type="submit" class="btn pull-left">Submit</button>
       
  <button type="button"margin="top" class="btn pull-right" data-dismiss="modal">Close</button></div>
          </div>
     </div>
      </div>
  </div>
</form>
  </div>
          <!----------------------------------------------------------------------------------------------------------------------->
    
          
            <div>
   <form action="adminlogin" method="get" >
  <!-- Modal -->
  <div id="AdminModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header" style="background-color:yellowgreen;">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title"><h1><center><b><font color="white"> Admin Login</font></b></center></h1>
      </div>
        
      <div class="modal-body">
     <div class="form-group"> 
         <label for="name" >User Id:</label>
         <input type="name"class="form-control"id="uname" name="uname" >
     </div>
    <label for="pwd" >Password:</label>
    <input type="password" class="form-control" id="pass" name="pass">
  </div>
         <div class="modal-footer" style="background-color:yellowgreen;">
       
  <div>
  <button type="submit" class="btn pull-left">Submit</button>
       
  <button type="button"margin="top" class="btn pull-right" data-dismiss="modal">Close</button></div>
          </div>
     </div>
      </div>
  </div>
</form>
  </div>
          
          
          
          
          <!-----------------------------------------------------------PATIENT LOGIN------------------------------------------------------------>
   
             <div>
   <form action="patientlogin" method="get" >
  <!-- Modal -->
  <div id="PatienttModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header" style="background-color:yellowgreen;">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title"><h1><center><b><font color="white"> Patient LogIn</font></b></center></h1>
      </div>
        
      <div class="modal-body">
     <div class="form-group"> 
         <label for="name" >User Id:</label>
         <input type="name"class="form-control"id="uname" name="uname" >
     </div>
    <label for="pwd" >Password:</label>
    <input type="password" class="form-control" id="pass" name="pass">
  </div>
         <div class="modal-footer" style="background-color:yellowgreen;">
       
  <div>
  <button type="submit" class="btn pull-left">Submit</button>
       
  <button type="button"margin="top" class="btn pull-right" data-dismiss="modal">Close</button></div>
          </div>
     </div>
      </div>
  </div>
</form>
  </div>
          
          
          
          <!----------------------------------------------------------------------------------------------------------------------->
   
    
    
    
    
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Script to Activate the Carousel -->
    <script>
    $('.carousel').carousel({
        interval: 5000 //changes the speed
    })
    </script>
    
    <!------------------------------------------MESSSAGE SCRIPT-------------------------------------------------->
    <%  
if(request.getParameter("msglogin")!=null)
{
%>  
<script type="text/javascript">
    
    toastr.success('Invalid Username And Password', 'danger', {timeOut: 5000})
	
</script>
<%}%>
    

  <%  
if(request.getParameter("msgreg")!=null)
{
%>  
<script type="text/javascript">
    
    toastr.success('You have registered successfully !', 'Success Alert', {timeOut: 5000})
	
</script>
<%}%>
 <%  
if(request.getParameter("msglogout")!=null)
{
%>  
<script type="text/javascript">
    
    toastr.success('You have Logout successfully !', 'Success Alert', {timeOut: 5000})
	
</script>
<%}%>
    <!-------------------------------------------------------------------------------------------->
    
    
    

</body>
</html>
