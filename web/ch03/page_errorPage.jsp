<%--
  Created by IntelliJ IDEA.
  User: hwanghyeonjeong
  Date: 2022/09/21
  Time: 9:52 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isErrorPage = "true" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <h4>에러가 발생했습니다.</h4>
<h5>exception 내장 객체 변수</h5>
<%
    exception.printStackTrace(new java.io.PrintWriter(out));
    out.flush();
%>
</body>
</html>
