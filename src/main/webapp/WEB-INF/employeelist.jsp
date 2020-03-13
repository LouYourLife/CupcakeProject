<%--Author: Vibeke--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Overview</title>
</head>
<body>

<h2>Liste over kunder:</h2>

<c:forEach var="element" items="${requestScope.test}">

    ${element}
    <br>

</c:forEach>

<h2>Liste over ordrer:</h2>

<form name="login" action="FrontController" method="POST">
    <input type="hidden" name="taget" value="employee">
    <input type="submit" value="Gå tilbage">
</form>

</body>
</html>
