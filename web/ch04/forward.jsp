<%--
  Created by IntelliJ IDEA.
  User: hwanghyeonjeong
  Date: 2022/09/28
  Time: 9:24 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Action Tag</title>
</head>
<body>
<h2>forward 액션 태그</h2>
<jsp:forward page="forward_date.jsp">
    <jsp:param name="id" value="admin"/>
    <jsp:param name="name" value='<%= java.net.URLEncoder.encode("관리자")%>'/>
</jsp:forward>
<p>------------------------------</p>

</body>
</html>
