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

/**
 *
 * @author Rowdy
 */
@WebServlet(name = "appprr", urlPatterns = {"/appprr"})
public class appprr extends HttpServlet {

   

   protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       PrintWriter out = response.getWriter();
       
           String name = request.getParameter("name");
         
             String status =request.getParameter("status");
             String coment=request.getParameter("coment");
            
        try{        
                
          
        Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/site","root","root");
       Statement st=con.createStatement();
        String sql="update report set status='"+status+"',coment='"+coment+"' where id='"+name+"'";
       
              
  int p=st.executeUpdate(sql);
            
            if(p>0){
                
         response.sendRedirect("http://localhost:8080/HealthProject/Expert/pages/ExpertMasterpage.jsp?msg=13");
        }
                        con.close();
                        st.close();
                  
                  
                    
                    }catch(Exception e)
                    {
                      out.println(e.getMessage());
                    }
        }
    }