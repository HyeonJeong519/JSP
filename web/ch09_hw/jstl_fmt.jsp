<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<fmt:setLocale value='<%=request.getParameter("language")%>'></fmt:setLocale>
<fmt:bundle basename="ch09.com.bundle.myBundle">
<p><a href="?language=ko">Korean</a> | <a href="?language=en">English</a></p>
<p><fmt:message key="id"></fmt:message> : <input type="text" name="id"></p>
<p><fmt:message key="password"></fmt:message> : <input type="text" name="password"></p>
<p><input type="submit" value="<fmt:message key="button"/>"></p>
</fmt:bundle>
</body>
</html>
