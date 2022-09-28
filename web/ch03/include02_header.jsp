<%--
  Created by IntelliJ IDEA.
  User: hwanghyeonjeong
  Date: 2022/09/21
  Time: 10:37 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%!
  int pageCount =0;
  void addCount(){
    pageCount++;
  }
%>
<%
  addCount();
%>
<p>이 사이트 방문은 <%=pageCount%>번째입니다.</p>
</body>
</html>
