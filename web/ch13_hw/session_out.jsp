<%--
  Created by IntelliJ IDEA.
  User: hwanghyeonjeong
  Date: 2022/11/24
  Time: 10:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    session.invalidate();

    response.sendRedirect("./session.jsp");
%>
</body>
</html>
