
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
            <input type="submit" value="order" class="btn btn-primary btn-lg">
        </div>
    </div>

</form>

<div class="shadow p-3 mb-5 bg-white rounded">
<h2>Liste over dine ordrer:</h2>
<!-- DESIGN TODO ! Skal der være boks i indkøbskurv? -->


</table>
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


<br>
<form align="center" name="logout" action="FrontController" method="POST">
    <input type="hidden" name="taget" value="logout">
    <input type="submit" value= "Logout" class="btn btn-outline-dark">
</form>
    </div>
<%@include file="../Includes/Footer.inc"%>

