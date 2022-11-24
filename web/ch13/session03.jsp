<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: hwanghyeonjeong
  Date: 2022/11/23
  Time: 9:36 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
  String name;
  String value;

  Enumeration en = session.getAttributeNames();
  int i=0;

  while (en.hasMoreElements()){
    i++;
    name = en.nextElement().toString();
    value = session.getAttribute(name).toString();

    out.println("속성이름" + name +"<br>");
    out.println("속성 값" + value);

    session.removeAttribute("name");
  }
  session.setAttribute("userID", id);
  session.setAttribute("userPW", pw);
%>
</body>
</html>
