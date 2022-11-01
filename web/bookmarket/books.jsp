<%@ page import="dto.Book" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dao.BookRepository" %>
<jsp:useBean id="bookDAO" class="dao.BookRepository" scope="session"/>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"/>
    <title>Title</title>
</head>
<body>
<%@include file="menu.jsp" %>
<div class="jumbotron">
    <div class="container">
        <h1 class="display-3">도서 목록</h1>
    </div>
</div>
<%
    BookRepository dao = BookRepository.getInstance();
    ArrayList<Book> listOfBooks = dao.getAllBooks();
%>
<div class="container">
    <div class="row">
        <%
            for (int i = 0; i < listOfBooks.size(); i++) {
                Book book = listOfBooks.get(i);

        %>
        <div class="col-md-4">
            <img src="./resources/images/<%=book.getFilename()%>"
                 style="width: 100%">
            <h3><%="[" + book.getCategory() + "]" + book.getName()%>
            </h3>
            <p><%=book.getDescription()%>
            </p>
            <p><%=book.getAuthor() + " | " + book.getPublisher() + " | " + book.getUnitPrice()%>원</p>
            <p><a href="./book.jsp?id=<%=book.getBookId()%>"
                  class="btn btn-secondary" role="button">상세 정보 &raquo;</a></p>
        </div>
        <%
            }
        %>
    </div>
</div>
<%@include file="footer.jsp" %>
</body>
</html>
