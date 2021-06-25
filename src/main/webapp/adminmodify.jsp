<%--
  Created by IntelliJ IDEA.
  User: 张宇
  Date: 2021/6/22
  Time: 21:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>adminmodify</title>
</head>
<body>

    <form action="adminModify.do" method="post">
        ID：<input type="text" disabled="disabled" value="${admin.id}">
        <input type="text" name="id" hidden="hidden" value="${admin.id}"><br>
        管理员姓名：<input type="text" name="name" value="${admin.name}" placeholder="输入姓名"><br>
        管理员密码：<input type="password" name="pass" value="${admin.pass}" placeholder="输入密码"><br>
        <input type="submit" value="更新"><br>
    </form>

    <a href="adminlogin.jsp">取消修改</a><br>
</body>
</html>
