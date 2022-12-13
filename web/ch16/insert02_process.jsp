<%--
  Created by IntelliJ IDEA.
  User: hwanghyeonjeong
  Date: 2022/11/30
  Time: 11:17 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@include file="connection.jsp"%>
<%
  request.setCharacterEncoding("utf-8");

  String id = request.getParameter("id");
  String pw = request.getParameter("password");

  PreparedStatement pstmt = null;
  try{
    String sql = "insert into member(id, password) values(?,?)";
    pstmt = connection.prepareStatement(sql);
    pstmt.setString(1,id);
    pstmt.setString(2,password);
    pstmt.executeUpdate();
  } catch (SQLException ex){
    out.println("실패");
  }finally {
    if(pstmt != null)
      pstmt.close();
    if(connection != null)
      connection.close();
  }
%>
</body>
</html>
