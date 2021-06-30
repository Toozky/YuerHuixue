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
    Integer id = orderDetails.get(0).getOrderMajor().getId();
    Integer userid = orderDetails.get(0).getOrderMajor().getUser().getId();
    String name = orderDetails.get(0).getOrderMajor().getUser().getName();
%>
订单ID:<%=id%><br>
用户ID:<%=userid%><br>
用户名：<%=name%><br>
<table border="1px" cellspacing="0" cellpadding="5px">
    <tr>
        <td>乐器ID</td>
        <td>乐器名称</td>
        <td>乐器类型</td>
        <td>乐器数量</td>
        <td>订单时间</td>
        <td>订单状态</td>
    </tr>
    <%
        for (OrderDetail orderDetail : orderDetails) {
    %>
    <tr>
        <td><%=orderDetail.getInstrument().getId()%></td>
        <td><%=orderDetail.getInstrument().getName()%></td>
        <td><%=orderDetail.getInstrument().getInstype().getName()%></td>
        <td><%=orderDetail.getNumber()%></td>
        <td><%=orderDetail.getOrderMajor().getTime()%></td>
        <td><%=orderDetail.getOrderMajor().getState()%></td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>
