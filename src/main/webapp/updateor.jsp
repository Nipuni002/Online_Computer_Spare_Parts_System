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

<%
String id = request.getParameter("id");
String name = request.getParameter("name");
String price = request.getParameter("price");
String quantity = request.getParameter("quantity");
String orderDate = request.getParameter("orderDate");
String reason = request.getParameter("reason");
String email = request.getParameter("email");

%>

<div class="header">
        <%@include file="include/header.jsp" %>
    </div>

<div class="container">
<h1 >Return & Refund</h1>
<form method="post" action="Updateorder" id="myForm" onsubmit="submitForm(event)">
<div class="mb-3">

  <label for="formGroupExampleInput" class="form-label">Order ID </label>
  <input type="text" class="form-control" id="formGroupExampleInput" name="id" value="<%=id%>"  readonly >
</div><br>
<div class="mb-3">
  <label for="formGroupExampleInput" class="form-label">Item Name </label>
  <input type="text" class="form-control" id="formGroupExampleInput" name="name" value="<%=name%>"  required>
</div><br>
<div class="mb-3">
  <label for="formGroupExampleInput" class="form-label">Amount Currently paid </label>
  <input type="text" class="form-control" id="formGroupExampleInput" name="price"  value="<%=price%>" pattern="LKR\d+(\.\d{1,2})?" title="Amount should be in the format 'LKR' followed by digits" required>
  <span class="error-message" >Please give the amount in LKR.</span>
</div><br>
<div class="mb-3">
  <label for="formGroupExampleInput" class="form-label">Quantity</label>
  <input type="text" class="form-control" id="formGroupExampleInput" name="quantity" value="<%=quantity%>" required>
</div><br>
<div class="mb-3">
  <label for="formGroupExampleInput" class="form-label">Item Order Date</label>
  <input type="date" class="form-control" id="formGroupExampleInput" name="orderDate" value="<%=orderDate%>" required>
</div><br>
  
<div>
 <label for="type">Reason for Return:</label>
<select class="form-select" name="reason" aria-label="Default select example" required>
  <option value="" <%= reason == null || reason.equals("") ? "selected" : "" %>>Select a Reason</option>
  <option value="Defective or Damaged Parts" <%= "Defective or Damaged Parts".equals(reason) ? "selected" : "" %>>Defective or Damaged Parts</option>
  <option value="Wrong Item Shipped" <%= "Wrong Item Shipped".equals(reason) ? "selected" : "" %>>Wrong Item Shipped</option>
  <option value="Shipping Delays" <%= "Shipping Delays".equals(reason) ? "selected" : "" %>>Shipping Delays</option>
  <option value="Change Of Mind" <%= "Change Of Mind".equals(reason) ? "selected" : "" %>>Change Of Mind</option>
</select>
</div><br>

<div class="mb-3">
  <label for="formGroupExampleInput" class="form-label">Customer Email</label>
  <input type="email" class="form-control" id="formGroupExampleInput" name="email" value="<%=email%>"required>
</div><br>

<button type="submit" class="btn btn-primary">Update</button>
<a href="GetAllrefund"><button type="button" class="btn btn-primary">Cancel</button></a>
 
</form>
</div> <br><br>

<div class="popup" id="popup">
    <img src="image/tick.jpg">
    <h2>Successfully!</h2>
    <p>Your details have been successfully Updated.</p>
    <button type="button" class="btn" onclick="closePopup()">OK</button>
</div>
<script src="js/script.js"></script>

<%@include file="include/footer.jsp" %>
</body>
</html>