<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href= "css/bootstrap.min.css">
<link rel="stylesheet" href= "dsesigncss/newstyle.css">


<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <div class="header">
        <%@include file="include/header.jsp" %>
    </div>  
 <div class="container">
    <input type="radio" name="dot" id="one">
    <input type="radio" name="dot" id="two">
    <div class="main-card">
      <div class="cards">
        <div class="card">
         <div class="content">
           <div class="img">
            <img src="image/formi.png">
           </div>
           <div class="details">
             <div class="name">Return & Refund Request Form</div>
           <a href="form.jsp"><button type="button" class="btn btn-outline-primary">Click</button></a> 
           </div>
         </div>
        </div>
        <div class="card">
         <div class="content">
           <div class="img">
            <img src="image/status.png">
           </div>
           <div class="details">
             <div class="name">Return & Refund Request Status</div>
             <a href="GetAllrefund"><button type="button" class="btn btn-outline-primary">Click</button></a> 
           </div>
         </div>
        </div>
        <div class="card">
         <div class="content">
           <div class="img">
            <img src="image/policy.png">
           </div>
           <div class="details">
             <div class="name">Return & Refund Policy</div>
            <a href="Policy.jsp"><button type="button" class="btn btn-outline-primary">Click</button></a>
           </div>
         </div>
        </div>
      </div>
      </div>
    </div><br> 
    
    <%@include file="include/footer.jsp" %>
</body>
</html>