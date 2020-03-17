<%-- 
    Document   : customerpage
    Created on : Aug 22, 2017, 2:33:37 PM
    Author     : kasper
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

    <%@include file="../Includes/Header2.inc"%>


        <h1>Hello ${sessionScope.email} </h1>


        <h2>Ordrerliste:</h2>
        Her vises listen

        <form name="login" action="FrontController" method="POST">
            <input type="hidden" name="taget" value="seeOrders">
            <input type="submit" value="Gå til ordreliste">
        </form>




        You are now logged in as a customer of our wonderful site.

    <br>
        <form name="logout" action="FrontController" method="POST">
            <input type="hidden" name="taget" value="logout">
            <input type="submit" value= "Logout">
        </form>
    <%@include file="../Includes/Footer.inc"%>
