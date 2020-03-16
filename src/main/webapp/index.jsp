<%--
  Created by IntelliJ IDEA.
  User: matti
  Date: 3/12/2020
  Time: 10:12 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="Includes/Header.inc"%>

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
                        <a class="nav-link" href="#">Ordrer<span class="sr-only">(current)</span></a>
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


    <form name="login" action="FrontController" method="POST">
        <input type="hidden" name="taget" value="loginpage">
        <input type="submit" value="Gå til loginside">
    </form>

    <form name="order" action="FrontController" method="POST">
        <input type="hidden" name="taget" value="login">
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

</div>
<br>
<form name="logout" action="FrontController" method="POST">
    <input type="hidden" name="taget" value="logout">
    <input type="submit" value= "Logout">
</form>
<br><br><br><br>
<footer class="page-footer font-small blue">

    <!-- Copyright -->
    <div class="footer-copyright text-center py-3">© 2020 Copyright: BSHProduction

    </div>
    <!-- Copyright -->

</footer>
</body>
</html>