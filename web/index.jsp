<%--
  Created by IntelliJ IDEA.
  User: hwanghyeonjeong
  Date: 2022/09/07
  Time: 1:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
<%--
선언문<%!...%>
스클립틀릿(자바로직) <%...%>
표현문(출력)<%=...%%>
--%>
<h2>Scripting Tag</h2>
<%! int count = 3;

    String makeItLower(String data) {
        return data.toLowerCase();
    }
%>

<%
    for (int i = 1; i <= count; i++)
        out.println("Java Server Pages " + i +".<br>");
%>

<%=makeItLower("Hello World")%>
</body>
</html>
