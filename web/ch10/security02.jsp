<%--
  Created by IntelliJ IDEA.
  User: hwanghyeonjeong
  Date: 2022/11/16
  Time: 10:21 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>사용자명 : <%=request.getRemoteUser()%></p>
<p>인증방법 : <%=request.getAuthType()%></p>
<p>인증한 사용자명이 역할명 tomcat에 속하는 사용자인가요?
<%=request.isUserInRole("tomcat")%></p>
<p>인증한 사용자명이 역할명 role1에 속하는 사용자인가요?
<%=request.isUserInRole("role1")%></p>
</body>
</html>
