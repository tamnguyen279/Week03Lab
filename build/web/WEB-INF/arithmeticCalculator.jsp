<%-- 
    Document   : arithmeticCalculator
    Created on : 29-Jan-2023, 3:25:53 PM
    Author     : Tam Nguyen
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Arithmetic Calculator</title>
    </head>
    <body>
        <div>
            <h1>Arithmetic Calculator</h1>
        </div>
        <form method="post" action="arithmetic">
            <div>            
                First <input type="text" name="first" value="${first}"><br>
                Second <input type="text" name="second" value="${second}"><br>

                <input type="submit" name="calculation" value="+">
                <input type="submit" name="calculation" value="-">
                <input type="submit" name="calculation" value="*">
                <input type="submit" name="calculation" value="%">
                <br>
            </div>
        </form>
        <br>
        <div>
            Result: ${result}
        </div>
        <div>
            <a href="age">Age Calculator</a>
        </div>
    </body>
</html>