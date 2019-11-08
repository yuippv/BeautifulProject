<%-- 
    Document   : Login
    Created on : Nov 8, 2019, 6:33:28 PM
    Author     : Antoprise
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign in Page</title>
    </head>
    <body style="text-align: center">
        <h1>SIGN IN WITH EMAIL</h1>
        <form action="Signin" method="post">
        <h2>EMAIL ADDRESS</h2>
        <br>
        <input name="username" type="text" required value="${param.username}"/>
        <h2>PASSWORD</h2>
        <input name="password" type="text" required value="${param.password}"/>
        <br>
        <h4><input name="remember"type="checkbox" value="Remember>"/> Remember</h4>
        <br>
        <input type="submit" value="SIGN IN"/>
        </form>
    </body>
</html>

