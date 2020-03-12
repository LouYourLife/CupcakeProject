<%--
  Created by IntelliJ IDEA.
  User: matti
  Date: 3/12/2020
  Time: 10:12 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <title>MainPage</title>
    <meta charset="utf-8">
</head>
<body>
<div align="center">
    <img src="olskercupcakes.png" class="img-fluid">
</div>
<div align="center">
    <div>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="nav navbar-nav navbar-center">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Ordrer <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Kunder</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Betal</a>
                    </li>

                </ul>
            </div>
        </nav>
    </div>

    <h1 align="center">Velkommen ombord</h1>
    <h2 align="center">Øens bedste cupcakes kom og bestil her</h2>

    <form name="Order" action="FrontController" method="POST">
        <input type="hidden" name="taget" value="Order">
        <div class="d-lg-table-row">
            <div class="col-auto my-1">
                <label class="mr-sm-2" for="inlineFormCustomSelect">Bund</label>
                <select class="custom-select mr-sm-2" id="inlineFormCustomSelect" name="bot">
                    <option selected>Choose...</option>
                    <option value="1">Chocolate</option>
                    <option value="2">Vanilla</option>
                    <option value="3">Nutmeg</option>
                    <option value="4">Pistacio</option>
                    <option value="5">Almond</option>
                </select>
            </div>
            <div class="col-auto my-1">
                <label class="mr-sm-2" for="inlineFormCustomSelect">Topping</label>
                <select class="custom-select mr-sm-2" id="inlineFormCustomSelect" name="top">
                    <option selected>Choose...</option>
                    <option value="1">Chocolate</option>
                    <option value="2">Blueberry</option>
                    <option value="3">Raspberry</option>
                    <option value="4">Crispy</option>
                    <option value="5">Strawberry</option>
                    <option value="6">Rum/Raisin</option>
                    <option value="7">Orange</option>
                    <option value="8">Lemon</option>
                    <option value="9">Blue cheese</option>
                </select>
            </div>
            <div class="col-auto my-1">
                <label class="mr-sm-2" for="inlineFormCustomSelect">Antal</label>
                <div class="form-group">
                    <label for="Antal"></label>

                    <!--                    Her kan man ikke skrive tekst-->
                    <input type="number" name= "amount" class="form-control" placeholder="Hvor mange" id="Antal">
                </div>
                <br><br>
                <input type="submit" value="Bestil" class="btn btn-primary">
            </div>
        </div>

    </form>
</div>

</body>
</html>