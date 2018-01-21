package hlpr;



//import com.sun.org.apache.bcel.internal.generic.RETURN;
import java.sql.*;
public class Helper 
{

  public  static String getCountry(String c) 
    {
    
        String s="";
        try
        {
         Class.forName("com.mysql.jdbc.Driver");
                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/site","root","root");
                            Statement st=con.createStatement();
                            String sql="Select * from country where CountryId='"+c+"' ";
                            ResultSet rs=st.executeQuery(sql);
                            rs.next();
                            s=rs.getString(2);
                            
                            rs.close();
                            con.close();
                            st.close();
                            
        }catch(Exception e){System.out.println("Ërror:"+e.getMessage());}
        return s;
     }       
  
  
    }
    
    

