

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Age Calculator</title>
    </head>
    <body>
        <div>
            <h1>Age Calculator</h1>
        </div>
        <form method="post" action="age">
            <div>            
                Enter your age: <input type="text" name="age" value="${age}"><br>
                <input type="submit" value="Age next birthday">
            </div>
        </form>
        <div>
            ${message}
        </div>
        <div>
            <a href="arithmetic">Arithmetic Calculator</a>
        </div>
    </body>
</html>

