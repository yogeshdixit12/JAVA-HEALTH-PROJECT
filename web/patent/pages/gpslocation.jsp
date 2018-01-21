<%-- 
    Document   : gpslocation
    Created on : Mar 21, 2017, 11:38:19 AM
    Author     : Rowdy
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
   
<body>
  <%
       try 
 {
  Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/site","root","root");
       Statement st=con.createStatement();
        String sql="Select * from expert where id='"+request.getParameter("name")+"'";
            
            ResultSet rs=st.executeQuery(sql);
            rs.next();
            %>
    
     
<div id="map" style="width:100%;height:500px"></div>

<script>
function myMap() {
  var myCenter = new google.maps.LatLng(<%=rs.getString("lati")%>,<%=rs.getString("longi")%>);
  var mapCanvas = document.getElementById("map");
  var mapOptions = {center: myCenter, zoom: 5};
  var map = new google.maps.Map(mapCanvas, mapOptions);
  var marker = new google.maps.Marker({position:myCenter});
  marker.setMap(map);

  // Zoom to 9 when clicking on marker
  google.maps.event.addListener(marker,'click',function() {
    map.setZoom(9);
    map.setCenter(marker.getPosition());
  });
}
</script>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAWYDTnTEhPQmmhxVq7qPJjWSxW451Vsn0&callback=myMap"></script>
 <%
  rs.close();
  
 }
       catch(Exception e){out.print(e.getMessage());}
  
  %>

</body>
</html>
