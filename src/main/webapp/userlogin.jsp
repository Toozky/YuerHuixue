<%--
  Created by IntelliJ IDEA.
  User: pocoa
  Date: 2021/6/21
  Time: 10:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户登录</title>
</head>
<body>

    <form action="userLogin.do" method="post">
        用户名：<input type="text" name="name"/><br>
        密　码：<input type="password" name="pass"/><br>
        <input type="submit" value="登录">
    </form>

    <a href="userregister.jsp">用户注册</a><br>

</body>
</html>
