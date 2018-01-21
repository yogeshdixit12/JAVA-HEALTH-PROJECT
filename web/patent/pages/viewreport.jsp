<%-- 
    Document   : viewallappointment
    Created on : 20 Feb, 2017, 4:29:43 AM
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


  
  
  
  


</head>
<body>

            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header"> View Review</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
  <form action="http://localhost:8080/HealthProject/share">  
            <div class="row">
                <div class="col-lg-12">
                    
                    
                    <div>
                    <label>Select Doctor</label>        <select class="form-control" name="dctrid" id="dctrid"  >
            
                           <option value="null">Please Select Name.................</option>
                            <%
                            try
                            {    
                            
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/site","root","root");
                            Statement st=con.createStatement();
                            String sql="Select * from expert ";
                           
                            ResultSet rs=st.executeQuery(sql);
                            while(rs.next())
                            {%>
                            
                            <option value="<%=rs.getInt(1)%>"><%= rs.getString(1)+"   :"+rs.getString(2)%></option>
                          
                            <%}
                           
                            rs.close();
                            con.close();
                            st.close();
                            
                            }catch(Exception e){}
                            
                            %>
                        </select>  
                   
                    </div>
                        <br>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                        Report Status Page
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                          
                            
                            
                            
                                             <%
                                                 
                                                 
                                                 HttpSession sess=request.getSession();  
     String t= sess.getAttribute("id").toString();
       try 
 {
  Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/site","root","root");
       Statement st=con.createStatement();
        String sql="Select * from report where patid='"+t+"' ";
            
            ResultSet rs=st.executeQuery(sql);
            
            %>
                            <table width="100%" class="table table-striped table-bordered table-hover" id="epi">
                               <thead>
                                    <tr>
                                        <th>Id</th>
                                        <th>Problem</th>
                                        <th>Description</th>
                                    
                                       <th>Status</th>
                                        <th>Share</th>
                                        
                                        
                                       
                                       
           </tr>
                                </thead>
                                <tbody>
                                    
 <%
            int x=0;
     while(rs.next())
                    {
                        
                        %>
                        
     
 <tr class="odd gradeX">
    <th><%=rs.getInt("id")%></th>  
   <th><%=rs.getString("prblm")%></th>
   <th><%=rs.getString("descr")%></th>
  
   <th><%=rs.getString("status")%></th>
  
   <th><input type="checkbox" value="<%=rs.getInt("id")%>" name="reportid"></th>
 </tr>
                                    <%
                     }
            con.close();
                        st.close();
                    
                    
                    }catch(Exception e)
                    {
                 out.println(e.getMessage());
                    }
        %>
                                    </tr>
                                </tbody>
                            </table>
                            <!-- /.table-responsive -->
                           
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
   <button type="submit" class="btn btn-success">Share Report</button>
         </form> 
</body>
</html>