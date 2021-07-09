<%--
  Created by IntelliJ IDEA.
  User: ZhangYu
  Date: 2021/7/9
  Time: 8:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html class="x-admin-sm">

<head>
    <meta charset="UTF-8">
    <title>管理员信息</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="stylesheet" href="./css/font.css">
    <link rel="stylesheet" href="./css/index.css">
    <script type="text/javascript" src="./lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="./js/index.js"></script>
</head>
<body>
<table class="layui-table layui-form">
    <thead>
    <tr>
        <th>ID</th>
        <th>登录名</th>
        <th>密码</th>
        <th>邮箱</th>
        <th>角色</th>
        <th>加入时间</th>
        <th>状态</th>
    </thead>
    <tbody>
    <tr>
        <td>${admin.id}</td>
        <td>${admin.name}</td>
        <td>${admin.pass}</td>
        <td>123456789@qq.com</td>
        <td>超级管理员</td>
        <td>2017-01-01 11:11:42</td>
        <td class="td-status">
            <span class="layui-btn layui-btn-normal layui-btn-mini">已启用</span>
        </td>
    </tr>
    </tbody>
</table>
<div class="layui-card-header">
    <a class="layui-btn" href="adminModifyPage.do"><i class="layui-icon"></i>修改信息</a>
</div>
<script>layui.use(['form', 'layer'],
    function() {
        $ = layui.jquery;
        var form = layui.form,
            layer = layui.layer;

        //自定义验证规则
        form.verify({
            nikename: function(value) {
                if (value.length < 5) {
                    return '昵称至少得5个字符啊';
                }
            },
            pass: [/(.+){6,16}$/, '密码必须6到16位'],
            repass: function(value) {
                if ($('#pass').val() != $('#repass').val()) {
                    return '两次密码不一致';
                }
            }
        });

        //监听提交
        form.on('submit(add)',
            function(data) {
                console.log(data);

                //发异步，把数据提交给php
                layer.alert("修改成功", {
                        icon: 6
                    },
                    function() {
                        //关闭当前frame
                        xadmin.close();

                        // 可以对父窗口进行刷新
                        xadmin.father_reload();
                    });
                return false;
            },layui.href("adminModify.do"));

    });

</script>
<script>var _hmt = _hmt || []; (function() {
    var hm = document.createElement("script");
    hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";
    var s = document.getElementsByTagName("script")[0];
    s.parentNode.insertBefore(hm, s);
})();</script>
</body>

</html>
