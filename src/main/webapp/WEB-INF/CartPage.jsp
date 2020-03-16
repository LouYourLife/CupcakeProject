<!--- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> -->

<html>
<head>
    <title>Cart Page</title>
</head>
<body>
<%@include file="../Includes/Header2.inc"%>
<h1>Du er nu logget ind som ${sessionScope.email}</h1>
<h3>Bestil en cupcake : </h3>
<form name="order" action="FrontController" method="POST">
    <input type="hidden" name="taget" value="order">
    <div class="shadow p-3 mb-5 bg-white rounded">
        <div class="col-4">
            <label class="mr-sm-2" for="inlineFormCustomSelect">Bund</label>
            <select class="custom-select mr-sm-2" id="inlineFormCustomSelect" name="bot">

                <option selected>Choose...</option>
                <option value="Chocolate">Chocolate</option>
                <option value="Vanilla">Vanilla</option>
                <option value="Nutmeg">Nutmeg</option>
                <option value="Pistacio">Pistacio</option>
                <option value="Almond">Almond</option>
            </select>
        </div>
        <div class="col-4">
            <label class="mr-sm-2" for="inlineFormCustomSelect">Topping</label>
            <select class="custom-select mr-sm-2" id="inlineFormCustomSelect" name="top">

                <option selected>Choose...</option>
                <option value="Chocolate">Chocolate</option>
                <option value="Blueberry">Blueberry</option>
                <option value="Raspberry">Raspberry</option>
                <option value="Crispy">Crispy</option>
                <option value="Strawberry">Strawberry</option>
                <option value="Rum/Raisin">Rum/Raisin</option>
                <option value="Orange">Orange</option>
                <option value="Lemon">Lemon</option>
                <option value="Blue cheese">Blue cheese</option>
            </select>
        </div>
        <div class="col-4">
            <label class="mr-sm-2" for="inlineFormCustomSelect">Antal</label>
            <div class="form-group">
                <label for="Antal"></label>

                <!--                    Her kan man ikke skrive tekst-->
                <input type="number" name="amount" class="form-control" placeholder="Hvor mange" id="Antal">
            </div>
            <br><br>
            <input type="submit" value="order" class="btn btn-primary">
        </div>
    </div>

</form>

<h2>Liste over dine ordrer:</h2>
<!-- DESIGN TODO ! Skal der være boks i inkøbskurv -->

<table cellpadding="2" cellspacing="2" border = "0">
    <tr>
        <!--- <th>Fjern</th> -->
        <th>Ordernummer</th>
        <th>Topping</th>
        <th>Bund</th>
        <th>Antal</th>
        <th>Beløb</th>
    </tr>

    <br>

    <c:forEach var="item" items="${sessionScope.userOrders}">
        <c:set var="total" value="${item.sum}"> </c:set>
        <tr>
            <!-- TODO Lav så OrdrerID virker -->
            <td>${item.id}</td>
            <td>${item.top}</td>
            <td>${item.bot}</td>
            <td>${item.amount}</td>
            <td>${item.sum}</td>
        </tr>

    </c:forEach>
    <tr>
        <td colspan="6" align="right">Total</td>
        <td>{total}</td>
    </tr>

</table>
<br>


<form name="login" action="FrontController" method="POST">
    <input type="hidden" name="taget" value="customer">
    <input type="submit" value="Gå tilbage">
</form>

<br>
<form name="logout" action="FrontController" method="POST">
    <input type="hidden" name="taget" value="logout">
    <input type="submit" value= "Logout">
</form>
</body>
</html>
