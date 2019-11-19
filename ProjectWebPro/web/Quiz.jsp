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
        
        <form action="Check" method="post">
            <c:forEach items="${Quiz}" var="q" varStatus="qvs">
                <a href="GetQuestion?questionid=${q.questionid}">
                    <h4>${q.question}</h4>
                </a>
<!--                <div class="row">
                    <div class="col">
                        <ol class="d">
                            <c:forEach items="${q.answers}" var="x" varStatus="vs">
                                <li>
                                    <input type="radio" value="${x.choiceid}" name="ans${qvs.count}"/>${x.answer}
                                </li>
                            </c:forEach>
                        </ol>
                    </div>
                    
                </div>-->
            </c:forEach>
        </form>

    </body>
</html>
