<%@ page isErrorPage="true"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>오류가 발생</p>
<p>에외:<%=exception%></p>
<p>toSring() : <%=exception.toString()%></p>
<p>getClass().getName() : <%=exception.getClass().getName()%></p>
<p>getMessage() : <%=exception.getMessage()%></p>
</body>
</html>
