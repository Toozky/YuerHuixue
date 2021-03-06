<%--
  Created by IntelliJ IDEA.
  User: 张宇
  Date: 2021/6/21
  Time: 8:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html  class="x-admin-sm">
<head>
    <meta charset="UTF-8">
    <title>管理登录</title>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="stylesheet" href="./css/font.css">
    <link rel="stylesheet" href="./css/login.css">
    <link rel="stylesheet" href="./css/index.css">
    <script type="text/javascript" src="./js/jquery3.2.1.min.js"></script>
    <script src="./lib/layui/layui.js" charset="utf-8"></script>

</head>
<body class="login-bg">
<script>
    $(function () {
        $("#login").click(function () {
            $.ajax({
                type: "post",
                url: "adminLogin.do",
                dataType:"json",
                contentType:"application/json;charset=utf-8",
                success: function(data) {
                    //传出data的相关操作
                    window.location.href = "admin-list.html";
                }
            })
        })
    })
</script>

<div class="login layui-anim layui-anim-up">
    <div class="message">管理登录</div>
    <div id="darkbannerwrap"></div>

    <form method="post" class="layui-form" action="adminLogin.do" >
        <input name="name" placeholder="用户名"  type="text" lay-verify="required" class="layui-input" >
        <hr class="hr15">
        <input name="pass" lay-verify="required" placeholder="密码"  type="password" class="layui-input">
        <hr class="hr15">
        <input id="login" value="登录" lay-submit lay-filter="login" style="width:100%;" type="submit">
        <hr class="hr20" >
    </form>
</div>

<%--<script>--%>
<%--    $(function  () {--%>
<%--        layui.use('form', function(){--%>
<%--            var form = layui.form;--%>
<%--            // layer.msg('玩命卖萌中', function(){--%>
<%--            //   //关闭后的操作--%>
<%--            //   });--%>
<%--            //监听提交--%>
<%--            form.on('submit(login)', function(data){--%>
<%--                // alert(888)--%>
<%--                layer.msg(JSON.stringify(data.field),function(){--%>
<%--                    location.href='index.html'--%>
<%--                });--%>
<%--                return false;--%>
<%--            });--%>
<%--        });--%>
<%--    })--%>
<%--</script>--%>
<!-- 底部结束 -->
<%--<script>--%>
<%--    //百度统计可去掉--%>
<%--    var _hmt = _hmt || [];--%>
<%--    (function() {--%>
<%--        var hm = document.createElement("script");--%>
<%--        hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";--%>
<%--        var s = document.getElementsByTagName("script")[0];--%>
<%--        s.parentNode.insertBefore(hm, s);--%>
<%--    })();--%>
<%--</script>--%>
</body>
</html>
