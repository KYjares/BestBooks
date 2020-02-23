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
        <style>
            .caption{
                text-align: center; 
                color: black; 
                font-size: 14px; 
                padding-top:15px;
            }
        </style>
    </head>

    <body style = "background-image: url(pics/bb.jpg); font-family: Harrington; color: white; background-size: 100% 100%; background-repeat: no-repeat; background-attachment: fixed;">
        <form action = description.jsp>
            <div class = container-fluid>
                <nav class="navbar navbar-default">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="brochure.jsp">Honya Books</a>
                    </div>
                    <ul class="nav navbar-nav">
                        <li><a href="brochure.jsp">All Products</a></li> 
                        <li><a href="cart.jsp">Cart</a></li>
                        <li><a href="fiction.jsp">Fiction</a></li>
                        <li class="active"><a href="nonfiction.jsp">Nonfiction</a></li>
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
                    int product[] = {18, 22, 29, 35, 36, 38, 42};
                    int count = 0;
                    int j = 0;
                    int k = 5;
                %>
                <table cellspacing="30" align = "center" style = "border-collapse: separate; border-spacing: 10px">
                    <%
                        for (int i = 0; i < 2; i++) {
                    %>
                    <tr>
                        <%
                            if (i > 0) {
                                    k += 2;
                            }
                            while (j < k) {
                                String a = demBeans.getTitle2(product[count]);
                                j++;
                        %>
                        <td>
                            <button class="thumbnail" name = productChoice value = <%= product[count] + 1%> type = submit><img src="pics/<%=product[count] + 1%>b.jpg" alt="some_noods" style = "width: 220px; height: 320px;">
                                <div class="caption">
                                    <p><%= a%></p>
                                </div>
                            </button>                   
                        </td>
                        <%
                                count++;
                            }
                        %> 
                    </tr>
                    <%
                        }
                    %>  
                </table>
                <br>
                <br>
                <br>
                </form>
                </body>
                </html>