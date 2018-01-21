<%-- 
    Document   : index
    Created on : 19 Feb, 2017, 11:04:07 PM
    Author     : Rowdy
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>SB Admin 2 - Bootstrap Admin Theme</title>

    <!-- Bootstrap Core CSS -->
    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="../vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="../vendor/morrisjs/morris.css" rel="stylesheet">
 <!-- DataTables CSS -->
    <link href="../vendor/datatables-plugins/dataTables.bootstrap.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="../vendor/datatables-responsive/dataTables.responsive.css" rel="stylesheet">
    <script src="jquery.min.js" type="text/javascript"></script>
    <!-- Custom Fonts -->
    <link href="../vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                
                 <%
                                                 
                                                 
                                                 HttpSession sess=request.getSession();  
     String t= sess.getAttribute("id").toString();
       try 
 {
  Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/site","root","root");
       Statement st=con.createStatement();
        String sql="Select * from patent where id='"+t+"' ";
               
            ResultSet rs=st.executeQuery(sql);
            rs.next();
            if(rs.getRow()>0)
                
          {
                        %>
                 
                
                 <a class="navbar-brand" href="index.html"><%="Welcome :"+rs.getString("name")%></a>
                
                <%
                       
                     }
            con.close();
                        st.close();
                    
                    
                    }catch(Exception e)
                    {
                 out.println(e.getMessage());
                    }
        %>
                
                
                
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-envelope fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-messages">
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Smith</strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Smith</strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Smith</strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>Read All Messages</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-messages -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-tasks fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-tasks">
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 1</strong>
                                        <span class="pull-right text-muted">40% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                            <span class="sr-only">40% Complete (success)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 2</strong>
                                        <span class="pull-right text-muted">20% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                                            <span class="sr-only">20% Complete</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 3</strong>
                                        <span class="pull-right text-muted">60% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                            <span class="sr-only">60% Complete (warning)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 4</strong>
                                        <span class="pull-right text-muted">80% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                            <span class="sr-only">80% Complete (danger)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>See All Tasks</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-tasks -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-bell fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-alerts">
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-comment fa-fw"></i> New Comment
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                                    <span class="pull-right text-muted small">12 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-envelope fa-fw"></i> Message Sent
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-tasks fa-fw"></i> New Task
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-upload fa-fw"></i> Server Rebooted
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>See All Alerts</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-alerts -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="http://localhost:8080/HealthProject/patientlogout"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li class="sidebar-search">
                            <div class="input-group custom-search-form">
                                <input type="text" class="form-control" placeholder="Search...">
                                <span class="input-group-btn">
                                <button class="btn btn-default" type="button">
                                    <i class="fa fa-search"></i>
                                </button>
                            </span>
                            </div>
                            
                        </li>
                        <li>
                            <a href="PatientMasterpage.jsp?msg=1"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i>Appointment<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                   
                                    <a href="<a href="data-toggle="modal" data-target="#appointment">Get Appointment</a>
                                </li>
                                <li>
                                    <a href="PatientMasterpage.jsp?msg=3">Appointment Detail</a>
                                </li>
                               
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                       
                       
                        <li>
                            <a href="#"><i class="fa fa-wrench fa-fw"></i> Review <span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="PatientMasterpage.jsp?msg=4">Post Review</a>
                                </li>
                                <li>
                                    <a href="PatientMasterpage.jsp?msg=5">View Review</a>
                                </li>
                               
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-sitemap fa-fw"></i>Report<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="PatientMasterpage.jsp?msg=6">Upload Report</a>
                                </li>
                                <li>
                                    <a href="PatientMasterpage.jsp?msg=7">Shared Reports</a>
                                </li>
                                 <li>
                                    <a href="PatientMasterpage.jsp?msg=15">View My Reports</a>
                                </li>
                                
                                <li>
                                    <a href="PatientMasterpage.jsp?msg=13">View Shared Reports</a>
                                </li>
                               
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-files-o fa-fw"></i>Profile<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="PatientMasterpage.jsp?msg=8"> Profile Update</a>
                                </li>
                                
                                <li>
                                    <a href="PatientMasterpage.jsp?msg=9">Delete Profile</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                         <li>
                            <a href="#"><i class="fa fa-files-o fa-fw"></i>Search<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="PatientMasterpage.jsp?msg=12">Search Doctor</a>
                                </li>
                                
                               
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        
                        
                        
                            <li>
                            <a href="PatientMasterpage.jsp?msg=14"><i class="fa fa-dashboard fa-fw"></i>Chat Room</a>
                        </li>
                      
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

        <div id="page-wrapper">
            <div class="row">
               
            </div>
                 <%
                    int i=1;
                    if (request.getParameter("msg")!=null)
                    {
                     i=Integer.parseInt(request.getParameter("msg"));
                    }

                    switch (i)
                        {
                    case 1:
                %>
                <jsp:include page="index.jsp"></jsp:include>
                <%
                break;
                    case 2:
                        
                %>
                <jsp:include page="getappointment.jsp"></jsp:include>
                <%
                break;
                    case 3:
                      
                %>
                <jsp:include page="Deleteappoint.jsp"></jsp:include>
                 <%
                break;
                    case 4:
                        
                %>
                <jsp:include page="patientreview.jsp"></jsp:include>
                 <%
                break;
                    case 5:
                        
                %>
                <jsp:include page="viewreview.jsp"></jsp:include>
                 <%
                break;
                    case 6:
                        
                %>
                <jsp:include page="uploadreport.jsp"></jsp:include>
                 <%
                break;
                    case 7:
                        
                %>
                <jsp:include page="viewreport.jsp"></jsp:include>
                <%
                break;
                    case 8:
                %>
                <jsp:include page="updateprofile.jsp"></jsp:include>
                <%
                break;
                    case 9:
                %>
                <jsp:include page="deleteprofile.jsp"></jsp:include>
                <%
                        break;
                          case 10:
                %>
                <jsp:include page="selectdoctor.jsp"></jsp:include>
                <%
                break;  
                          case 11:
                %>
                <jsp:include page="chatroom.jsp"></jsp:include>
                <%
                break;
                              case 12:
                %>
                <jsp:include page="searchdoctor.jsp"></jsp:include>
                <%
                break;
                                case 13:
                %>
                <jsp:include page="viewsharedrprts.jsp"></jsp:include>
                <%
                break;
                                     case 14:
                %>
               <%
                 try{
              String tuv= session.getAttribute("id").toString();
             
               Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/site","root","root");
       Statement st=con.createStatement();
       
       String sql="Select * from patent where id='"+tuv+"'";
              ResultSet rs=st.executeQuery(sql);
          
            rs.next();
            if(rs.getRow()>0)
          {
           
     if((rs.getString("planstatus")).equals("Active"))
     {  
               %>
              
 <jsp:include page="selectdoctor.jsp"></jsp:include>
          <%    
         }
     else
                {
                    %>
               <jsp:include page="../../patent/pages/payforchat/selectplan.jsp"></jsp:include>
              
                <%
         }
         } else
            {
             out.println("you are not active user to chat");
            }
                
                    }
        
      
        catch(Exception e)
                    {
                    System.out.println(e.getMessage());
                    }
                
                
                
                %>
                
                
                <%
                break;
                                         case 15:
                %>
                <jsp:include page="viewmyreport.jsp"></jsp:include>
                <%
                break;
                                         
                }
                %>
                
            
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

    <!-- Morris Charts JavaScript -->
    <script src="../vendor/raphael/raphael.min.js"></script>
    <script src="../vendor/morrisjs/morris.min.js"></script>
    <script src="../data/morris-data.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../dist/js/sb-admin-2.js"></script>
   <!-- DataTables JavaScript -->
    <script src="../vendor/datatables/js/jquery.dataTables.min.js"></script>
    <script src="../vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
    <script src="../vendor/datatables-responsive/dataTables.responsive.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../dist/js/sb-admin-2.js"></script>

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    $(document).ready(function() {
        $('#epi').DataTable({
            responsive: true
        });
    });
    </script>
    
    
    <!-------------------------dialog---------------->
    
   <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="background-color:yellowgreen;" >
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h2 class="modal-title"><center><font color="white"> Modal Header</font></center></h2>
        </div>
        <div class="modal-body">
      
            <div id="result"></div>
            
            
        </div>
        <div class="modal-footer" style="background-color:yellowgreen;">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
   
   
   
   
  <div class="modal fade" id="goolmdl" role="dialog">
        
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
       
        <div class="modal-body">
            <button type="button" class="close" data-dismiss="modal"> &times;</button>
            <div id="ggl"></div>
            
            
        </div>
        
      </div>
      
    </div>
  </div>
   
   
   
  
   <div class="modal fade" id="uuupdate" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
       <form  method="get"  action="http://localhost:8080/HealthProject/patent/pages/updaterevieww.jsp" >
      <div class="modal-content">
        <div class="modal-header" style="background-color:yellowgreen;" >
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h2 class="modal-title"><center><font color="white"> Modal Header</font></center></h2>
        </div>
          
        <div class="modal-body">
      
            <div id="uuuu"></div>
            
            
        </div>
        <div class="modal-footer" style="background-color:yellowgreen;">
             <button type="Submit" class="btn pull-left" >Submit</button>
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
       </form>
    </div>
  </div>
  
   
   
   
   
    <div class="modal fade" id="pawanpal" role="dialog">
        
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
       
        <div class="modal-body">
            <button type="button" class="close" data-dismiss="modal"> &times;</button>
            <div id="pawan"></div>
            
            
        </div>
        
      </div>
      
    </div>
  </div>
   
   
   
   
   
   
   
     <div class="modal fade" id="Viewmodel" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
       <div class="modal-header" style="background-color:yellowgreen;" >
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h1 class="modal-title"><center><font color="white"> Modal Header</font></center></h1>
        </div>
        <div class="modal-body">
      
            <div id="vieww"></div>
            
            
        </div>
        <div class="modal-footer" style="background-color:yellowgreen;">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
    
    <!------------------------------------>
    
    <script>
 $(document).ready(function(){
   
     
       $("#update").click(function()
       {
      var t=$("#update").val();
       
      
      // document.getElementById("result").innerHTML=$(this).val()+"";
       $.post("http://localhost:8080/HealthProject/Expert/pages/editappointment.jsp",
    {
        name: t
    },
    function(data, status){
   //  alert("Data: " + data + "\nStatus: " + status);
        $("#result").html(data+"");
      
       });
     });
     //view
      $("#view").click(function()
       {
      var t=$("#view").val();
       
      
      // document.getElementById("result").innerHTML=$(this).val()+"";
       $.post("http://localhost:8080/HealthProject/Expert/pages/viewappointment.jsp",
    {
        name: t
    },
    function(data, status){
     alert("Data: " + data + "\nStatus: " + status);
        $("#vieww").html(data+"");
      
       });
     });
     
     //delete
      $("#delete").click(function()
       {
      
       var c= confirm("Are you sure to delete this question?");
     if(c===true)
      {
      
      var t=$("#delete").val();
    
      // document.getElementById("result").innerHTML=$(this).val()+"";
       $.post("http://localhost:8080/HealthProject/Expert/pages/deleteappointment.jsp",
    {
        name: t
    },
    function(data, status){
     alert("Data: " + data + "\nStatus: " + status);
    alert("Appointment is deleted successfuly");
   window.location.reload();
      
       });
   }
     });
     
     
     
     
     
       });
       
   
       
       
       
  </script>



  <script>
      
         $("button").click(function()
       {
           
           
      var t=$(this).val();
      var l=t.split("-");
      
      if(l[0]=="Search")
      {
    
      // document.getElementById("ggl").innerHTML=$(this).val()+"";
       $.post("http://localhost:8080/HealthProject/patent/pages/gpslocation.jsp",
    {
        name: l[1]
    },
    function(data, status){
    // alert("Data: " + data + "\nStatus: " + status);
   myVar = setTimeout(function(){ $("#ggl").html(data+"");  }, 500);
       
      
       });
       }
       
       
       else  if(l[0]=="VView")
      {
      
      // document.getElementById("ggl").innerHTML=$(this).val()+"";
       $.post("http://localhost:8080/HealthProject/patent/pages/vewwprt.jsp",
    {
        name: l[1]
    },
    function(data, status){
    
   myVar = setTimeout(function(){ $("#pawan").html(data+"");  }, 500);
       
      
       });
       }
       
       
       
       
       else  if(l[0]=="UUpdate")
      {
       alert(l[0]+" "+l[1]);
      
      // document.getElementById("ggl").innerHTML=$(this).val()+"";
       $.post("http://localhost:8080/HealthProject/patent/pages/updatereview.jsp",
    {
        name: l[1]
    },
    function(data, status){
    
   myVar = setTimeout(function(){ $("#uuuu").html(data+"");  }, 500);
       
      
       });
       }
       
       else  if(l[0]=="Update")
      {
      // alert(l[0]+" "+l[1]);
      
      // document.getElementById("ggl").innerHTML=$(this).val()+"";
       $.post("http://localhost:8080/HealthProject/patent/pages/gpslocation.jsp",
    {
        name: l[1]
    },
    function(data, status){
    // alert("Data: " + data + "\nStatus: " + status);
   myVar = setTimeout(function(){ $("#result").html(data+"");  }, 500);
       
      
       });
       }
 
   else if(l[0]=="DDD")
      {
     
      // document.getElementById("ggl").innerHTML=$(this).val()+"";
       var c= confirm("Are you sure to delete this question?");
     if(c===true)
      {
      
      var t=l[1];
    
      // document.getElementById("result").innerHTML=$(this).val()+"";
       $.post("http://localhost:8080/HealthProject/patent/pages/delllle.jsp",
    {
        name: t
    },
    function(data, status){
    // alert("Data: " + data + "\nStatus: " + status);
    alert("Appointment is deleted successfuly");
   window.location.reload();
      
       });
   }
       }
       
       else if(l[0]=="Delete")
      {
    
      // document.getElementById("ggl").innerHTML=$(this).val()+"";
       var c= confirm("Are you sure to delete this question?");
     if(c===true)
      {
      
      var t=l[1];
    
      // document.getElementById("result").innerHTML=$(this).val()+"";
       $.post("http://localhost:8080/HealthProject/patent/pages/delsarjsp_1.jsp",
    {
        name: t
    },
    function(data, status){
    // alert("Data: " + data + "\nStatus: " + status);
    alert("Report is deleted successfuly");
   window.location.reload();
      
       });
   }
       }
       
       
       
       
       
       
        else if(l[0]=="De")
      {
     
      // document.getElementById("ggl").innerHTML=$(this).val()+"";
       var c= confirm("Are you sure to delete this question?");
     if(c===true)
      {
      
      var t=l[1];
    
      // document.getElementById("result").innerHTML=$(this).val()+"";
       $.post("http://localhost:8080/HealthProject/patent/pages/delsarjsp.jsp",
    {
        name: t
    },
    function(data, status){
   //  alert("Data: " + data + "\nStatus: " + status);
    alert("Report is deleted successfuly");
   window.location.reload();
      
       });
   }
       }
       
       
       
       
       else if(l[0]=="Ddelete")
      {
      
      // document.getElementById("ggl").innerHTML=$(this).val()+"";
       var c= confirm("Are you sure to delete this question?");
     if(c===true)
      {
      
      var t=l[1];
    
      // document.getElementById("result").innerHTML=$(this).val()+"";
       $.post("http://localhost:8080/HealthProject/patent/pages/delsarjsp_1.jsp",
    {
        name: t
    },
    function(data, status){
     //alert("Data: " + data + "\nStatus: " + status);
    alert("Appointment is deleted successfuly");
   window.location.reload();
      
       });
   }
       }
       
     });
   
  </script>
  
  
  
  
 
  
  
  
  
  
  
  
  
  
  
  

  
  
  
  
  




  <script>
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































































    <div>
         <form role="form" action="http://localhost:8080/HealthProject/patent/pages/paymentgateway/payment.jsp" method="post">
                                   
                   
  <div id="appointment" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header" style="background-color:yellowgreen;">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title"><h1><center><b><font color="white"> Get Appointment Page</font></b></center></h1>
      </div>
       
      <div class="modal-body">
    
         
                      
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    
                                      
                                        
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
                                
                                </div>
         </div>
   </div>
          
          
          
          
          
          
          
  
           
        </div>
                        <div class="modal-footer" style="background-color:yellowgreen;">
       
  
  <button type="submit" class="btn pull-left">Submit</button>
       
  <button type="button"margin="top" class="btn pull-right" data-dismiss="modal">Close</button></div>
          </div>
      </div>
    
   

    </div>

  </form>






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







  
  
  
  
</body>
</html>
