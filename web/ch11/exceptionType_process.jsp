<%--
  Created by IntelliJ IDEA.
  User: hwanghyeonjeong
  Date: 2022/11/16
  Time: 11:39 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
  String num1 = request.getParameter("num1");
  String num2 = request.getParameter("num2");
  int a = Integer.parseInt(num1);
  int b= Integer.parseInt(num2);
  int c = a/b;
  out.print(num1 + " / "+num2 + " = " + c);
%>
</body>
</html>
