<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>--------기본 로케일----------</p>
<fmt:setBundle basename="ch09.com.bundle.myBundle" var="resourceBundle"></fmt:setBundle>
<p>제목 : <fmt:message key="title" bundle="${resourceBundle}"></fmt:message></p>
<p><fmt:message key="username" var="userMsg" bundle="${resourceBundle}"></fmt:message>
이름 : ${userMsg}</p>
<fmt:message key="password" var="userPw" bundle="${resourceBundle}"></fmt:message>

<p>--------영문 로케일----------</p>
<fmt:setLocale value="en"></fmt:setLocale>
<fmt:setBundle basename="ch09.com.bundle.myBundle" var="resourceBundle"></fmt:setBundle>
<p>제목 : <fmt:message key="title" bundle="${resourceBundle}"></fmt:message></p>
<p>이름 : <fmt:message key="username" bundle="${resourceBundle}"></fmt:message></p>
<p>--------패스워드----------</p>
<p>패스워드 : <fmt:message key="password" bundle="${resourceBundle}"></fmt:message> </p>
<p>패스워드 : ${userPw}</p>
</body>
</html>
