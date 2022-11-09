<%@ page import="java.util.Locale" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.DateFormat" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>현재 로케일의 국가, 날짜, 통화</h3>
<%
    Locale locale = request.getLocale();
    Date currentDate = new Date();
    String language = locale.getLanguage();
    String code = locale.getCountry();
    DateFormat dateFormat1 = DateFormat.getDateInstance(DateFormat.FULL, locale);
    DateFormat dateFormat2 = DateFormat.getDateInstance(DateFormat.SHORT, locale);
    NumberFormat numberFormat = NumberFormat.getNumberInstance(locale);
    NumberFormat curency = NumberFormat.getCurrencyInstance(locale);
    NumberFormat percentage = NumberFormat.getPercentInstance(locale);
%>
<p>국가 : <%=locale.getDisplayCountry()%></p>
<p>언어 : <%=language%></p>
<p>코드 : <%=code%></p>
<p>날짜 : <%=dateFormat1.format(currentDate)%></p>
<p>날짜 : <%=dateFormat2.format(currentDate)%></p>
<p>숫자 (12345.67) : <%=numberFormat.format(12345.67)%></p>
<p>숫자 (12345.67) : <%=curency.format(12346)%></p>
<p>숫자 (12345.67) : <%=percentage.format(1234567)%></p>
</body>
</html>
