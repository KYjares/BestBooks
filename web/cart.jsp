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
            table, td, th{
                text-align: center;
                padding: 10px;
                border-collapse: separate;
                border: 2px solid black;
                background-color: rgba(49.5,49.5,49.5,200000);
                opacity: 0.95
            }
            body{
                color: white;
                text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black;
            }
            th{
                background-color: rgba(255,255,255,200000);
            }

            td{
                background-color: rgba(169,169,169,200000);
            }
        </style>
    </head>
    <body style = "background-image: url(pics/bb.jpg); font-family: Harrington; background-size: 100% 100%; background-repeat: no-repeat; background-attachment: fixed;">
        <nav class="navbar navbar-default">
            <div class="navbar-header">
                <a class="navbar-brand" href="brochure.jsp">Honya Books</a>
            </div>
            <ul class="nav navbar-nav">
                <li><a href="brochure.jsp">All Products</a></li>
                <li class="active"><a href="cart.jsp">Cart</a></li> 
                <li><a href="fiction.jsp">Fiction</a></li>
                <li><a href="nonfiction.jsp">Nonfiction</a></li>
                <li><a href="action.jsp">Action</a></li>
                <li><a href="drama.jsp">Drama</a></li>
                <li><a href="fantasy.jsp">Fantasy</a></li>   
                <li><a href="kids.jsp">Kids</a></li>
                <li><a href="mystery.jsp">Mystery</a></li> 
                <li><a href="romance.jsp">Romance</a></li>
                <li><a href = #>Username : <%= session.getAttribute("username")%></a></li>
            </ul>
        </nav>
        <%
            String z = (String) session.getAttribute("count");
            int y = 0;
            if (z == null) {
                y = 0;
            } else {
                y = Integer.parseInt(z);
            }
        %>
        <form style = "padding-top: 45px;">
            <center>
                <table>
                    <tr>
                        <th>
                            Product
                        </th>
                        <th>
                            Amount
                        </th>
                        <th>
                            Price
                        </th>
                    </tr>

                    <% if (y >= 1) {
                            for (int i = 1; i <= y; i++) {%>
                    <tr>
                        <td>
                            <img src="pics/<%=session.getAttribute("value" + i)%>b.jpg" alt="some_noods" style = "width: 80px; height: 140px;"><br><%= (String) session.getAttribute("title" + i)%>
                        </td>
                        <td>
                            <%= (String) session.getAttribute("amount" + i)%>
                        </td>
                        <td>
                            <%= (String) session.getAttribute("price" + i)%>
                        </td>               
                    </tr>
                    <% }
                        }%>
                    <tr>
                        <td colspan="2">
                            Total Price:
                        </td>
                        <td>
                            <%= (String) session.getAttribute("total")%> 
                        </td>                                    
                    </tr>  
                </table>
                <br><br>
                <a href = "checkOut.jsp" class="btn btn-primary" value = "" role="button">Checkout</a>
                <a href="brochure.jsp" class="btn btn-primary" role="button">Back</a>
                <br><br>
            </center>
        </form>
    </body>
</html>