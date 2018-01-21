/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Paitent;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
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
@WebServlet(name = "vwrpt", urlPatterns = {"/vwrpt"})
public class vwrpt extends HttpServlet {
   private static final long serialVersionUID = 4593558495041379082L;

   
public void doGet(HttpServletRequest request,
HttpServletResponse response)
throws ServletException, IOException{
ResultSet rs;
InputStream sImage;

try{

String id=request.getParameter("msg");

Connection con = null;
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/site","root","root");
Statement st=con.createStatement();
String Sql="select images from report where id='"+id+"'" ;
 out.println("inside servlet Sql–>"+Sql);
rs=st.executeQuery(Sql);
if(rs.next()) {
byte[] bytearray = new byte[1048576];
int size=0;
sImage = rs.getBinaryStream(1);
response.reset();
response.setContentType("image/jpeg");
while((size=sImage.read(bytearray))!= -1 ){
response.getOutputStream().
write(bytearray,0,size);
}
}

} catch (Exception e){
e.printStackTrace();
}
}
}