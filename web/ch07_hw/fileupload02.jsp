<%--
  Created by IntelliJ IDEA.
  User: hwanghyeonjeong
  Date: 2022/10/24
  Time: 6:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="fileupload02_process.jsp" method="post"
      enctype="multipart/form-data" name="fileForm">
  <p><input type="file" name="filename"></p>
  <p><input type="submit" value="파일 올리기"></p>
</form>
</body>
</html>
