/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hlpr;

import java.sql.*;
public class user 
{

  public  static String getUser(String c) 
    {
    
        String s="";
        try
        {
         Class.forName("com.mysql.jdbc.Driver");
                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/site","root","root");
                            Statement st=con.createStatement();
                            String sql="Select * from patent where id='"+c+"' ";
                            ResultSet rs=st.executeQuery(sql);
                            rs.next();
                            s=rs.getString(2);
                            
                            rs.close();
                            con.close();
                            st.close();
                            
        }catch(Exception e){System.out.println("Ërror:"+e.getMessage());}
        return s;
     }       
        
         public  static String getUsers(String cc) 
    {
    
        String ss="";
        try
        {
         Class.forName("com.mysql.jdbc.Driver");
                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/site","root","root");
                            Statement st=con.createStatement();
                            String sql="Select * from expert where id='"+cc+"' ";
                            ResultSet rs=st.executeQuery(sql);
                            rs.next();
                            ss=rs.getString(2);
                            
                            rs.close();
                            con.close();
                            st.close();
                            
        }catch(Exception e){System.out.println("Ërror:"+e.getMessage());}
        return ss;
     }       
        
        
        
    }
    
    

