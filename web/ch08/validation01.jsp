<%--
  Created by IntelliJ IDEA.
  User: hwanghyeonjeong
  Date: 2022/11/02
  Time: 8:48 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<script type="text/javascript">
  function CheckForm(){
    alert("아이디 : "+document.loginForm.id.value + "\n"
    + "비밀번호 : "+document.loginForm.passwd.value);
  }
</script>
<form name="loginForm">
  <p>아이디 : <input type="text" name="id"></p>
  <p>비밀번호 : <input type="text" name="passwd"></p>
  <p><input type="submit" onclick="CheckForm"></p>
</form>
</body>
</html>
