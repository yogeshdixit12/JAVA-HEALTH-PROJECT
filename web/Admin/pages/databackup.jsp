<%-- 
    Document   : databackup
    Created on : Mar 27, 2017, 12:10:29 PM
    Author     : Rowdy
--%>

<%@page import="java.util.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
           String date = new SimpleDateFormat("yyyy-mm-dd").format(new Date());
          
          String bath = "D:/backup" + "/backup"+date+".sql";
       Process p = null;
            try {
               
                Runtime runtime = Runtime.getRuntime();
                p = runtime.exec("C:/Program Files (x86)/MySQL/MySQL Server 5.0/bin/mysqldump.exe -uroot -proot --add-drop-database -B site -r"+bath);  
               //  p = runtime.exec("mysqldump -u root -proot site > /path/to/location/backup.sql");
               // p = runtime.exec("mysqldump -uroot -proot --add-drop-database -B root -r " + "filepath" + "Filename" + ".sql");
//change the dbpass and dbname with your dbpass and dbname
                 
                int processComplete = p.waitFor();
  out.println(processComplete);
                if (processComplete == 0) {
 
                    System.out.println("Backup created successfully!");
 
                } else {
                     System.out.println("Could not create the backup");
                }
 
 
            } catch (Exception e) {
                
                e.printStackTrace();
            }
       
       
       
       %>
    </body>
</html>
