<%--
  Created by IntelliJ IDEA.
  User: hwanghyeonjeong
  Date: 2022/11/24
  Time: 11:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Cookie[] cookies = request.getCookies();

    for (int i = 0; i < cookies.length; i++) {
        cookies[i].setMaxAge(0);
        response.addCookie(cookies[i]);
    }
    response.sendRedirect("cookie.jsp");
%>
</body>
</html>
