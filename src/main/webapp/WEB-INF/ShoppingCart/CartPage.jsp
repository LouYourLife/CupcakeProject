<!--- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> -->
<html>
<head>
    <title>Cart Page</title>
</head>
<body>

<table cellpadding="2" cellspacing="2" border="0">
    <tr>
        <!--- <th>Fjern</th> -->
        <th>Topping</th>
        <th>Bund</th>
        <th>Pris</th>
        <th>Antal</th>
        <th>Muffin(s) pris</th>
    </tr>
    <c:set var="total" value="0"></c:set>
    <c:forEach var="item" items="${sessionScope.cart }">
        <c:set var="total" value="${total + item.product.price * item.quantity }"></c:set>
        <tr>
            <!---<td align="center">
                <a href="${pageContext.request.contextPath }/cart?action=remove&id=${item.product.id }"
                   onclick="return confirm('Are you sure?')">Remove</a>
            </td> -->
            <td>${item.product.name }</td>
            <td>${item.product.price }</td>
            <td>${item.quantity }</td>
            <td>${item.product.price * item.quantity }</td>
        </tr>
    </c:forEach>
    <tr>
        <td colspan="6" align="right">Total</td>
        <td>${total}</td>
    </tr>
</table>
<br>
<a href="${pageContext.request.contextPath }/product">Fortsæt indkøb</a>
<button type="button" onclick="${pageContext.request.contextPath }/product"> Gå til betaling </button>

</body>
</html>
