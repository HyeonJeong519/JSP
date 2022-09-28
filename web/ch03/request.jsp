<%--
  Created by IntelliJ IDEA.
  User: hwanghyeonjeong
  Date: 2022/09/21
  Time: 10:21 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="true"%>
<html>
<head>
    <title>Directives Tag</title>
</head>
<body>
<%
  request.setAttribute("RequestAtrribute","request 내장 객체");
%>
${requestScope.RequestAttribute}

</body>
</html>
