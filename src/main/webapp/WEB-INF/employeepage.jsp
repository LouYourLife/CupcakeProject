<%-- 
    Document   : employeepage.jsp
    Created on : Aug 24, 2017, 6:31:57 AM
    Author     : kasper
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Employee home page</title>
    </head>
    <body>
        

        <h1>Hello ${sessionScope.email} </h1>



        You are now logged in as an EMPLOYEE of our wonderful site.

<%--    TODO: Få siden til at ligne forsiden med farver og opbygning, se Matti's kode senere for sammenligning --%>

<%--    TODO: Man kan sætte beløb direkte ind på en kundes konto, så de får en regning for deres cupcakes --%>

<%--    TODO: Lav en knap som viser ordrerliste som Cathrine laver, connect til det --%>

    </body>
</html>
