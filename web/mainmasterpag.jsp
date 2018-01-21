<%-- 
    Document   : yoga
    Created on : Mar 25, 2017, 12:18:17 PM
    Author     : Rowdy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Modern Business - Start Bootstrap Template</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/modern-business.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
    <div class="container">

    
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
                <a class="navbar-brand" href="Mainpage.jsp" style="color:white;"> <b>Home</b></a>
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
                  
                 
                </ul>
            </div>
            </font>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

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
                <jsp:include page="yoga.jsp"></jsp:include>
                <%
                break;
                    case 2:
                        
                %>
                <jsp:include page="nut.jsp"></jsp:include>
                <%
                break;
                    case 3:
                        
                %>
                <jsp:include page="fitness.jsp"></jsp:include>
                 <%
                break;
                    case 4:
                        
                %>
                <jsp:include page="weight.jsp"></jsp:include>
                 <%
                break;
                    case 5:
                        
                %>
                <jsp:include page="food.jsp"></jsp:include>
                 <%
                break;
                    case 6:
                        
                %>
                <jsp:include page="services.jsp"></jsp:include>
                 <%
                break;
                    case 7:
                        
                %>
                <jsp:include page="about.jsp"></jsp:include>
                <%
                break;
                    case 8:
                %>
                <jsp:include page="contact.jsp"></jsp:include>
                <%
                break;
                    case 9:
                %>
                <jsp:include page=""></jsp:include>
                <%
                        break;
                          case 10:
                %>
                <jsp:include page=""></jsp:include>
                <%
                break;  
                          case 11:
                %>
                <jsp:include page=""></jsp:include>
                <%
                break;
                              case 12:
                %>
                <jsp:include page=""></jsp:include>
                <%
                break;
                                case 13:
                %>
                <jsp:include page=""></jsp:include>
                <%
                break;
                                     case 14:
                %>
                <jsp:include page=""></jsp:include>
                <%
                break;
                                         case 15:
                %>
                <jsp:include page=""></jsp:include>
                <%
                break;
                                         
                }
                %>
                
            
             <footer>
            <div class="row">
                <div class="col-lg-12">
                    <center> <p>Copyright &copy; Your Website 2017</p></center>
                </div>
            </div>
             </footer></div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    </body>
</html>
