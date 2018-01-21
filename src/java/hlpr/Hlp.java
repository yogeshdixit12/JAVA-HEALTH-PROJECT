/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hlpr;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author Rowdy
 */
import java.sql.*;
public class Hlp {

  public  static String getStatus(String c) 
    {
    
        String s="";
        try
        {
         Class.forName("com.mysql.jdbc.Driver");
                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/site","root","root");
                            Statement st=con.createStatement();
                            String sql="Select * from auth where id ='"+c+"' ";
                            ResultSet rs=st.executeQuery(sql);
                            rs.next();
                            s=rs.getString(4);
                            
                            rs.close();
                            con.close();
                            st.close();
                            System.out.println(s);
        }catch(Exception e){System.out.println("Ërror:"+e.getMessage());}
        return s;
        
     }      
  
  
   public  static String getStat(String d) 
    {
    
        String ss="";
        try
        {
         Class.forName("com.mysql.jdbc.Driver");
                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/site","root","root");
                            Statement st=con.createStatement();
                            String sql="Select * from auth where id ='"+d+"' ";
                            ResultSet rs=st.executeQuery(sql);
                            rs.next();
                            ss=rs.getString(5);
                            
                            rs.close();
                            con.close();
                            st.close();
                            System.out.println(ss);
        }catch(Exception e){System.out.println("Ërror:"+e.getMessage());}
        return ss;
        
     }      
   
    public  static String getLog(String dd) 
    {
    
        String sd="";
        try
        {
         Class.forName("com.mysql.jdbc.Driver");
                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/site","root","root");
                            Statement st=con.createStatement();
                            String sql="Select * from auth where id ='"+dd+"' ";
                            ResultSet rs=st.executeQuery(sql);
                            rs.next();
                            sd=rs.getString(3);
                            
                            rs.close();
                            con.close();
                            st.close();
                            System.out.println(sd);
        }catch(Exception e){System.out.println("Ërror:"+e.getMessage());}
        return sd;
        
     }      
     public  static String getLo(String ll) 
    {
    
        String jj="";
        try
        {
         Class.forName("com.mysql.jdbc.Driver");
                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/site","root","root");
                            Statement st=con.createStatement();
                            String sql="Select * from auth where id ='"+ll+"' ";
                            ResultSet rs=st.executeQuery(sql);
                            rs.next();
                            jj=rs.getString(2);
                            
                            rs.close();
                            con.close();
                            st.close();
                            System.out.println(jj);
        }catch(Exception e){System.out.println("Ërror:"+e.getMessage());}
        return jj;
        
     }      
  
  
}
