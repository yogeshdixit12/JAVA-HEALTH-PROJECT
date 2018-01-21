/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Paitent;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author Rowdy
 */
@WebServlet(name = "share", urlPatterns = {"/share"})
public class share extends HttpServlet {
 protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

  HttpSession sess=request.getSession();  
      String t= sess.getAttribute("id").toString();
      
           String dctrid = request.getParameter("dctrid");
         
            String reportid[]=request.getParameterValues("reportid");
            String rids="";
            for(String p:reportid)
                rids+=p+",";


        //    String report=""+s[0]+""+s[1]+""+s[2];
             
         
        Connection conn = null; // connection to the database
        String message = null;  // message will be sent back to client
         
        try{        
                
            //String destination=request.getParameter("destination");

          Class.forName("com.mysql.jdbc.Driver");
        conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/site","root","root");
       
         String sql ="Insert into shar(doctorid,patientid,reportid,shredate) values (?,?,?,CURDATE())";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1,dctrid);
           
            statement.setString(2,t);
            statement.setString(3,rids);
            
         
             
  int row = statement.executeUpdate();
            if (row > 0) {
                message = "File uploaded and saved into database";
            }
                
          //       response.sendRedirect("MainHome.jsp");
                    }catch (Exception ex) {
            message = "ERROR: " + ex.getMessage();
            ex.printStackTrace();
        } finally {
            if (conn != null) {
                // closes the database connection
                try {
                    conn.close();
                  response.sendRedirect("http://localhost:8080/HealthProject/patent/pages/PatientMasterpage.jsp?msg=7");
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
         out.println(message);
        
        }
    }
}
