<%-- 
    Document   : expviewofreport
    Created on : Mar 22, 2017, 4:22:44 PM
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

  
 <script>
      
         $("button").click(function()
       {
      
      var t=$(this).val();
      var l=t.split("-");
  
        
        if(l[0]=="SSSearch")
      {
      
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
       
       else if(l[0]=="Approved")
      {
      
      // document.getElementById("ggl").innerHTML=$(this).val()+"";
       $.post("http://localhost:8080/HealthProject/Expert/pages/appprv.jsp",
    {
        name: l[1]
       
    },
   function(data, status){
    // alert("Data: " + data + "\nStatus: " + status);
   myVar = setTimeout(function(){ $("#appr").html(data+"");  }, 500);
       
       });
       }
    
      
     });
   
  </script>

</head>

<body>

            <div class="row">
                <div class="col-lg-12">
                   
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                   
                                    
 
                        
      <div class="panel panel-default">
                        <div class="panel-heading">
                         All Review You Posted
                        </div>
                       
                        <!-- /.panel-heading -->
                        <div class="panel-body">
            
                            <table width="100%" class="table table-striped table-bordered table-hover" id="epi">
                               <thead>
                                    <tr>
                                        <th>Id</th>
                                        <th>Problem</th>
                                        <th>Description</th>
                                        <th>View Report</th>
                                       <th>Status</th>
                                        <th>Action</th>
                                  
           </tr>
           <%
                           
                                             String s=request.getParameter("name");
                                             String ids[]=s.split(",");
       try 
 {
  Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/site","root","root");
       
       String row=s.substring(0,s.lastIndexOf(','));
        String sql="Select * from report where id=? ";
        PreparedStatement ps=con.prepareStatement(sql);
        
        
        for(int x=0;x<ids.length;x++)
        {        
           ps.setString(1, ids[x]);
            ResultSet rs=ps.executeQuery();
            
     while(rs.next())
                    {
                       
                        %>
                                </thead>
                                <tbody>
 <tr class="odd gradeX">
    <th><%=rs.getInt("id")%></th>  
   <th><%=rs.getString("prblm")%></th>
   <th><%=rs.getString("descr")%></th>
   <th><button value="<%="SSSearch-"+rs.getInt("id")  %>"data-toggle="modal" data-target="#expvew" ><img src="../../images/dtl.png"  height="25" width="25"></button></th>
    <th><%=rs.getString("status")%></th>
  
   <th><button value="<%="Approved-"+rs.getInt("id")  %>"data-toggle="modal" data-target="#app" ><img src="../../images/appr.jpg"  height="25" width="25"></button></th>
   
   
 
  
 </tr>
                                    <%
                     }
        }
     
            con.close();
                        ps.close();
                    
                    
                    }catch(Exception e)
                    {
                 System.out.println(e.getMessage());
                    }
        %>
                                  
                                </tbody>
                            </table>
                   
                        </div>
                      
                    </div>
                
                </div>
               
            </div>
  
</body>
</html>