<%--
  Created by IntelliJ IDEA.
  User: 张宇
  Date: 2021/6/25
  Time: 15:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="orderMajorInsert.do" method="post">
    用户ID：<input type="text" name="id" placeholder="输入用户ID（必填）"><br>
    总价：<input type="text" name="total" placeholder="输入总价（必填）"><br>
    订单状态：<input type="text" name="state" placeholder="输入订单状态"><br>
    <input type="submit" value="添加"><br>
</form>

<a href="ordermajorlist.jsp">取消添加</a><br>
</body>
</html>
