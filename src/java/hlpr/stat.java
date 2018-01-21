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
public class stat {
    
    
    
  public  static String getState(String d) 
    {
    
        String s="";
        try
        {
         Class.forName("com.mysql.jdbc.Driver");
                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/site","root","root");
                            Statement st=con.createStatement();
                            String sql="Select * from state where stateId='"+d+"' ";
                            ResultSet rs=st.executeQuery(sql);
                            rs.next();
                            s=rs.getString(3);
                            
                            rs.close();
                            con.close();
                            st.close();
                            
        }catch(Exception e){System.out.println("Ërror:"+e.getMessage());}
        return s;
     }       
        
        
    
}
