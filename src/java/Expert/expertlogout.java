/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Expert;

import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(name = "expertlogout", urlPatterns = {"/expertlogout"})
public class expertlogout extends HttpServlet {

     protected void doGet(HttpServletRequest request, HttpServletResponse response)  
                                throws ServletException, IOException {  
            response.setContentType("text/html");  
            PrintWriter out=response.getWriter();  
             
            HttpSession session=request.getSession();  
            session.invalidate();  
              response.sendRedirect("Mainpage.jsp?msglogout=You Have Logout Successfully");
           // out.print("You are successfully logged out!");  
              
            out.close();  
    }  
}