<%--
  Created by IntelliJ IDEA.
  User: hwanghyeonjeong
  Date: 2022/11/23
  Time: 9:34 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
  String id = session.setAttribute("userID");
  String pw = session.setAttribute("userPW");

    out.println("세션 속성 1 " + id +"<br>");
    out.println("세션 속성 2 " + pw);
%>
</body>
</html>
