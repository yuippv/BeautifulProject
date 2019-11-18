<%-- 
    Document   : Quiz
    Created on : Nov 18, 2019, 6:08:23 PM
    Author     : Acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quiz</title>
    </head>
    <body>
        <h1>${quiz}</h1>
        
        <h2>${sessionScope.quiz.question}</h2>
    </body>
</html>