<%--
  Created by IntelliJ IDEA.
  User: hwanghyeonjeong
  Date: 2022/09/14
  Time: 9:29 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Scripting Tag</title>
</head>
<%
    int count = 0;
%>
<body>
<%! int data = 50;

    int sum(int a, int b) {
        return a + b;
    }

    String makeItLower(String data) {
        return data.toLowerCase();
    }
%>
Page Count is

<%
    out.println(++count + "<br>");
    out.println("Value of the variable is : " + data + "<br>");
    out.println("2 + 3 = " + sum(2, 3) + "<br>");
    out.println("Let's make it LOWER! " + makeItLower("Hello World" + "<br>"));

    int a = 2;
    int b = 3;
    int sum = a + b;
    out.println("2+3 = " + sum + "<br>");

    for(int i =0; i<=10;i++){
        if(i%2==0)
            out.println(i+"<br>");
    };

    int cnt = 0;
%>
<%= ++cnt %>
<p>Today's date :
<%= new java.util.Date()%>
</p>
<h2>A Test of Comments</h2>
<%-- This comment will not be visible in the page source --%>
<c:forEach var="k" begin ="1" end="10" step="1">
    <c:out value="${k}" />
</c:forEach>
</body>
</html>
