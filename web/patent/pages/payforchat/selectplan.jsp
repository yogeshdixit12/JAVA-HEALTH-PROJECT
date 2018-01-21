<%-- 
    Document   : selectplan
    Created on : Mar 23, 2017, 5:03:37 PM
    Author     : Rowdy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Chat Room Plan</title>
    </head>
    <body>
      <div class="form-group">
            <form action="http://localhost:8080/HealthProject/patent/pages/payforchat/payment.jsp">
                <br>
                <label>select Plans</label><br>
                                            <select class="form-control" name="plan" id="plan" >
                                                 <option value="0">Select Chat Plan......</option>
                                               
                                                        <option value="50">Plan 1 :7 Day Plan (50 Rupees)</option>
                                                         <option value="70">Plan 1 :2 Week Plan ( 70 Rupees)</option>
                                                          <option value="100">Plan 1 :3 Week Plan (100 Rupees)</option>
                                                           <option value="150">Plan 1 :1 Month Plan (150 Rupees)</option>
                                                            <option value="200">Plan 1 :3 Month Plan (200 Rupees)</option>
                                                             <option value="300">Plan 1 :6 Month Plan (300 Rupees)</option>
                         <option value="500">Plan 1 :1 Year Plan (500 Rupees)</option>
                         
                        </select>
                                            <br>
                         <button type="submit" class="btn btn-success">Proceed To Pay</button>
                       </form>
                        
                      
                       
  </div>                         
    </body>
</html>
