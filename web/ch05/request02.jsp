<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: hwanghyeonjeong
  Date: 2022/10/05
  Time: 9:31 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
  Enumeration en = request.getHeaderNames();
  while (en.hasMoreElements()){
    String headerName = (String) en.nextElement();
    String headerValue = request.getHeader(headerName);

%>

<%=headerName%> : <%=headerValue%><br>

<% } %>
</body>
</html>
