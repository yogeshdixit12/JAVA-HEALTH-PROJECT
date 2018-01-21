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

/**
 *
 * @author Rowdy
 */
@WebServlet(name = "updaterevieww", urlPatterns = {"/updaterevieww"})
public class updaterevieww extends HttpServlet {
   protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       PrintWriter out = response.getWriter();
     String t = request.getParameter("idd");
           String name = request.getParameter("name");
            String topp=request.getParameter("topp");
             String expert=request.getParameter("expert");
              String coment=request.getParameter("coment");
          out.println(t);
            
     
        try{        
                
            //String destination=request.getParameter("destination");

        Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/site","root","root");
       Statement st=con.createStatement();
        String sql="update postreview set pname='"+name+"',topic='"+topp+"',cat='"+expert+"',coment='"+coment+"'where id='"+t+"'";
       
        
             
              
  int p=st.executeUpdate(sql);
            
            if(p>0){
                    
            response.sendRedirect("");
        }
                        con.close();
                        st.close();
                  
                  
                    
                    }catch(Exception e)
                    {
                      out.println(e.getMessage());
                    }
        }
    }