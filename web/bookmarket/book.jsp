<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="dto.Book" %>
<%@ page import="dao.BookRepository" %>
<jsp:useBean id="productDAO" class="dao.BookRepository" scope="session"/>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"/>
    <title>도서 정보</title>
</head>
<body>
<jsp:include page="menu.jsp"/>
<div class="jumbotron">
    <div class="container">
        <h1 class="display-3">도서 정보</h1>
    </div>
</div>
<%
    String id = request.getParameter("id");
    BookRepository dao = BookRepository.getInstance();
    Book book = dao.getBookById(id);
%>
<div class="container">
    <div class="row">
        <div>
            <div class="col-md-5">
                <img src="./resources/images/<%=book.getFilename()%>"
                     style="width: 100%">
            </div>
            <p>
            <h3><%="[" + book.getCategory() + "] " + book.getName()%>
            </h3></p>
            <p><%=book.getDescription()%>
            </p>
            <p><b>도서코드 : </b><span class="badge badge-danger">
                <%=book.getBookId()%></span></p>
            <p><b>출판사 : </b><%=book.getPublisher()%>
            </p>
            <p><b>저자 : </b><%=book.getAuthor()%>
            </p>
            <p><b>재고수 : </b><%=book.getUnitsInStock()%>
            </p>
            <p><b>총 페이지수 : </b><%=book.getTotalPages()%>
            </p>
            <p><b>출판일 : </b><%=book.getReleaseDate()%>
            </p>
            <h4><%=book.getUnitPrice()%>원</h4>
            <p><a href="#" class="btn btn-info">도서 주문 &raquo;</a>
                <a href="./books.jsp" class="btn btn-secondary">도서 목록 &raquo;</a>
            </p>
        </div>
    </div>
    <hr>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>
