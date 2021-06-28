<%--
  Created by IntelliJ IDEA.
  User: pocoa
  Date: 2021/6/22
  Time: 15:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <form action="userModify.do" method="post">
        <input type="text" name="id" hidden="hidden" value="${user.id}">
        用户名：<input type="text" name="name" value="${user.name}" placeholder="输入用户名（必填）"><br>
        手机号：<input type="text" name="tel" value="${user.tel}" placeholder="输入手机号（必填）"><br>
        邮　箱：<input type="text" name="email" value="${user.email}" placeholder="输入邮箱"><br>
        地　址：<input type="text" name="address" value="${user.address}" placeholder="输入地址（必填）"><br>
        密　码：<input type="password" name="pass" value="${user.pass}" placeholder="输入密码（必填）"><br>
        是否为二手卖家：
        <input name="businessman" type="radio" value="true" ${user.businessman?"checked='checked'":""}/>是 　
        <input name="businessman" type="radio" value="false" ${user.businessman?"":"checked='checked'"}/>否<br>
        <input type="submit" value="更新"><br>
    </form>

    <a href="userlogin.jsp">取消修改</a><br>

</body>
</html>
