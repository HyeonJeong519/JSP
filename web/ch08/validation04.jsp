<%--
  Created by IntelliJ IDEA.
  User: hwanghyeonjeong
  Date: 2022/11/02
  Time: 9:38 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<script type="text/javascript">
  function checkLogin() {
    var form = document.loginForm;
    for(i=0;i<form.id.value.length;i++){
      var ch = form.id.value.charAt(i);
      if((ch<'a'||ch>'z') && (ch>'A'||ch<'Z')&&(ch>'0'||ch<'9')){
        alert("아이디는 영문 소문자만 입력 가능합니다!");
        form.id.select();
        return;
      }
    }
    if (isNaN(form.passwd.value)) {
      alert("비밀번호는 숫자만 입력 가능합니다!");
      form.passwd.select();
      return;
    }
    form.submit();
  }
</script>
<form name="loginForm" action="validation03_process.jsp" method="post">
  <p>아이디 : <input type="text" name="id"></p>
  <p>비밀번호 : <input type="text" name="passwd"></p>
  <p><input type="button" value="전송" onclick="checkLogin()"></p>
</form>
</body>
</html>
