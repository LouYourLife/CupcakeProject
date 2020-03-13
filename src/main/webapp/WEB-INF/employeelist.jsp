<%--Author: Vibeke--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Overview</title>
</head>
<body>


<%--Som administrator kan jeg se alle kunder i systemet og deres ordrer, sådan at jeg kan følge op på ordrer og holde styr på mine kunder.--%>
<h2>Liste over kunder:</h2>

<c:forEach var="element" items="${requestScope.users}">

    ${element}
    <br>

</c:forEach>


<%--Som administrator kan jeg se alle ordrer i systemet, så jeg kan se hvad der er blevet bestilt.--%>
<h2>Liste over ordrer:</h2>

<c:forEach var="element2" items="${requestScope.orders}">

    ${element2}
    <br>
    <br>

</c:forEach>


<form name="login" action="FrontController" method="POST">
    <input type="hidden" name="taget" value="employee">
    <input type="submit" value="Gå tilbage">
</form>

</body>
</html>
