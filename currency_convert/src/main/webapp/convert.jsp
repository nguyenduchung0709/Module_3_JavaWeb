<%--
  Created by IntelliJ IDEA.
  User: EX
  Date: 8/10/2025
  Time: 11:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Convert</title>
</head>
<body>
<%
    float rate = Float.parseFloat(request.getParameter("rate"));
    float usd = Float.parseFloat(request.getParameter("usd"));

    float vnd = rate * usd;

    request.setAttribute("rate", rate );
    request.setAttribute("usd", usd );
    request.setAttribute("vnd", vnd );
%>

<%
out.println("Rate:" + rate);
out.println("USD:" + usd);
out.println("VND:" + vnd);
%>
</body>
</html>
