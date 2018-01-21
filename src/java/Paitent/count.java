/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Paitent;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;


public class count {
     public static int getcount(String exid,String datee)
    {
         int id=0;
                           
         try
         {    
                            
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/site","root","root");
                            Statement st=con.createStatement();
                            String sql="Select count(Patid) from appointmentt where appdate='"+datee+"' and expid='"+exid+"'";
                            
                            ResultSet rs=st.executeQuery(sql);
                            rs.next();
                             id=rs.getInt(1)+1;
                            
                            
                          
                            rs.close();
                            con.close();
                            st.close();
                            
                            }catch(Exception e){}
         return id;
    }
}
