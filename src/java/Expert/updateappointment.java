/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Expert;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "updateappointment", urlPatterns = {"/updateappointment"})
public class updateappointment extends HttpServlet {


   protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       PrintWriter out = response.getWriter();
       
           String patid = request.getParameter("patid");
          String id = request.getParameter("id");
        
          
             String apptime=request.getParameter("apptime");
             String appdate=request.getParameter("appdate");
             String status=request.getParameter("status");
              out.println(""+id+""+apptime+""+appdate+""+status+"");
             
     
        try{        
                
          
        Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/site","root","root");
       Statement st=con.createStatement();
        String sql="update appointmentt set apptime='"+apptime+"',appdate='"+appdate+"',status='"+status+"' where id='"+id+"'";
       
     
         
             
              
  int p=st.executeUpdate(sql);
            
            if(p>0){
                    
           response.sendRedirect("http://localhost:8080/HealthProject/Expert/pages/ExpertMasterpage.jsp?msg=2");
        }
                        con.close();
                        st.close();
                  
                  
                    
                    }catch(Exception e)
                    {
                      out.println(e.getMessage());
                    }
        }
    }