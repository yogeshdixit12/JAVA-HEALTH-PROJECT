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

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

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
        String sql="Select * from expert where id='"+t+"' ";
               
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
                        <li><a href="http://localhost:8080/HealthProject/expertlogout"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
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
                            <!-- /input-group -->
                        </li>
                        <li>
                            <a href="ExpertMasterpage.jsp?msg=1"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i>Appointment<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="ExpertMasterpage.jsp?msg=2"> View All Appointment</a>
                                </li>
                               
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                       
                       
                        <li>
                            <a href="#"><i class="fa fa-wrench fa-fw"></i> Review <span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="ExpertMasterpage.jsp?msg=6">Post Review</a>
                                </li>
                                <li>
                                    <a href="ExpertMasterpage.jsp?msg=7">View Review</a>
                                </li>
                               
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-sitemap fa-fw"></i>Report<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="ExpertMasterpage.jsp?msg=13">View Report</a>
                                </li>
                                
                               
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-files-o fa-fw"></i>Profile<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="ExpertMasterpage.jsp?msg=3"> Profile Update</a>
                                </li>
                                <li>
                                    <a href="ExpertMasterpage.jsp?msg=4">complete Profile</a>
                                </li>
                                <li>
                                    <a href="ExpertMasterpage.jsp?msg=5">Delete Profile</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                       
                        <li>
                            <a href="ExpertMasterpage.jsp?msg=12"><i class="fa fa-dashboard fa-fw"></i>Chat Room</a>
                        </li>
                    </ul>
                    
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

        <div id="page-wrapper">
            <div class="row">
               
                <!-- /.col-lg-12 -->
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
                <jsp:include page="viewallappointment.jsp"></jsp:include>
                <%
                break;
                    case 3:
                        
                %>
                <jsp:include page="expupdateprofile.jsp"></jsp:include>
                 <%
                break;
                    case 4:
                        
                %>
                <jsp:include page="expcompleteprofile.jsp"></jsp:include>
                 <%
                break;
                    case 5:
                        
                %>
                <jsp:include page="expdeleteprofile.jsp"></jsp:include>
                 <%
                break;
                    case 6:
                        
                %>
                <jsp:include page="../pages/Expertpastreview.jsp"></jsp:include>
                 <%
                break;
                    case 7:
                        
                %>
                <jsp:include page="expertreview.jsp"></jsp:include>
                <%
                break;
                    case 8:
                %>
                <jsp:include page="#"></jsp:include>
                <%
                break;
                    case 9:
                %>
                <jsp:include page="#"></jsp:include>
                <%
                        break;
                          case 10:
                %>
                <jsp:include page="chatroom.jsp"></jsp:include>
                <%
                break;  
                          case 11:
                %>
                <jsp:include page="chatroom.jsp"></jsp:include>
                <%
                break;
                              case 12:
                %>
                <jsp:include page="Chatperson.jsp"></jsp:include>
                <%
                break;
                                case 13:
                %>
                <jsp:include page="expviewreport.jsp"></jsp:include>
                <%
                break;
                                     case 14:
                %>
                <jsp:include page="#"></jsp:include>
                <%
                break;
                                         case 15:
                %>
                <jsp:include page=""></jsp:include>
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
    
  
     <div class="modal fade" id="expvew" role="dialog">
        
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
       
        <div class="modal-body">
            <button type="button" class="close" data-dismiss="modal"> &times;</button>
            <div id="vvvv"></div>
            
            
        </div>
        
      </div>
      
    </div>
  </div>
    
    
   <!-- Modal -->
  <div class="modal fade" id="updateappoi" role="dialog">
    <div class="modal-dialog">
       <form action="http://localhost:8080/HealthProject/updateappointment" method="post">
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="background-color:yellowgreen;" >
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h2 class="modal-title"><center><font color="white">Appointment Updation </font></center></h2>
        </div>
        <div class="modal-body">
      
            <div id="result"></div>
            
            
        </div>
        <div class="modal-footer" style="background-color:yellowgreen;">
            <button type="submit" class="btn pull-left" >Submit</button>
          <button type="button" class="btn pull-right" data-dismiss="modal">Close</button>
       
        </div>
      </div>
       </form>
    </div>
  </div>
   
   
   
   
    <div class="modal fade" id="uuupdate" role="dialog">
    <div class="modal-dialog">
        <form method="get" action="http://localhost:8080/HealthProject/Expert/pages/expupdateereview.jsp" >
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="background-color:yellowgreen;" >
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h2 class="modal-title"><center><font color="white">Appointment Upddation </font></center></h2>
        </div>
        <div class="modal-body">
      
            <div id="uuuu"></div>
            
            
        </div>
        <div class="modal-footer" style="background-color:yellowgreen;">
            <button type="submit" class="btn pull-left" >Submit</button>
          <button type="button" class="btn pull-right" data-dismiss="modal">Close</button>
       
        </div>
      </div>
       </form>
    </div>
  </div>
   
   
   
   
   
   
   
    <div class="modal fade" id="app" role="dialog">
    <div class="modal-dialog">
        <form method="get" action="http://localhost:8080/HealthProject/appprr" >
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="background-color:yellowgreen;" >
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h2 class="modal-title"><center><font color="white">Report </font></center></h2>
        </div>
        <div class="modal-body">
      
            <div id="appr"></div>
            
            
        </div>
        <div class="modal-footer" style="background-color:yellowgreen;">
            <button type="submit" class="btn pull-left" >Submit</button>
          <button type="button" class="btn pull-right" data-dismiss="modal">Close</button>
       
        </div>
      </div>
       </form>
    </div>
  </div>
   
   
   
   
   
   
   
     <div class="modal fade" id="Showw" role="dialog">
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
      
         $("button").click(function()
       {
           
           
      var t=$(this).val();
      var l=t.split("-");
      
      if(l[0]=="Update")
      {
       //alert(l[0]+" "+l[1]);
      
      // document.getElementById("ggl").innerHTML=$(this).val()+"";
       $.post("http://localhost:8080/HealthProject/Expert/pages/editappointment.jsp",
    {
        name: l[1]
    },
     function(data, status){
    // alert("Data: " + data + "\nStatus: " + status);
        $("#result").html(data+"");
      
       });
      
      
       }
       
     
       else  if(l[0]=="Show")
      {
     
      
      // document.getElementById("ggl").innerHTML=$(this).val()+"";
       $.post("http://localhost:8080/HealthProject/Expert/pages/viewappointment.jsp",
    {
        name: l[1]
    },
     function(data, status){
     //alert("Data: " + data + "\nStatus: " + status);
        $("#vieww").html(data+"");
      
       });
      
      
       }
       
       else if(l[0]=="vvview")
      {
      
      // document.getElementById("ggl").innerHTML=$(this).val()+"";
       $.post("http://localhost:8080/HealthProject/Expert/pages/expviewofreport.jsp",
    {
        name: l[1]
       
    },
    function(data, status){
  // alert("Data: " + data + "\nStatus: " + status);
  // myVar = setTimeout(function(){ $("#viiew").html(data+"");  }, 500);
        $("#viiew").html(data+"");
      
       });
       }
   else  if(l[0]=="UUpdate")
      {
      
      // document.getElementById("ggl").innerHTML=$(this).val()+"";
       $.post("http://localhost:8080/HealthProject/Expert/pages/updatereview.jsp",
    {
        name: l[1]
    },
     function(data, status){
  // alert("Data: " + data + "\nStatus: " + status);
        $("#uuuu").html(data+"");
      
       });
      
      
       }
       
       
       
        else if(l[0]=="delete")
      {
      // alert(l[0]+" "+l[1]);
      
      // document.getElementById("ggl").innerHTML=$(this).val()+"";
       var c= confirm("Are you sure to delete this question?");
     if(c===true)
      {
      
      var t=l[1];
    
      // document.getElementById("result").innerHTML=$(this).val()+"";
       $.post("http://localhost:8080/HealthProject/Expert/pages/delap.jsp",
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
       else if(l[0]=="De")
      {
      // alert(l[0]+" "+l[1]);
      
      // document.getElementById("ggl").innerHTML=$(this).val()+"";
       var c= confirm("Are you sure to delete this question?");
     if(c===true)
      {
      
      var t=l[1];
    
      // document.getElementById("result").innerHTML=$(this).val()+"";
       $.post("http://localhost:8080/HealthProject/Expert/pages/delexpreview.jsp",
    {
        name: t
    },
    function(data, status){
   //  alert("Data: " + data + "\nStatus: " + status);
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
      
         $("button").click(function()
       {
      
      var t=$(this).val();
      var l=t.split("-");
      
     if(l[0]=="SSSearch")
      {
      // alert(l[0]+" "+l[1]);
      
      // document.getElementById("ggl").innerHTML=$(this).val()+"";
       $.post("http://localhost:8080/HealthProject/Expert/pages/expre.jsp",
    {
        name: l[1]
       
    },
   function(data, status){
    // alert("Data: " + data + "\nStatus: " + status);
   myVar = setTimeout(function(){ $("#vvvv").html(data+"");  }, 500);
       
       });
       }
    
      
     });
   
  </script>
  



  
  
  
</body>
</html>
