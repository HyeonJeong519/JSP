<%--
  Created by IntelliJ IDEA.
  User: hwanghyeonjeong
  Date: 2022/11/16
  Time: 11:18 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>오류가 발생하였습니다.</p>
<p>예외 유형 : <%=exception.getClass().getName()%></p>
<p>오류 메시지 : <%=exception.getMassage()%></p>
</body>
</html>
