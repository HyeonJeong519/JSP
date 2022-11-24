
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
    session.setAttribute("userID", id);
    session.setAttribute("userPW", pw);
    out.println("세션설정 성공<br>");
    out.println(id + "님 환영합니다.");
  }else out.println("실패");
%>
</body>
</html>
