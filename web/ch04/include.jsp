<%--
  Created by IntelliJ IDEA.
  User: hwanghyeonjeong
  Date: 2022/09/28
  Time: 9:28 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Action Tag</title>
</head>
<body>
<h2>include 액션 태그</h2>
<jsp:include page="include_date.jsp">
  <jsp:param name="title" value='<%= java.net.URLEncoder.encode("오늘의 날짜와 시각")%>'/>
    <jsp:param name="date" value="<%=java.util.Calendar.getInstance().getTime()%>"/>
</jsp:include>
<p>--------------------</p>
</body>
</html>
