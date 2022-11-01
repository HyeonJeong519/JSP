<%@ page import="dao.BookRepository" %>
<%@ page import="dto.Book" %>
<%@ page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");

    String filename = "";
    String realFolder = "/Users/hwanghyeonjeong/IdeaProjects/JSP_Test/web/bookmarket/resources/images";
    int maxSize = 5 * 1024 * 1024;
    String encType = "utf-8";

    MultipartRequest multi = new MultipartRequest(request, realFolder,
            maxSize, encType, new DefaultFileRenamePolicy());

    String bookId = multi.getParameter("bookId");
    String name = multi.getParameter("name");
    String unitPrice = multi.getParameter("unitPrice");
    String author = multi.getParameter("author");
    String publisher = multi.getParameter("publisher");
    String releaseDate = multi.getParameter("releaseDate");
    String unitsInStock = multi.getParameter("unitsInStock");
    String totalpages = multi.getParameter("totalPages");
    String description = multi.getParameter("description");
    String category = multi.getParameter("category");
    String condition = multi.getParameter("condition");

    Integer price;

    if (unitPrice.isEmpty())
        price = 0;
    else price = Integer.valueOf(unitPrice);

    long stock;

    if (unitsInStock.isEmpty()) {
        stock = 0;
    } else {
        stock = Long.valueOf(unitsInStock);
    }
    Enumeration files = multi.getFileNames();
    String fname = (String) files.nextElement();
    String fileName = multi.getFilesystemName(fname);

    BookRepository dao = BookRepository.getInstance();

    Book newBook = new Book();
    newBook.setBookId(bookId);
    newBook.setName(name);
    newBook.setUnitPrice(price);
    newBook.setPublisher(publisher);
    newBook.setDescription(description);
    newBook.setAuthor(author);
    newBook.setReleaseDate(releaseDate);
    newBook.setCategory(category);
    newBook.setUnitsInStock(stock);
    newBook.setTotalPages(Long.parseLong(totalpages));
    newBook.setCondition(condition);
    newBook.setFilename(fileName);

    dao.addBook(newBook);

    response.sendRedirect("books.jsp");
%>
</body>
</html>
