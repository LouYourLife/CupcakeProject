<%--Author: Vibeke--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <meta charset="utf-8">
    <title>Employee</title>

    <style>
        .vl {
            border-left: 6px solid black;
            height: 500px;
        }
    </style>
</head>
<body>
<%@include file="../Includes/Header2.inc"%>
<div align="center">
    <img src="src/main/webapp/WEB-INF/olskercupcakes.png" class="img-fluid"/>
</div>

<div align="center">
    <table>
        <tr>
            <td>
                <h2>Liste over kunder:</h2>

                <c:forEach var="element" items="${requestScope.users}">

                    ${element}
                    <br>
                    <br>

                </c:forEach>
            </td>
            <td>
                <div class="vl"></div>
            </td>
            <td>
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

</body>
</html>
