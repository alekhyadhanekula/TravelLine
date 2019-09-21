<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Modify Service</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>

<style> 

  form {
    width: 300px;
    margin: 0 auto;
}
</style>
<script>
function validateForm()
{
 var x = document.forms["myForm"]["name"].value;  
 if (x == "")
  {
   alert("please enter the name");
   return false;
 }
	var y = document.forms["myForm"]["cardno"].value;
	  
	  if (y == "")
	   {
	    alert("cardno must be filled");
	    return false;
    
	   }
var z = document.forms["myForm"]["cvv"].value;
	  
	  if (z == "")
	   {
	    alert("cvv must be filled");
	    return false;
    
	   }
	
	
 }
 </script>

<body>


<div class="container">
<h2>Make Payment</h2> 
  </br>
  <form class="form-inline" action="./ticketbookingsuccess.jsp" autocomplete="off" onsubmit="return validateForm()" method="post" name="myForm">
    <div class="form-group">
      <label for="name">Name On Card</label></br>
      <input type="text" class="form-control" id="name" placeholder="Enter name" name="name" requried size="20">&nbsp;&nbsp;&nbsp;
    </div></br></br>
    <div class="form-group">
      <label for="cardno">Card Number</label></br>
      <input type="text" class="form-control" id="cardno" placeholder="Enter number" name="cardno"  maxlength="16" pattern="\d{16}" title="please enter 16 digits number">&nbsp;
    </div>
    </br></br>
    <div class="form-group">
    <label for="expmonth">Expiry</label></br>
       <table cellpadding="0" cellspacing="0">
                <tr>
                    <td><select id="expmonth" name="expmonth">
                            <option value="" selected="selected">Month</option>
                            <option value="1" >January</option>                                
                            <option value="2">February</option>                             
                            <option value="3">March</option>                          
                            <option value="4">April</option>                          
                            <option value="5">May</option>                           
                            <option value="6">June</option>                           
                            <option value="7">July</option>                          
                            <option value="8">August</option>                            
                            <option value="9">September</option>                    
                            <option value="10">October</option>                             
                            <option value="11">November</option>                            
                            <option value="12">December</option>                            
                        </select></td>                        
                    <td width="20">&nbsp;</td>                        
                    <td><select id="exp_year" name="exp_year">
                      <option value="" selected="selected">Year</option>
                            <option value="2020">2020</option>                                                                                  
                            <option value="2021">2021</option>                           

                            <option value="2022">2022</option>                          

                            <option value="2023">2023</option>                            

                            <option value="2024">2024</option>                    

                            <option value="2025">2025</option>                             

                            <option value="2026">2026</option>                            

                            <option value="2027">2027</option>

                      		<option value="2028">2028</option>                            

                            <option value="2029">2029</option>
                            
                      <option value="2030">2030</option>
                        </select>                        
                    </td>                    
                </tr>                
            </table>            
    </div></br></br>
    <div class="form-group">
      <label for="cvv">CVV</label></br>
      <input type="text" class="form-control" id="cvv" placeholder="Enter CVV" name="cvv"  maxlength="3" pattern="\d{3}" title="please enter 3 digits number">&nbsp;&nbsp;
    </div>
    </br></br></br>
    <input type="hidden" name="doj" value="<%= request.getParameter("doj") %>" />
    <input type="hidden" name="service_no" value="<%= request.getParameter("service_no")%>">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <button type="submit" class="btn btn-default">Submit</button>
  </form>
</div>

</body>
</html>
    