<%--
  Created by IntelliJ IDEA.
  User: hwanghyeonjeong
  Date: 2022/10/24
  Time: 5:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="./fileupload01_process.jsp" method="post" name="fileForm"
      enctype="multipart/form-data">
    <p>파일 : <input type="file" name="filename"></p>
    <p><input type="submit" value="파일 올리기"></p>
</form>
</body>
</html>
