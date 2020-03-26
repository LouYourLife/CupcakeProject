<%--Author: Vibeke--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<%@include file="../Includes/Header2.inc"%>
<br>

<div class="container bg-light rounded shadow" align="center">

<div align="center">
    <table>
        <tr>
            <td valign="top">
                <h2>Liste over kunder:</h2>

                <c:forEach var="element" items="${requestScope.users}">

                    ${element}
                    <br>
                    <br>

                </c:forEach>
            </td>
            <td valign="top">
                <div class="vl"></div>
            </td>
            <td valign="top">
                <h2>Liste over ordrer:</h2>

                <c:forEach var="element2" items="${requestScope.orders}">

                    ${element2}
                    <br>
                    <br>

                </c:forEach>
            </td>
        </tr>
    </table>
</div>

<%--Som administrator kan jeg se alle kunder i systemet og deres ordrer, sådan at jeg kan følge op på ordrer og holde styr på mine kunder.--%>
<%--<h2>Liste over kunder:</h2>

<c:forEach var="element" items="${requestScope.users}">

    ${element}
    <br>

</c:forEach>--%>

<%--<div class="vl"></div>--%>

<%--Som administrator kan jeg se alle ordrer i systemet, så jeg kan se hvad der er blevet bestilt.--%>
<%--<h2>Liste over ordrer:</h2>

<c:forEach var="element2" items="${requestScope.orders}">

    ${element2}
    <br>
    <br>

</c:forEach>--%>


<form name="login" action="FrontController" method="POST">
    <input type="hidden" name="taget" value="employee">
    <%--    <input type="submit" value="Gå tilbage">--%>
    <button type="submit" class="btn btn-primary">Gå tilbage</button>
</form>
    <br>
</div>
<br>

<p align="center">${sessionScope.email}</p>
<form align="center" name="logout" action="FrontController" method="POST">
    <input type="hidden" name="taget" value="logout">
    <input type="submit" value="Logout" class="btn btn-outline-light" style="color:White">
</form>

</div>

<%@include file="../Includes/Footer.inc"%>
