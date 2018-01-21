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

/**
 *
 * @author Rowdy
 */
@WebServlet(name = "expupdateprofile", urlPatterns = {"/expupdateprofile"})
public class expupdateprofile extends HttpServlet {

   protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       PrintWriter out = response.getWriter();
        
        HttpSession sess=request.getSession();  
      String t= sess.getAttribute("id").toString();
        out.println(t);
           String name = request.getParameter("name");
            String email=request.getParameter("email");
             String contact=request.getParameter("contact");
              String country=request.getParameter("country");
          
             String state=request.getParameter("state");
             String city=request.getParameter("city");
             String longi=request.getParameter("longi");
             String lati=request.getParameter("lati");
              String expert=request.getParameter("expert");
          
              String exp=request.getParameter("exp");
              
               String coment=request.getParameter("coment");
                out.println(name);
             
     
        try{        
                
            //String destination=request.getParameter("destination");

        Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/site","root","root");
       Statement st=con.createStatement();
        String sql="update expert set name='"+name+"',email='"+email+"',contact='"+contact+"',expert='"+expert+"',longi='"+longi+"',lati='"+lati+"',exp='"+exp+"',coment='"+coment+"',country='"+country+"',state='"+state+"',city='"+city+"'where id='"+t+"'";
       
        
             
              
  int p=st.executeUpdate(sql);
            
            if(p>0){
                    
            response.sendRedirect("http://localhost:8080/HealthProject/Expert/pages/ExpertMasterpage.jsp");
        }
                        con.close();
                        st.close();
                  
                  
                    
                    }catch(Exception e)
                    {
                      out.println(e.getMessage());
                    }
        }
    }