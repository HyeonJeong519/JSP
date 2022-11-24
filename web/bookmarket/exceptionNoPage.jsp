<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:include page="menu.jsp"/>
<div class="jumbotron">
    <div class="container">
        <h2 class="alert alert-danger">요청하신 페이지를 찾을 수 없습니다.</h2>
    </div>
</div>
<div class="container">
    <p><%=request.getRequestURL()%></p>
    <p><a href="books.jsp" class="btn btn-secondary">상품목록 &raquo;</a></p>
</div>
</body>
</html>
