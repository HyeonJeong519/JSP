<%@ page import="java.sql.*" %>
<%@ page import="java.util.Stack" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Connection connection = null;
    try{
        String url = "jdbc:mysql://localhost:3306/JSPTEST?useSSL=false&serverTimezone=UTC";
        String user = "root";
        String password = "root1234";

        Class.forName("com.mysql.jdbc.Driver");
        connection = DriverManager.getConnection(url,user,password);

    } catch (SQLException ex){
        out.println("데이터베이스 연결이 실패했습니다.<br>");
        out.println("SQLException : "+ex.getMessage());
    }finally {
        if(connection != null)
            connection.close();
    }
%>
</body>
</html>
