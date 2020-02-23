<%-- 
    Document   : checkOut
    Created on : May 16, 2017, 1:36:17 PM
    Author     : Yjares
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
            table,td,tr{
                text-align: center;
            }
        </style>
    </head>
    <body>
        <%String z = (String) session.getAttribute("username");%>
        <form><br>
            <p style = "font-size: 50px; text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black; color: white; ">
                Honya Books<br><br>
            </p>

            <table align = center>
                <tr>
                    <td>
                        <span style = "font-size: 25px;"><b>Thank you for your purchase <%= z%></b></span><br>Please come again
                    </td>
                </tr>
                <tr>
                    <td>
                        <span style = "font-size: 25px;"><b>Goodbye</b></span><br>

                        Press the button to log out
                    </td>
                </tr>
            </table>
            <br><br>
            <% session.invalidate();%>
            <a href="index.html" class="btn btn-primary" role="button">Logout</a>
        </form>
    </body>
</html>

