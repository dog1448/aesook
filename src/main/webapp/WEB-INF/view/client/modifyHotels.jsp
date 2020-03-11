<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: itbank
  Date: 2020-03-11
  Time: 오후 1:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach var="hotel" items="${hotels}">
    <c:out value="${hotel.hotelsInfo}"/>
    <c:out value="${hotel.hotelsIntroduce}"/>



</c:forEach>
</body>
</html>
