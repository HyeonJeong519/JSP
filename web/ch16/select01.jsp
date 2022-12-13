<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@ include file="connection.jsp"%>
<table width="300" border="1">
  <tr>
    <td>아이디</td>
    <td>비밀번호</td>
  </tr>
</table>
<%
  ResultSet rs =null;
  Statement stmt = null;

  try{
    String sql = "select * from member";
    stmt = connection.prepareStatement(sql);
    rs = stmt.executeQuery(sql);
    while (rs.next()){
      String id = rs.getString("id");
      String password = rs.getString("password");
      %>
  <tr>
    <td><%=id%></td>
    <td><%=password%></td>
  </tr>
<%
  }
  }catch (SQLException ex){
    out.println("실패");
  }finally {
    if(rs != null)
      rs.close();
    if(stmt != null)
      stmt.close();
    if(connection != null)
      connection.close();
  }
%>
</body>
</html>
