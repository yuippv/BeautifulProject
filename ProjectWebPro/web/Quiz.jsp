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
        <title>Quiz Page</title>
    </head>
    <body>
        <h1>QUIZ</h1>
        <div>
        <c:forEach items="${ques}" var="q">
            ${q.question}
            <br>
            <c:forEach items="${q.choice}" var="c">
                ${c.choice1}
                ${c.choice2}
                ${c.choice3}
                ${c.choice4}
            </c:forEach>
        </c:forEach>
        </div>
    </body>
</html>
