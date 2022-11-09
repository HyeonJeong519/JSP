<%--
  Created by IntelliJ IDEA.
  User: hwanghyeonjeong
  Date: 2022/11/02
  Time: 9:18 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<script type="text/javascript">
  function checkLogin(){
    var form = document.loginForm;
    if(form.id.value == ""){
      alert("아이디를 입력해주세요.");
      form.id.focus();
      return false;
    }else if (form.passwd.value == ""){
      alert("비밀번호를 입력해주세요.");
      form.passwd.focus();
      return false;
    }
    form.submit();
  }
</script>
<form name="loginForm" action="validation02_process.jsp" method="post">
  <p>아이디 : <input type="text" name="id"></p>
  <p>비밀번호 : <input type="text" name="passwd"></p>
  <p><input type="button" value="전송" onclick="checkLogin()"></p>
</form>
</body>
</html>
