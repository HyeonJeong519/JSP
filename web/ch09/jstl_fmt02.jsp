<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: hwanghyeonjeong
  Date: 2022/11/09
  Time: 10:23 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>숫자 : <fmt:formatNumber value="3200100"></fmt:formatNumber></p>
<p><fmt:formatNumber value="3200100" type="number"></fmt:formatNumber></p>
<p><fmt:formatNumber value="3200100" type="number" groupingUsed="false"></fmt:formatNumber></p>
<p><fmt:formatNumber value="3200100" type="currency" groupingUsed="true"></fmt:formatNumber></p>
<p><fmt:formatNumber value="3200100" type="currency" currencySymbol="&"></fmt:formatNumber></p>
<p><fmt:formatNumber value="0.45" type="percent"></fmt:formatNumber></p>
<p><fmt:formatNumber value="3200100" minIntegerDigits="10" minFractionDigits="2"></fmt:formatNumber></p>
<p><fmt:formatNumber value="3200100.45" pattern=".000"></fmt:formatNumber></p>
<p><fmt:formatNumber value="3200100.456" pattern="#,#00.0#"></fmt:formatNumber></p>
</body>
</html>
