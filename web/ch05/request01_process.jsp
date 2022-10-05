<%--
  Created by IntelliJ IDEA.
  User: hwanghyeonjeong
  Date: 2022/10/05
  Time: 9:26 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
  request.setCharacterEncoding("utf-8");
  String userid = request.getParameter("id");
  String password = request.getParameter("passwd");
%>
<p>아이디 : <%=userid%></p>
<p>비밀번호 : <%=password%></p>
</body>
</html>
