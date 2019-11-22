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
        
        <c:forEach items="${ques}" var="q" varStatus="qvs">
                        <div class="row" style="margin-top: 1.5em">
                            <div style="margin-right: 2em;font-family: 'Questrial', sans-serif;font-size: 22px">${qvs.count}. ${q.question} </div>
                            <div class="col">
                                <ol class="d">
                                    <c:forEach items="${q.choice}" var="x" varStatus="vs">
                                        <li>
                                            <input type="radio" value="${x.choiceid}"name="ans${qvs.count}"/>${x.choice1}
                                        </li>
                                    </c:forEach>
                                </ol>
                            </div>
                        </div>
                    </c:forEach>

        
<!--        <c:forEach items="${quiz}" var="q">
            ${q.question}
        </c:forEach>
        -->
        
        

<!--                                    <p>${lesson.lessonid}</p>
                                    <a href="GetLesson?lessonid=${lesson.lessonid}">
                                        <h6>${lesson.lessonid}</h6>
                                    </a>-->

    </body>
</html>
