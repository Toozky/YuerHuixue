<%@ page import="com.yuerhuixue.pojo.Instype" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html class="x-admin-sm">

<head>
    <meta charset="UTF-8">
    <title>添加乐器类型</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="stylesheet" href="./css/font.css">
    <link rel="stylesheet" href="./css/index.css">
    <script type="text/javascript" src="./lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="./js/index.js"></script>
</head>
<body>
<div class="layui-fluid">
    <div class="layui-row">
        <form class="layui-form" action="instypeInsert.do" method="post" enctype="multipart/form-data">
            <div class="layui-form-item">
                <label for="name" class="layui-form-label">
                    <span class="x-red">*</span>乐器类型
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="name" name="name" placeholder="输入乐器类型名（必填）" required="" lay-verify="required"
                           autocomplete="off" class="layui-input">
                </div>
            </div>

            <div class="layui-form-item">
                <label for="pic" class="layui-form-label">
                    <span class="x-red">*</span>图　片
                </label>
                <div class="layui-input-inline">
                    <input type="file" id="pic" name="pic" required="" lay-verify="required"
                           autocomplete="off" >
                </div>
            </div>

            <div class="layui-form-item">
                <label for="description" class="layui-form-label">
                    <span class="x-red">*</span>描　述
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="description" name="description" placeholder="输入描述" required="" lay-verify="required"
                           autocomplete="off" class="layui-input">
                </div>
            </div>

            <div class="layui-form-item">
                <input type="submit" value="添加" class="layui-btn" lay-filter="register" lay-submit="">
            </div>
        </form>
    </div>
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
        form.on('submit(register)',
            function(data) {
                console.log(data);

                //发异步，把数据提交给php
                layer.alert("注册成功", {
                        icon: 6
                    },
                    function() {
                        //关闭当前frame
                        xadmin.close();

                        // 可以对父窗口进行刷新
                        xadmin.father_reload();
                    });
                return false;
            },layui.href("adminUpdateUser.do"));

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
