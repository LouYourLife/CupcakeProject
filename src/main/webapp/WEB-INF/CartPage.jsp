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
        <th>Ordernummer</th>
        <th>Topping</th>
        <th>Bund</th>
        <th>Antal</th>
        <th>Cupcake sum</th>
    </tr>

    <c:forEach var="element" items="${OrderMapper}">

        ${element}
        <br>
        <br>

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
