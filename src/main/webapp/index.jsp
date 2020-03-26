


<%--
  Created by IntelliJ IDEA.
  User: matti
  Date: 3/12/2020
  Time: 10:12 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="Includes/Header.inc"%>

<br>
<div class="container bg-light rounded shadow" align="center">
    <div align="center" class="row">


        <div class="col">

            <br>
            <br>
            <br>
            <br>
            <br>

            <h1 align="center">Velkommen ombord ${sessionScope.email}</h1>
            <h2 align="center">Øens bedste cupcakes kom og bestil her</h2>

            <br>
        </div>


        <div class="col">
            <!--carousel-->
            <div id="demo" class="carousel slide" data-ride="carousel">

                <!-- Indicators -->
                <ul class="carousel-indicators">
                    <li data-target="#demo" data-slide-to="0" class="active"></li>
                    <li data-target="#demo" data-slide-to="1"></li>
                    <li data-target="#demo" data-slide-to="2"></li>
                </ul>

                <!-- The slideshow -->
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="Images/Cupcakes1.png" alt="Cups1" width="500" height="467">
                    </div>
                    <div class="carousel-item">
                        <img src="Images/Cupcakes2.png" alt="Cups2" width="500" height="467">
                    </div>
                    <div class="carousel-item">
                        <img src="Images/Cupcakes3.png" alt="Cups3" width="500" height="467">
                    </div>
                </div>

                <!-- Left and right controls -->
                <a class="carousel-control-prev" href="#demo" data-slide="prev">
                    <span class="carousel-control-prev-icon"></span>
                </a>
                <a class="carousel-control-next" href="#demo" data-slide="next">
                    <span class="carousel-control-next-icon"></span>
                </a>

            </div>
            <!--carousel-->
        </div>


    </div>
</div>
<br>

<div align="center" class="row">

    <div class="col">
        <form name="order" action="FrontController" method="POST">
            <input type="hidden" name="taget" value="order">
            <div class="shadow p-3 mb-5 bg-light rounded">
                <h2 align="center">Bestil en cupcake</h2>
                <br>
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
                    <br>
                    <input type="submit" value="Bestil" class="btn btn-primary btn-lg">
                </div>
            </div>

        </form>
    </div>
</div>
</div>

<br>
<p align="center">${sessionScope.email}</p>
<form align="center" name="logout" action="FrontController" method="POST">
    <input type="hidden" name="taget" value="logout">
    <input type="submit" value="Logout" class="btn btn-outline-light" style="color:White">
</form>
<br><br><br><br>
<%@include file="Includes/Footer.inc"%>

