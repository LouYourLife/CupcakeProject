<%--Author: Vibeke--%>

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

<%-- TODO: Få siden til at ligne forsiden med farver og opbygning, se Matti's kode senere for sammenligning --%>

<%-- TODO: Man kan sætte beløb direkte ind på en kundes konto, så de får en regning for deres cupcakes --%>

        <form name="login" action="FrontController" method="POST">
            <input type="hidden" name="taget" value="customerPay">
            <label for="user">Kunde:</label>
            <br>
            <input type="text" id="user" name="user" value="">
            <br>
            <label for="pay">Beløb der skal betales:</label>
            <br>
            <input type="text" id="pay" name="pay" value="">
            <br><br>
            <input type="submit" value="Submit">
        </form>

        ${requestScope.addAmMes}

        <%-- En knap som viser ordrerliste og kundeliste --%>
        <h2>Ordrerliste:</h2>
        Her vises listen

        <form name="login" action="FrontController" method="POST">
            <input type="hidden" name="taget" value="empList">
            <input type="submit" value="Gå til ordreliste">
        </form>

    </body>
</html>
