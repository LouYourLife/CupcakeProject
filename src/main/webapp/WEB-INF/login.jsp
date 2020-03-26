<%-- 
    Document   : index
    Created on : Aug 22, 2017, 2:01:06 PM
    Author     : kasper
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="../Includes/Header2.inc"%>
<br>
<div class="container bg-light rounded shadow" align="center">
    <br>
    <h1 align="center">Login for at betale for dine CupCakes</h1>
    <br>
    <div align="center" class="row">

                <div class="col">
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
                </div>

                <div class="col">
                <h2 align="center">Register</h2>
                <form name="register" action="FrontController" method="POST">
                    <input type="hidden" name="taget" value="register">
                    <div class="form-group">
                        <input type="email" name="email" class="form-control"  value="email">
                    </div>
                    <div class="form-group">
                        <input type="password" name="password1" class="form-control" value="password">
                    </div>
                    <div class="form-group">

                        <input type="password" name="password2" class="form-control" value="password">
                    </div>


                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
                </div>

    </div>
</div>


<c:if test = "${requestScope.error!= null}" >

<h2>Error ! </h2>
${requestScope.error}

</c:if>

<br>
<p align="center">${sessionScope.email}</p>
<form align="center" name="logout" action="FrontController" method="POST">
    <input type="hidden" name="taget" value="logout">
    <input type="submit" value="Logout" class="btn btn-outline-light" style="color:White">
</form>
</div>
<%@include file="../Includes/Footer.inc"%>
