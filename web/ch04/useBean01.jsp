<%--
  Created by IntelliJ IDEA.
  User: hwanghyeonjeong
  Date: 2022/09/28
  Time: 10:24 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="date" class="java.util.Date"/>
<p>
  <%
    out.print("오늘의 날짜 및 시각");
  %><%=date%>
</p>
</body>
</html>
