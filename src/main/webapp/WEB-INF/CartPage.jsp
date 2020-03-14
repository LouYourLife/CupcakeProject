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
        <th>Total pris</th>
    </tr>


    <h2>Liste over dine ordrer:</h2>
    <c:forEach var="element2" items="${requestScope.userOrders}">

        ${element2}
        <br>
        <br>

    </c:forEach>



    <form name="login" action="FrontController" method="POST">
        <input type="hidden" name="taget" value="customer">
        <input type="submit" value="Gå tilbage">
    </form>


  <!--  <tr>
        <td colspan="6" align="right">Total</td>
        <td>${total}</td>
    </tr>
-->
</table>
<br>
<a href="${pageContext.request.contextPath }/product">Fortsæt indkøb</a>
<button type="button" onclick="${pageContext.request.contextPath }/product"> Gå til betaling </button>

</body>
</html>
