<%-- 
    Document   : logIn
    Created on : May 16, 2017, 1:10:34 PM
    Author     : Yjares
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <title>Honya Books</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type = "text/css" href="css/bootstrap.css">
    <link rel="stylesheet" type = "text/css" href="css/bootstrap-theme.css">
    <style>           
        body{
            text-align: center;
            background-image: url(pics/bb.jpg); 
            font-family: Harrington; 
            color: black; 
            background-size: 100% 100%; 
            background-repeat: no-repeat; 
            background-attachment: fixed;
        }
        table,td{
            padding: 20px;
            background-color: rgba(211,207,221,200000);
            opacity: 0.9;
            border: 3px solid black;
            width: 75%;
            font-size: 20px;
        }
    </style>
</head>
<body>
    <form action = storeUser><br>
        <p style = "font-size: 50px; text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black; color: white; ">
            <br>Honya Books<br><br>
        </p>

        <br><div class="input-group col-xs-4 col-lg-offset-4">
            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
            <input id="email" type="text" class="form-control" name="userName" placeholder="Username" required>
        </div>
        <div class="input-group col-xs-4 col-lg-offset-4">
            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
            <input id="password" type="password" class="form-control" name="password" placeholder="Password" required>
        </div>

        <br><br>
        <button type = submit class="btn btn-primary">Log In</button>
    </form>
</body>
</html>