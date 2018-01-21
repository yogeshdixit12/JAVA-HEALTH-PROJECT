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
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author Rowdy
 */
@WebServlet(name = "patientreg", urlPatterns = {"/patientreg"})
@MultipartConfig(maxFileSize = 1617721588)
public class patientreg extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
 out.println("hello");
 
           String name = request.getParameter("name");
            String email=request.getParameter("email");
            String pass=request.getParameter("pass");
             String contact=request.getParameter("contact");
              String expert=request.getParameter("expert");
              String age=request.getParameter("age");
              String gen=request.getParameter("gen");
              
            String country=request.getParameter("country");
          
             String state=request.getParameter("state");
             String city=request.getParameter("city");
               String fee = request.getParameter("fee");
               String coment=request.getParameter("coment");
           
              InputStream inputStream = null; // input stream of the upload file
         
        // obtains the upload file part in this multipart request
        Part filePart = request.getPart("images");
        if (filePart != null) {
            // prints out some information for debugging
           out.println(filePart.getName()+"<br>");
           out.println(filePart.getSize()+"<br>");
           out.println(filePart.getContentType()+"<br>");
             
            // obtains input stream of the upload file
            inputStream = filePart.getInputStream();
        }
         
        Connection conn = null; // connection to the database
        String message = null;  // message will be sent back to client
         
        
        try{        
                
            //String destination=request.getParameter("destination");

          Class.forName("com.mysql.jdbc.Driver");
        conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/site","root","root");
       
         String sql ="Insert into patent(name,pass,contact,expert,country,state,city,age,gen,coment,image,email,status,planstatus) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1,name);
           
            statement.setString(2,pass);
            statement.setString(3,contact);
            statement.setString(4,expert);
             statement.setString(5,country);
              statement.setString(6,state);
               statement.setString(7,city);
                statement.setString(8,age);
                statement.setString(9,gen);
                statement.setString(10,coment);
             if (inputStream != null) {
                // fetches input stream of the upload file for the blob column
                statement.setBlob(11, inputStream);
            }
              statement.setString(12,email);
               statement.setString(13,"Pending");
               statement.setString(14,"Pending");
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
                   
                   response.sendRedirect("http://localhost:8080/HealthProject/pay/payment.jsp?msg="+fee);
                    conn.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
         out.println(message);
        
        }
    }
}
