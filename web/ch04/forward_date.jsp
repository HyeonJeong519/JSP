<%--
  Created by IntelliJ IDEA.
  User: hwanghyeonjeong
  Date: 2022/09/28
  Time: 9:26 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Action Tag</title>
</head>
<body>
<p>오늘의 날짜 및 시간</p>
<p><%=(new java.util.Date()).toLocaleString()%>
</p>
<p>아이디 : <%=request.getParameter("id")%>
        <%
    String name = request.getParameter("name");
%>
<p>이름 : <%=java.net.URLDecoder.decode(name)%>
</body>
</html>
