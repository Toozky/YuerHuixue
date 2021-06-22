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
        用户名：<input type="text" name="name"><br>
        手机号：<input type="text" name="tel"><br>
        邮　箱：<input type="text" name="email"><br>
        地　址：<input type="text" name="address"><br>
        密　码：<input type="password" name="pass"><br>
        <input type="submit" value="注册"><br>
    </form>

</body>
</html>
