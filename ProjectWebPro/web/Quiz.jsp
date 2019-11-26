<%-- 
    Document   : Quiz
    Created on : Nov 19, 2019, 3:08:18 PM
    Author     : yypsx
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <title>Y2S Index</title>

        <!-- Bootstrap CSS CDN -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
        <!-- Our Custom CSS -->
        <link rel="stylesheet" href="css/style.css" >

        <!-- Font Awesome JS -->
        <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
        <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>
        <title>Quiz Page</title>
    </head>
    <body>
        <div class="container">
        <h1>QUIZ</h1>
            <c:forEach items="${ques}" var="q" varStatus="qvs">
                <div>${qvs.count}. ${q.question} </div>
                <c:forEach items="${q.choices}" var="c">
                    <input type="radio" value="${c.choiceId}" name="${qvs.count}"/>${c.choice1}
                    <br>
                    <input type="radio" value="${c.choiceId}" name="${qvs.count}"/>${c.choice2}
                    <br>
                    <input type="radio" value="${c.choiceId}" name="${qvs.count}"/>${c.choice3}
                    <br>
                    <input type="radio" value="${c.choiceId}" name="${qvs.count}"/>${c.choice4}
                    <br>
                </c:forEach>
            </c:forEach>
                <!--name = "choice"-->
        </div>
    </body>
</html>
