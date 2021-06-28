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
<%
    List<OrderMajor> orderMajors=(List<OrderMajor>)session.getAttribute("orderMajors");
%>
<a href="ordermajorlistbyuserid.jsp">按用户ID查询订单</a><br>
订单信息表<br>
<table border="1px" cellspacing="0" cellpadding="5px">
    <tr>
        <td>订单ID</td>
        <td>用户ID</td>
        <td>总价</td>
        <td>订单最后修改时间</td>
        <td>订单状态</td>
        <td>
            操作　
            <a href="ordermajorinsert.jsp">添加订单</a>
        </td>
    </tr>
    <%
        for (OrderMajor orderMajor : orderMajors) {
    %>
    <tr>
        <td><%=orderMajor.getId()%></td>
        <td><%=orderMajor.getUser().getId()%></td>
        <td><%=orderMajor.getTotal()%></td>
        <td><%=orderMajor.getTime()%></td>
        <td><%=orderMajor.getState()%></td>
        <td>
            <a href="orderMajorDefinite.do?id=<%=orderMajor.getId()%>">查看明细</a> 　
            <a href="orderMajorDelete.do?id=<%=orderMajor.getId()%>">删除订单</a>
        </td>
    </tr>
    <%
        }
    %>
</table>
<br><a href="ordermajorinsert.jsp">添加订单</a><br>
</body>
</html>
