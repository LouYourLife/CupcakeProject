<html>
<head>
<meta charset="utf-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <title>MainPage</title>

    <style>
        body {background-color: #3C1460;}
        </style>
</head>
<body>

<div class="container" align="center">
    <img src="Images/olskercupcakes.png" class="img-fluid">
        <div>
            <nav class="navbar navbar-expand-lg navbar-light bg-light justify-content-center rounded" style="background-color:#eee;">

                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-center" id="navbarNav">
                    <ul class="nav navbar-nav navbar-center justify-content-center">
                        <li class="nav-item">
                            <form name="login" action="FrontController" method="POST">
                                <input type="hidden" name="taget" value="kurv">
                                <button class="btn" type="submit"><span class="fas fa-shopping-basket"></span></button>
                            </form>
                        </li>
                        <li class="nav-item">
                            <form name="index" action="FrontController" method="POST">
                                <input type="hidden" name="taget" value="index">
                                <%--    <input type="submit" value="Gå tilbage">--%>
                                <button type="submit" class="btn">Til forsiden</button>
                            </form>

                        </li>
                    </ul>

                </div>
            </nav>
        </div>

