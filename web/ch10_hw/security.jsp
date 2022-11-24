<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    if(request.isUserInRole("admin"))
        response.sendRedirect("success.jsp");
%>
</body>
</html>
