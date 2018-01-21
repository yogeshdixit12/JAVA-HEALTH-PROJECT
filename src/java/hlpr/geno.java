/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hlpr;

import java.sql.*;

/**
 *
 * @author Rowdy
 */
public class geno {
    
    public static int getidno()
    {
        int ano=0;
      try
                    {
                    
                        Class.forName("com.mysql.jdbc.Driver");
                       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/site","root","root");
                    Statement st=con.createStatement();
                    String sql="Select MAX(id) from patent";
                    ResultSet rs=st.executeQuery(sql);
                    rs.next();
                    if(rs.getRow()>0)
                    {
                       ano=rs.getInt(1);
                    }
                    
                    }catch(Exception e){}
    return  ano;
    }
    
}
