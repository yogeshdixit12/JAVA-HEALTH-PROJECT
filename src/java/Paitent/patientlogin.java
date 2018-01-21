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
import java.sql.ResultSet;
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
@WebServlet(name = "patientlogin", urlPatterns = {"/patientlogin"})
public class patientlogin extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

           
           String uname = request.getParameter("uname");
           
            String pass=request.getParameter("pass");
        
                
                
            //String destination=request.getParameter("destination");

          Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/site","root","root");
       Statement st=con.createStatement();
     
       String sql="Select * from patent where id='"+uname+"' and pass='"+pass+"'";
           
            ResultSet rs=st.executeQuery(sql);
            rs.next();
            if(rs.getRow()>0)
                
          {
            
          Class.forName("com.mysql.jdbc.Driver");
       Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/site","root","root");
       Statement stt=con.createStatement();
     
       String sqll="Select * from auth where id='"+"1"+"'";
           
            ResultSet rss=stt.executeQuery(sqll);
              rss.next();
              if(rss.getString(2).equals("Active")){
             
                HttpSession ses=request.getSession();
              ses.setAttribute("id",rs.getString(1));
              if(rs.getString("status").equals("Active"))
              {
           
                  response.sendRedirect("http://localhost:8080/HealthProject/patent/pages/PatientMasterpage.jsp?msglogin=You Have Login Successfully");
              }
              else
              {
              response.sendRedirect("Mainpage.jsp?msglogin=Invalid Username And Password");
              }
              
              
              
              }else{
              
              response.sendRedirect("Mainpage.jsp?msglogin=Invalid Username And Password");
              }
              conn.close();
              stt.close();
              
              // request.getRequestDispatcher("Appcore").include(request, response); 
            
              response.sendRedirect("http://localhost:8080/HealthProject/patent/pages/PatientMasterpage.jsp?msglogin=You Have Login Successfully");
            }else{
              response.sendRedirect("Mainpage.jsp?msglogin=Invalid Username And Password");
            }
                
                    }
        
      
        catch(Exception e)
                    {
                    System.out.println(e.getMessage());
                    }
        }
    }
