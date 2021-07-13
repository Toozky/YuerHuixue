<%--
  Created by IntelliJ IDEA.
  User: pocoa
  Date: 2021/7/13
  Time: 8:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>找回密码</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="css/retrivePassword.css" />
    <script type="text/javascript" src="js/jquery-3.2.1.js" ></script>
    <script type="text/javascript" src="js/retrievePassword.js" ></script>
</head>
<body>
    <div class="top">
        <p>安全中心</p>
        <p class="tip">|找回密码</p>
    </div>

    <div class="content_top">
        <div class="order">
            <p>1</p>
            填写用户名
        </div>

        <div class="order">
            <p>2</p>
            填写手机号
        </div>

        <div class="order">
            <p>3</p>
            填写新密码
        </div>
    </div>

    <div class="content_bottom">
        <div class="inputUsername">
            <form action="userForgetPass.do" method="post">
                用户名：<input type="text" name="name" placeholder="输入用户名（必填）"><br><br>
                手机号：<input type="text" name="tel" placeholder="输入手机号（必填）"><br><br>
                新密码：<input type="password" name="pass" placeholder="输入新密码（必填）"><br><br>
                <button type="submit">提交</button>
                <button type="button" onclick="window.location.href='userlogin.jsp'">返回</button><br>
            </form>
        </div>
    </div>

</body>
</html>
