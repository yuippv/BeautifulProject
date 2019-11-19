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
        <table border="1">
            <thead>
                <tr>
                    <th>Subject</th>
                    <th>Question</th>
                </tr>
            </thead>
            
            <tbody>
                <c:forEach items="${quiz}" var="q">
                    <tr>
                        <td>${q.subject}</td>
                        <td>${q.question}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>