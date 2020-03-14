<!--- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> -->
<html>
<head>
    <title>Cart Page</title>
</head>
<body>

<h2>Liste over dine ordrer:</h2>


<!-- DESIGN TODO ! Skal der være boks i inkøbskurv -->

<table cellpadding="2" cellspacing="2" border="1">
    <tr>
        <!--- <th>Fjern</th> -->
        <th>Ordernummer</th>
        <th>Topping</th>
        <th>Bund</th>
        <th>Antal</th>
        <th>Beløb</th>
    </tr>

    <br>
    <c:forEach var="item" items="${requestScope.userOrders}">
        <c:set var="total" value="${ item.sum }"> </c:set>
        <tr>
            <td>${item.id }</td>
            <td>${item.top }</td>
            <td>${item.bot }</td>
            <td>${item.amount }</td>
            <td>${item.sum}</td>
        </tr>

    </c:forEach>
    
    <tr>

        <td colspan="6" align="right">Total</td>
        <td>${total}</td>
    </tr>

</table>
<br>
<form name="login" action="FrontController" method="POST">
    <input type="hidden" name="taget" value="customer">
    <input type="submit" value="Gå tilbage">
</form>
</body>
</html>
