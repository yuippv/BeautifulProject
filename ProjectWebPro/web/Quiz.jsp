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
            <c:forEach items="${ques}" var="q" varStatus="qvs">
                <div>${qvs.count}. ${q.question} </div>
                <c:forEach items="${q.choices}" var="c">
                    <input type="radio" value="${c.choiceId}"/>${c.choice1}
                    <br>
                    <input type="radio" value="${c.choiceId}"/>${c.choice2}
                    <br>
                    <input type="radio" value="${c.choiceId}"/>${c.choice3}
                    <br>
                    <input type="radio" value="${c.choiceId}"/>${c.choice4}
                    <br>
                </c:forEach>
            </c:forEach>




        </div>
    </body>
</html>
