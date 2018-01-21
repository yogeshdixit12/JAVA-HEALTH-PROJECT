/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Paitent;

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

/**
 *
 * @author Rowdy
 */
@WebServlet(name = "updateprofile", urlPatterns = {"/updateprofile"})
public class updateprofile extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       PrintWriter out = response.getWriter();
        
 HttpSession sess=request.getSession();  
 String t= sess.getAttribute("id").toString();
         String name = request.getParameter("name");
            String email=request.getParameter("email");
              String contact=request.getParameter("contact");
              String expert=request.getParameter("expert");
              String age=request.getParameter("age");
              String gen=request.getParameter("gen");
              
            String country=request.getParameter("country");
          
             String state=request.getParameter("state");
             String city=request.getParameter("city");
              
               String coment=request.getParameter("coment");
           
     
        try{        
                
            //String destination=request.getParameter("destination");

        Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/site","root","root");
       Statement st=con.createStatement();
        String sql="update patent set name='"+name+"',contact='"+contact+"',expert='"+expert+"',country='"+country+"',state='"+state+"',city='"+city+"',age='"+age+"',gen='"+gen+"',coment='"+coment+"',email='"+email+"' where id='"+t+"'";
       
        
             
              
  int p=st.executeUpdate(sql);
            
            if(p>0){
                    
            response.sendRedirect("http://localhost:8080/HealthProject/patent/pages/PatientMasterpage.jsp");
        }
                        con.close();
                        st.close();
                  
                  
                    
                    }catch(Exception e)
                    {
                      out.println(e.getMessage());
                    }
        }
    }