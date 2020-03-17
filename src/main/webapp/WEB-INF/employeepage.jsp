<%--Author: Vibeke--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
<%--        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">--%>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <meta charset="utf-8">
        <title>Employee home page</title>
    </head>
    <body>
    <div align="center">
        <img src="src/main/webapp/WEB-INF/olskercupcakes.png" class="img-fluid"/>
    </div>


        <h1 align="center">Hello ${sessionScope.email} </h1>

        <p align="center">You are now logged in as an EMPLOYEE of our wonderful site.</p>


<%-- TODO: Få siden til at ligne forsiden med farver og opbygning, se Matti's kode senere for sammenligning --%>

<%-- TODO: Man kan sætte beløb direkte ind på en kundes konto, så de får en regning for deres cupcakes --%>

    <div style="text-align: center;display: block">
        <h2 align="center">Indsæt beløb på kundens konto:</h2>
        <form name="login" style="display: inline-block; margin-left: auto; margin-right: auto; text-align: left" action="FrontController" method="POST">
            <input type="hidden" name="taget" value="customerPay">

            <div class="form-group">
                <input type="text" name="user" class="form-control" value="email">
            </div>

            <div class="form-group">
                <input type="text" name="pay" class="form-control" value="0.0">
            </div>

            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>

        ${requestScope.addAmMes}

    <br>
    <br>
    <br>

        <%-- En knap som viser ordrerliste og kundeliste --%>
        <h2 align="center">Ordrerliste:</h2>

    <div style="text-align: center;display: block">
        <form name="login" style="display: inline-block; margin-left: auto; margin-right: auto; text-align: left" action="FrontController" method="POST">
            <input type="hidden" name="taget" value="empList">
            <button type="submit" class="btn btn-primary">Gå til ordreliste</button>
        </form>
    </div>
<br>

    <h2 align="center">Slet ordre</h2>

    <form name="deleteOrder" action="FrontController" align="center">
        <input type="hidden" name="taget" value="adminDelete">
        <label for="deleteTekst">Ordre der skal slettes:</label><br>
        <input type="text" id="deleteTekst" name="deleteID"  value="Indtast orderens ID"><br>
        <br>
        <input type="submit" value="Slet">
    </form>

    <br>
    <br>
    <br>


    <form name="logout" action="FrontController" method="POST">
        <input type="hidden" name="taget" value="logout">
        <input type="submit" value= "Logout">
    </form>

    </body>
</html>
