<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: EX
  Date: 8/11/2025
  Time: 12:33 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Translating</title>
</head>
<body>
<%! Map<String, String> dictionary = new HashMap<>();%>

<%
  dictionary.put("hello", "xin chào");
  dictionary.put("goodbye", "tạm biệt");
  dictionary.put("gate", "cánh cổng");
  dictionary.put("computer", "máy tinh");

String translated = request.getParameter("word");
String result = dictionary.get(translated);
if (result != null ) {
    out.println(translated + " = " + result);
} else {
    out.println("Not found");
}
%>
</body>
</html>
