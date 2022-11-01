package dao;

import dto.Book;

import java.util.ArrayList;

public class BookRepository {
    private ArrayList<Book> listOfBook = new ArrayList<Book>();

    private static BookRepository instance = new BookRepository();

    public static BookRepository getInstance() {
        return instance;
    }
    public BookRepository() {
        Book book1 = new Book("b1", "HTML5+CSS3", 15000);
        book1.setDescription("워드나 PPT 문서를 만들 수있나요? 그러면 문제 없습니다. 지금 바로 웹페이지 제작에 도전해보세요.");
        book1.setCategory("Hello Coding");
        book1.setAuthor("황재호");
        book1.setPublisher("한빛아카데미");
        book1.setUnitsInStock(1000);
        book1.setCondition("New");
        book1.setFilename("b1.png");

        Book book2 = new Book("b2", "쉽게 배우는 자바 프로그래밍", 27000);
        book2.setDescription("객체 지향의 핵심과 자바의 현대적 기능을 충실히 다루면서도 초보자가 쉽게 학습할 수 있게 구성했습니다.");
        book2.setCategory("IT모바일");
        book2.setAuthor("우종중");
        book2.setPublisher("한빛아카데미");
        book2.setUnitsInStock(3000);
        book2.setCondition("New");
        book2.setFilename("b2.png");

        Book book3 = new Book("b3", "스프링4 입문", 27000);
        book3.setDescription("스프링은 단순히 사용 방법만 익히는 것보다 아키텍처를 어떻게 이해하고 설계하는지가 더 중요합니다.");
        book3.setCategory("IT모바일");
        book3.setAuthor("하세가와 유이치, 오오노 와타루");
        book3.setPublisher("한빛아카데미");
        book3.setUnitsInStock(2000);
        book3.setCondition("New");
        book3.setFilename("b3.png");

        listOfBook.add(book1);
        listOfBook.add(book2);
        listOfBook.add(book3);
    }
    public Book getBookById(String bookId) {
        Book bookById = null;
        for (int i = 0; i < listOfBook.size(); i++) {
            Book book = listOfBook.get(i);
            if (book != null && book.getBookId() != null && book.getBookId().equals(bookId)) {
                bookById = book;
                break;
            }
        }
        return bookById;
    }
    public ArrayList<Book> getAllBooks() {
        return listOfBook;
    }

    public void addBook(Book book) {
        listOfBook.add(book);
    }
}
