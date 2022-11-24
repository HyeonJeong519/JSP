<%@ page errorPage="isErrorPage.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    int x = 1;
    if(x==1){
        throw new RuntimeException("");
    }
%>
</body>
</html>
