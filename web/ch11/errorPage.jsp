<%@ page errorPage="errorPage_error.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
name 파라미터 : <%=request.getParameter("name").toUpperCase()%>
</body>
</html>
