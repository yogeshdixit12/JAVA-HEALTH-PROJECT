<%-- 
    Document   : payment
    Created on : 16 Feb, 2017, 12:51:18 PM
    Author     : Rowdy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          
  
  <link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css'>

      <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
  <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

<div class="container">
  <div id="Checkout" class="inline">
      <h1>Pay Invoice</h1>
      <div class="card-row">
          <span class="visa"></span>
          <span class="mastercard"></span>
          <span class="amex"></span>
          <span class="discover"></span>
      </div>
       <form role="form" action="http://localhost:8080/HealthProject/patent/pages/paymentrecipt.jsp">
                                   
          
     <%     // HttpSession sess=request.getSession();  
    //  String t= sess.getAttribute("id").toString();
        
//String expid=request.getParameter("expid");
       //  String patid=t;
    //        String country=request.getParameter("country");
         //    String state=request.getParameter("state");
          //    String city=request.getParameter("city");
          //    String exptype=request.getParameter("exp");
          //  String appdate=request.getParameter("date");
          //   String apptime=request.getParameter("time");
            //  String fee=request.getParameter("fee");
            
           //   String descr=request.getParameter("des");
          // String s[]=appdate.split("-");
                
          //   String aid=expid+exptype+""+(s[0]+""+s[1]+""+s[2]);
          //     out.println(patid+""+expid+""+exptype+""+appdate+""+apptime+""+fee+""+country+""+""+state+""+city);
       //   out.println();
          %>
          <input type="hidden" name="expid" value="<%=request.getParameter("expid")%>">
     
            <input type="hidden" name="country" value="<%=request.getParameter("country")%>">
             <input type="hidden" name="state" value="<%=request.getParameter("state")%>">
              <input type="hidden" name="city" value="<%=request.getParameter("city")%>">
               <input type="hidden" name="exp" value="<%=request.getParameter("exp")%>">
                <input type="hidden" name="date" value="<%=request.getParameter("date")%>">
                 <input type="hidden" name="time" value="<%=request.getParameter("time")%>">
                  <input type="hidden" name="fee" value="<%=request.getParameter("fee")%>">
                   <input type="hidden" name="des" value="<%=request.getParameter("des")%>">
                  
          <div class="form-group">
              <label for="PaymentAmount">Payment amount</label>
              <div class="amount-placeholder">
                 
                  <span><%=request.getParameter("fee")%></span>
              </div>
          </div>
              <div class="form-group">
              <label or="NameOnCard">Card Type</label>
              <select class="form-control" maxlength="255" name="type" id="type"><option value="Credit Card">Credit Card</option>
              <option value="Debit Card">Debit Card</option>
           </select>
              
              </div>
              
              
              
          <div class="form-group">
              <label or="NameOnCard">Name on card</label>
              <input id="cardname" name="cardname" class="form-control" type="text" maxlength="255"></input>
          </div>
          <div class="form-group">
              <label for="CreditCardNumber">Card number</label>
              <input id="cardno"  name="cardno"  class="null card-image form-control" type="text"></input>
          </div>
          <div class="expiry-date-group form-group">
              <label for="ExpiryDate">Expiry date</label>
              <input id="ExpiryDate" class="form-control" type="text" placeholder="MM / YY" maxlength="7"></input>
          </div>
          <div class="security-code-group form-group">
              <label for="SecurityCode">Security code</label>
              <div class="input-container" >
                  <input id="SecurityCode" class="form-control" type="text" ></input>
                  <i id="cvc" class="fa fa-question-circle"></i>
              </div>
              <div class="cvc-preview-container two-card hide">
                  <div class="amex-cvc-preview"></div>
                  <div class="visa-mc-dis-cvc-preview"></div>
              </div>
          </div>
          <div class="zip-code-group form-group">
              <label for="ZIPCode">ZIP/Postal code</label>
              <div class="input-container">
                  <input id="ZIPCode" class="form-control" type="text" maxlength="10"></input>
                  <a tabindex="0" role="button" data-toggle="popover" data-trigger="focus" data-placement="left" data-content="Enter the ZIP/Postal code for your credit card billing address."><i class="fa fa-question-circle"></i></a>
              </div>
          </div>
          <button id="PayButton" class="btn btn-block btn-success submit-button" type="submit">
              <span class="submit-button-lock"></span>
              <span class="align-middle">Pay :<%=request.getParameter("fee")%></span>
          </button>
      </form>
  </div>
</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js'></script>

    <script src="js/index.js"></script>

</body>
</html>
