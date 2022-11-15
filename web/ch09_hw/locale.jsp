<%@ page import="java.util.Locale" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3><b>현재 로케일</b></h3>
<%
    Locale locale = request.getLocale();
    String language = locale.getLanguage();
    String code = locale.getCountry();
%>
<p>언어 : <%=language%></p>
<p>국가 : <%=code%></p>
</body>
</html>
