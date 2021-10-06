<%-- 
    Document   : jspexample2
    Created on : 6 Oct 2021, 11:05:22
    Author     : hakeem
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
// any valid java code can go between the escape sequences

// here we are looking for the userName value in the web request which called this page
    String name = request.getParameter("userName");

%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>JSP Form Examples!</h1>
        It is good to meet you <%= name %>
        
        
        <!-- get uses url encoded parameters (Wont Refreshes Page)-->
        <form action="./jspexample2.jsp" method="get">
            <p>username: <input type="text" name="userName" value=""></p>
            <button type="submit"> Add Name with GET </button>
        </form>
        
        <!-- post avoids url encoded parameters (Refreshes Page)-->
        <form action="./jspexample2.jsp" method="post">
            <!-- here we are pre filling the value with the name variable -->
            <p>user name <input type="text" name="userName" value=""></p>
            <button type="submit" >add name using POST</button>
        </form>
    </body>
</html>
