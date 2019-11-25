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
        
        <c:forEach items="${ques}" var="q">
            ${q.question}
        </c:forEach>

    </body>
</html>
