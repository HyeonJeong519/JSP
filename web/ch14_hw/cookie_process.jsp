<%--
  Created by IntelliJ IDEA.
  User: hwanghyeonjeong
  Date: 2022/11/24
  Time: 11:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");

    if(id.equals("admin") && pw.equals("1234")){
        Cookie cookie_id = new Cookie("UserID",id);
        response.addCookie(cookie_id);
        response.sendRedirect("./welcome.jsp");
    } else out.println("쿠키 생성 실패");
%>
</body>
</html>
