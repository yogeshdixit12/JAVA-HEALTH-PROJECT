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
import java.sql.PreparedStatement;
import java.sql.SQLException;
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
@WebServlet(name = "getappointment", urlPatterns = {"/getappointment"})
public class getappointment extends HttpServlet {

  protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        PrintWriter out = response.getWriter();
        
        HttpSession sess=request.getSession();  
      String t= sess.getAttribute("id").toString();
        
String expid=request.getParameter("expid");
         String patid=t;
            String country=request.getParameter("country");
             String state=request.getParameter("state");
              String city=request.getParameter("city");
              String exptype=request.getParameter("exp");
            String appdate=request.getParameter("date");
             String apptime=request.getParameter("time");
              String fee=request.getParameter("fee");
            
              String descr=request.getParameter("des");
           String s[]=appdate.split("-");
                
             String aid=expid+exptype+""+(s[0]+""+s[1]+""+s[2]);
               out.println(patid+""+expid+""+exptype+""+appdate+""+apptime+""+fee);
            Connection conn = null; // connection to the database
        String message = null;  // message will be sent back to client
         
        try{ 
          Class.forName("com.mysql.jdbc.Driver");
        conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/site","root","root");
         String sql ="Insert into appointmentt(expid,patid,country,state,city,exptype,appdate,apptime,fee,descr,aid) values (?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1,expid);
            statement.setString(2,patid);
            statement.setString(3,country);
      
            statement.setString(4,state);
             statement.setString(5,city);
              statement.setString(6,exptype);
               statement.setString(7,appdate);
              statement.setString(8,apptime);
             statement.setString(9,fee);
              statement.setString(10,descr);
               statement.setString(11,aid);
              
          
             
  int row = statement.executeUpdate();
          
           response.sendRedirect("successfully.jsp");
                    }catch (Exception ex) {
            message = "ERROR: " + ex.getMessage();
            ex.printStackTrace();
        } finally {
            if (conn != null) {
                // closes the database connection
                try {
                    conn.close();
              //    response.sendRedirect("index.jsp?msgg=You Registered Succesfully");
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
         out.println(message);
        
        }
    }
}
