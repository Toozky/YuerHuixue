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
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="js/jquery-3.2.1.js"></script>
    <link rel="stylesheet" href="css/register1.css">
</head>
<body>

<%--    <form action="userLogin.do" method="post">--%>
<%--        用户名：<input type="text" name="name"/><br>--%>
<%--        密　码：<input type="password" name="pass"/><br>--%>
<%--        <input type="submit" value="登录">--%>
<%--    </form>--%>

<%--    <a href="userregister.jsp">用户注册</a><br>--%>

    <div class="header">
        <img src="images/mi-logo.png" alt="">
        <h1>悦社区</h1>
        <p>让每个人都能享受音乐的乐趣</p>
    </div>

    <div class="pic">
    <a class="content right-one">
        <img width="100%" src="images/banner1.png" />
    </a>
    </div>
    <div class="content left-one">
        <div class="nav-center center">
            <span class="zhanghao">账号登陆</span>
        </div>
        <div class="face center">
            <div class="logn">
                <div class="middle">
                    <form class="form center" action="userLogin.do" method="post">
                        <input class="text" type="text" name="name" placeholder="用户名">
                        <input class="password" type="password" name="pass" placeholder="密码"> <br>
                        <input class="detail" type="submit" value="登录">
                    </form>
                    <p class="zhuce"><a href="userforgetpass.jsp">忘记密码</a>|
                                     <a href="userregister.jsp">注册账号</a>|
                                     <a href="userIndex.do">返回首页</a></p>
                </div>
            </div>
        </div>
    </div>
    </div>

    <script>
        $(".nav-center span").click(function() {
            $(this).addClass("zhanghao").siblings().removeClass("zhanghao")
            let index = $(this).index();
            console.log(index)
            $(".face>div").eq(index).show().show().siblings().hide()
        })
    </script>

</body>
</html>
