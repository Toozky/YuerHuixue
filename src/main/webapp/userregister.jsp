<%--
  Created by IntelliJ IDEA.
  User: pocoa
  Date: 2021/6/22
  Time: 11:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户注册</title>
</head>
<body>

    <form action="userRegister.do" method="post">
        用户名：<input type="text" name="name" placeholder="输入用户名（必填）"><br>
        手机号：<input type="text" name="tel" placeholder="输入手机号（必填）"><br>
        邮　箱：<input type="text" name="email" placeholder="输入邮箱"><br>
        地　址：<input type="text" name="address" placeholder="输入地址（必填）"><br>
        密　码：<input type="password" name="pass" placeholder="输入密码（必填）"><br>
        <input type="submit" value="注册"><br>
    </form>

    <a href="userlogin.jsp">取消注册</a><br>

</body>
</html>
