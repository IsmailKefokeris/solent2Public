<%-- 
    Document   : checkcard
    Created on : 28 Jul 2021, 17:13:43
    Author     : cgallen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="solent.ac.uk.ood.examples.cardcheck.CardValidationResult" %>
<%@ page import="solent.ac.uk.ood.examples.cardcheck.RegexCardValidator" %>

<%
    String creditcardno = request.getParameter("creditcardno");
    String output = "";
    if (creditcardno == null){
        output = "Submit your Card Number";
    }else{
        CardValidationResult result = RegexCardValidator.isValid(creditcardno);

        if(result.isValid()){
            output = "This is a valid Card Number";
        }else{
            output = "This is an invalid Card Number";
        }
    }
    

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <center>
            <h1>Check Credit Card</h1>

            <p> You can test with the following card numbers
                <BR><p>VISA  4444444444444448</p>
                <p>MASTERCARD 5500005555555559</p>
                <p>AMEX 371449635398431</p>
                <p>DINERS 36438936438936</p>
                <p>DISCOVER 6011016011016011</p>
                <p>JCB 3566003566003566</p>
            </p>

            <form>
                <label for="creditcardno">Credit Card number:</label>
                <input type="number" id="creditcardno" name="creditcardno">
                <input type="submit" value="Submit">
            </form>
            <p> <%= output %> </p>
        </center>
    </body>
</html>
