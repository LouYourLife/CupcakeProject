<%-- 
    Document   : index
    Created on : Aug 22, 2017, 2:01:06 PM
    Author     : kasper
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <title>MainPage</title>
    <meta charset="utf-8">
</head>
<body>
<div align="center">
    <img src="../Images/olskercupcakes.png" class="img-fluid">
</div>
<h1 align="center">Login for at betale for dine CupCakes</h1>

<div align="center">
    <table>
        <tr>
            <td>
                <h2 align="center">Login</h2>
                <form name="login" action="FrontController" method="POST">
                    <input type="hidden" name="taget" value="login">

                    <div class="form-group">
                        <input type="email" name="email" class="form-control" value="email">
                    </div>

                    <div class="form-group">
                        <input type="password" name="password" class="form-control" value="password">
                    </div>

                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
            </td>

            <td>
                <h2 align="center">Register</h2>
                <form name="register" action="FrontController" method="POST">
                    <input type="hidden" name="taget" value="register">
                    <div class="form-group">
                        <input type="text" name="email" class="form-control"  value="email">
                    </div>
                    <div class="form-group">
                        <input type="password" name="password1" class="form-control" value="password">
                    </div>
                    <div class="form-group">

                        <input type="password" name="password2" class="form-control" value="password">
                    </div>


                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
                </form>
            </td>
        </tr>
    </table>

</div>

<c:if test = "${requestScope.error!= null}" >

<h2>Error ! </h2>
${requestScope.error}

</c:if>


<footer class="page-footer font-small blue">

    <!-- Copyright -->
    <div class="footer-copyright text-center py-3">© 2020 Copyright: BSHProduction

    </div>
    <!-- Copyright -->

</footer>
</body>
</html>
