<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="dsesigncss/return.css">
    
<title>Order Cards</title>
</head>
<body>
<div class="header">
    <%@include file="include/header.jsp" %>
</div>

<div class="container-fluid mt-5">
    <div class="row">
        <c:forEach var="cus" items="${customers}">
            <div class="col-12 mb-2"> <!-- Reduced space for each card -->
                <div class="card">
                    <!-- Order ID as header of each card -->
                    <div class="card-header">
                        Order ID: ${cus.id}
                    </div>
                    <div class="card-body">
                        <!-- Order Info Displayed in Rows -->
                        <div class="details">
                            <div><strong>Item Name:</strong> ${cus.name}</div>
                            <div><strong>Amount Currently paid:</strong> ${cus.price}</div>
                            <div><strong>Quantity:</strong> ${cus.quantity}</div>
                            <div><strong>Order Date:</strong> ${cus.orderDate}</div> <!-- Smaller font -->
                            <div><strong>Reason:</strong> ${cus.reason}</div>
                            <div class="small-text"><strong>Customer Email:</strong> ${cus.email}</div> <!-- Smaller font -->
                        </div>
                        

                        <!-- Actions (Update and Delete Buttons) -->
                        <div class="actions">
                            <!-- Update Button -->
                            <a href="updateor.jsp?id=${cus.id}&name=${cus.name}&price=${cus.price}&quantity=${cus.quantity}&orderDate=${cus.orderDate}&reason=${cus.reason}&email=${cus.email}" class="btn btn-primary">Update</a>
                            
                            <!-- Delete Button with confirmation -->
                            <form action="Deleteor" method="post" onsubmit="return confirmDelete();">
                                <input type="hidden" name="id" value="${cus.id}">
                                <button type="submit" class="btn btn-danger">Cancel Request</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>
<br>
<script>
function confirmDelete() {
    return confirm("Are you sure you want to delete this order?");
}
</script>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>

<%@include file="include/footer.jsp" %>
</body>
</html>
