<%--
  Created by IntelliJ IDEA.
  User: hwanghyeonjeong
  Date: 2022/09/28
  Time: 11:19 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="person" class="ch04.com.dao.Person" scope="request"/>
<jsp:setProperty name="person" property="id" value="20182005"/>
<jsp:setProperty name="person" property="name" value="홍길동"/>
<p>아이디 : <%out.printn(person.getId());%></p>
<p>이 름 : <%out.printn(person.getName());%></p>
</body>
</html>
