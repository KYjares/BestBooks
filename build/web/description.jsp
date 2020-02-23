<%@page import="com.logic.function.demBeans"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id = "demBeans" scope= "session" type = "com.logic.function.demBeans" class = "com.logic.function.demBeans" />
<!DOCTYPE html>
<html>
    <head>
        <title>Honya Books</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type = "text/css" href="css/bootstrap.css">
        <link rel="stylesheet" type = "text/css" href="css/bootstrap-theme.css">

    </head>
    <body style = "background-image: url(pics/bb.jpg); font-family: Harrington; background-size: 100% 100%; background-repeat: no-repeat; background-attachment: fixed;">
        <nav class="navbar navbar-default">
            <div class="navbar-header">
                <a class="navbar-brand" href="brochure.jsp">Honya Books</a>
            </div>
            <ul class="nav navbar-nav">
                        <li><a href="brochure.jsp">All Products</a></li> 
                        <li><a href="cart.jsp">Cart</a></li>
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
            int a = Integer.parseInt(request.getParameter("productChoice"));

            String b = demBeans.getTitle2(a - 1);
            String c = demBeans.getPrice2(a - 1);
            String d = demBeans.getDetail(a - 1);
            String e = demBeans.getDesc(a - 1);
            String f = demBeans.getAuthor(a - 1);
        %>   
        <form style = "padding-top: 45px;" action = productChoice>
            <div class="container">
                <div class="row">
                    <div class="col-lg-2">
                        <img src="pics/<%= a%>b.jpg" alt="some_noods" style = "width: 250px; height: 350px;">
                    </div>
                    <div class="col-lg-6 col-lg-offset-1">
                        <div class="panel-group">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3>
                                        <%= b%> by <%= f%>
                                    </h3>
                                    <h4>
                                        <%= d%>
                                    </h4>
                                </div>
                                <div class="panel-body">
                                    <p>
                                        <%= e%>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3" style = "text-align: center;">
                        <div class="panel-group">
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <p style = "font-size: 25px;">
                                        Price: $<%= c%><br><br>
                                        Amount(1-5):
                                    </p>
                                    <input type = number min = 1 max = 5 name = "numOfBooks" required><br><br><br>
                                    <button name ="productChoice2" class="btn btn-primary" value = "<%= a %>" role="button">Buy Now</button>
                                    <br><br><br>
                                    <a href="brochure.jsp" class="btn btn-primary" role="button">Back</a>
                                     <br>
                                </div>
                            </div>
                        </div>     
                    </div>
                </div>
            </div>
        </form>
    </body>
</html>
