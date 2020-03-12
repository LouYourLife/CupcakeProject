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

<%-- TODO: Få siden til at ligne forsiden med farver og opbygning, se Matti's kode senere for sammenligning --%>

<%-- TODO: Man kan sætte beløb direkte ind på en kundes konto, så de får en regning for deres cupcakes --%>

        <form action="/action_page.php">
            <label for="fname">Kunde:</label><br>
            <input type="text" id="fname" name="fname" value="email"><br>
            <label for="lname">Beløb der skal betales:</label><br>
            <input type="text" id="lname" name="lname" value="0.0"><br><br>
            <input type="submit" value="Send">
        </form>

        <%-- TODO: Lav en knap som viser ordrerliste som Cathrine laver, connect til det --%>
        f

    </body>
</html>
