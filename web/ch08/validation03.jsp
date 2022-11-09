<%--
  Created by IntelliJ IDEA.
  User: hwanghyeonjeong
  Date: 2022/11/02
  Time: 9:28 AM
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
        if (form.id.value.length < 4 || form.id.value.length > 12) {
            alert("아이디는 4~12자 이내로 입력 가능합니다!");
            form.id.select();
            return;
        }
        if (form.passwd.value.length < 4) {
            alert("비밀번호는 4자 이상으로 입력해야 합니다!");
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
