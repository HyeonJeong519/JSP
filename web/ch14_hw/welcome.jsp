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
    Cookie[] userId = request.getCookies();
    if (userId[0] == null) {
        response.sendRedirect("cookie_out.jsp");
        return;
    }
%>

<h3><%=userId[0].getValue() %>님 반갑습니다.</h3>
<a href="cookie_out.jsp">로그아웃</a>
</body>
</html>
