<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href= "css/bootstrap.min.css">
<link rel="stylesheet" href= "dsesigncss/newform.css">

<meta charset="UTF-8">
<title>Insert title here</title>

</head>

<body>
 <div class="header">
        <%@include file="include/header.jsp" %>
    </div>  
<div class="container">
<h1>Return & Refund</h1>
<form method="post" action="Addcustomer" id="myForm" onsubmit="submitForm(event)">

<div class="mb-3">
  <label for="formGroupExampleInput" class="form-label">Order ID </label>
  <input type="text" class="form-control" id="formGroupExampleInput" name="id" pattern="OR-\d+" title="Order ID should be in the format 'OR-' followed by digits and must not exceed 100 characters" maxlength="100" required >
  <span class="error-message" id="orderIdError">Order ID should be in the format 'OR-' followed by digits .</span>
</div><br>
<div class="mb-3">
  <label for="formGroupExampleInput" class="form-label">Item Name </label>
  <input type="text" class="form-control" id="formGroupExampleInput" name="name" required>
</div><br>
<div class="mb-3">
  <label for="formGroupExampleInput" class="form-label">Amount Currently paid </label>
  <input type="text" class="form-control" id="formGroupExampleInput" name="price"   pattern="LKR\d+(\.\d{1,2})?" title="amount should be in the format 'LKR' followed by digits" required>
  <span class="error-message" >Please give the amount in LKR.</span>
</div><br>
<div class="mb-3">
  <label for="formGroupExampleInput" class="form-label">Quantity</label>
  <input type="text" class="form-control" id="formGroupExampleInput" name="quantity" required>
</div><br>
<div class="mb-3">
  <label for="formGroupExampleInput" class="form-label">Item Order Date</label>
  <input type="date" class="form-control" id="formGroupExampleInput" name="orderDate" required>
</div><br>
<div>
 <label for="type">Reason for Return:</label>
<select class="form-select" name="reason" aria-label="Default select example" required>
<option selected> select menu</option>
  <option value="Defective or Damaged Parts">Defective or Damaged Parts</option>
  <option value="Wrong Item Shipped">Wrong Item Shipped</option>
  <option value="Shipping Delays">Shipping Delays</option>
  <option value="Change Of Mind">Change Of Mind</option>
</select>
</div><br>
<div class="mb-3">
  <label for="formGroupExampleInput" class="form-label">Customer Email </label>
  <input type="email" class="form-control" id="formGroupExampleInput" name="email" placeholder="name@example.com" required>
</div><br>
<div class="col-12">
    <div class="form-check">
      <input class="form-check-input is-invalid" type="checkbox" value="" id="invalidCheck3" aria-describedby="invalidCheck3Feedback" required>
      <label class="form-check-label" for="invalidCheck3">
        Agree to terms and conditions
      </label>
      <div id="invalidCheck3Feedback" class="invalid-feedback">
        You must agree before submitting.
      </div>
    </div>
    </div>
    
<button type="submit" class="btn btn-primary">Submit</button>
</form>
</div><br><br>


<div class="popup" id="popup">
    <img src="image/newtick.png">
    <h2>Successfully!</h2>
    <p>Your details have been successfully submitted. Thanks</p>
    <button type="button" class="btn" onclick="closePopup()">OK</button>
</div>
<script src="js/script.js"></script>



<%@include file="include/footer.jsp" %>

</body>
</html>