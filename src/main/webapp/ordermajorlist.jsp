<%@ page import="java.util.List" %>
<%@ page import="com.yuerhuixue.pojo.OrderMajor" %><%--
  Created by IntelliJ IDEA.
  User: 张宇
  Date: 2021/6/25
  Time: 14:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
订单信息表
<table border="1px" cellspacing="0" cellpadding="5px">
    <tr>
        <td>订单ID</td>
        <td>用户ID</td>
        <td>总价</td>
        <td>订单最后修改时间</td>
        <td>订单状态</td>
        <td>
            操作　
            <a href="admininsertuser.jsp">新建</a>
        </td>
    </tr>
    <%
        List<OrderMajor> orderMajors=(List<OrderMajor>)session.getAttribute("orderMajors");
        for (OrderMajor orderMajor : orderMajors) {
    %>
    <tr>
        <td><%=orderMajor.getId()%></td>
        <td><%=orderMajor.getUser().getId()%></td>
        <td><%=orderMajor.getTotal()%></td>
        <td><%=orderMajor.getTime()%></td>
        <td><%=orderMajor.getState()%></td>
        <td>
            <a href="orderMajorInsert.do?id=<%=orderMajor.getId()%>">查看明细</a> 　
            <a href="a.do?id=<%=orderMajor.getId()%>">删除订单</a>
        </td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>
