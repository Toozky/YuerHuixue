<%@ page import="com.yuerhuixue.pojo.OrderDetail" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: 张宇
  Date: 2021/6/28
  Time: 9:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>订单明细</title>
</head>
<body>
<%
    List<OrderDetail> orderDetails=(List<OrderDetail>)session.getAttribute("orderDetails");
%>
<table border="1px" cellspacing="0" cellpadding="5px">
    <tr>
        <td>订单ID</td>
        <td>乐器ID</td>
        <td>乐器数量</td>
    </tr>
    <%
        for (OrderDetail orderDetail : orderDetails) {
    %>
    <tr>
        <td><%=orderDetail.getOrderMajor().getId()%></td>
        <td><%=orderDetail.getInstrument().getId()%></td>
        <td><%=orderDetail.getNumber()%></td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>
