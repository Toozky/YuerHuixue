<%--
  Created by IntelliJ IDEA.
  User: 张宇
  Date: 2021/6/21
  Time: 8:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员登录</title>
</head>
<body>

    <form action="adminLogin.do" method="post">
        用户名：<input type="text" name="name"/><br>
        密　码：<input type="password" name="pass"/><br>
        <input type="submit" value="登录">
    </form>
    <a href="adminregister.jsp">管理员注册</a><br>

</body>
</html>
