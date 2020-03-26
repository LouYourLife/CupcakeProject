
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@include file="../Includes/Header2.inc"%>

<br>
<div class="container bg-light rounded shadow" align="center">

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
            <input type="submit" value="order" class="btn btn-primary btn-lg">
        </div>
    </div>

</form>
    <br>
</div>

<div class="shadow p-3 mb-5 bg-white rounded">

<br>
<div class="container">
    <h2>Liste over dine ordrer:</h2>
    <table class="table table-striped">
        <thead>
        <tr>
            <th>Ordrenummer</th>
            <th>Topping</th>
            <th>Bund</th>
            <th>Antal</th>
            <th>Beløb</th>
        </tr>
        </thead>
        <tbody>

        <c:forEach var="order" items="${sessionScope.userOrders}">
        <tr>
            <td>${order.id}</td>
            <td>${order.top}</td>
            <td>${order.bot}</td>
            <td>${order.amount}</td>
            <td>${order.sum}</td>
        </tr>

        </c:forEach>
        </tbody>
    </table>
</div>




    <c:if test = "${requestScope.errorDel!= null}" >

    <h2>Error ! </h2>
        ${requestScope.errorDel}
        <p>Order not found in your cart</p>

    </c:if>


<div style="text-align: center; display: block">
    <form name="deleteUserOrder" action="FrontController" align="center" style="display: inline-block; margin-left: auto; margin-right: auto; text-align: left">
        <input type="hidden" name="taget" value="deleteOrder">
        <label for="deleteTekst">Ordre du vil slette:</label><br>
        <input type="text" id="deleteTekst"  name="deleteIDU" value="Indtast ID"><br>
        <br>
        <%--        <input type="submit" value="Slet">--%>
        <button type="submit" class="btn btn-primary">Slet</button>
    </form>
</div>
</div>
    <br>
<p align="center">${sessionScope.email}</p>
<form align="center" name="logout" action="FrontController" method="POST">
    <input type="hidden" name="taget" value="logout">
    <input type="submit" value="Logout" class="btn btn-outline-light" style="color:White">
</form>
</div>
<%@include file="../Includes/Footer.inc"%>

