<%@ page import="com.yuerhuixue.pojo.User" %><%--
  Created by IntelliJ IDEA.
  User: pocoa
  Date: 2021/6/22
  Time: 15:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>用户修改</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/zhuce.css">
    <link rel="stylesheet" href="css/register1.css">
</head>
<body>

<%--    <form action="userModify.do" method="post">--%>
<%--        <input type="text" name="id" hidden="hidden" value="${user.id}">--%>
<%--        用户名：<input type="text" name="name" value="${user.name}" placeholder="输入用户名（必填）"><br>--%>
<%--        手机号：<input type="text" name="tel" value="${user.tel}" placeholder="输入手机号（必填）"><br>--%>
<%--        邮　箱：<input type="text" name="email" value="${user.email}" placeholder="输入邮箱"><br>--%>
<%--        地　址：<input type="text" name="address" value="${user.address}" placeholder="输入地址（必填）"><br>--%>
<%--        密　码：<input type="password" name="pass" value="${user.pass}" placeholder="输入密码（必填）"><br>--%>
<%--        是否为二手卖家：--%>
<%--        <input name="businessman" type="radio" value="true" ${user.businessman?"checked='checked'":""}/>是 　--%>
<%--        <input name="businessman" type="radio" value="false" ${user.businessman?"":"checked='checked'"}/>否<br>--%>
<%--        <input type="submit" value="更新"><br>--%>
<%--    </form>--%>

<%--    <a href="userModifyCancel.do">取消修改</a><br>--%>

<!-- 首部部分 start-->
<div class="top">
    <img class="title" src="images/mi-logo.png"/>
    <h4>用户修改</h4>
    <div class="middle">
        <form action="userModify.do" method="post" enctype="multipart/form-data">
            <div style="width:500px;float:left;margin:0 20px;">
                <input type="text" name="id" hidden="hidden" value="${user.id}">
                <br />
                <label for="username" class="l">用户名：</label>
                <div style="position:relative;display:inline;">
                    <input id="username" type="text" name="name" value="${user.name}" placeholder="  输入用户名（必填）" style="height:30px;width:300px;padding-right:50px;">
                </div>
                <br /><br />
                <label for="phonenumber" class="l">手机号：</label>
                <div class="d">
                    <input id="phonenumber" type="text" name="tel" value="${user.tel}" placeholder="  输入手机号（必填）" class="i" onkeyup="this.value=this.value.replace(/\D/g,'')"  maxlength="11">
                </div>
                <br /><br />
                <label for="email" class="l">邮　箱：</label>
                <div class="d">
                    <input id="email" name="email" value="${user.email}" placeholder="  输入邮箱" type="text" class="i">
                </div>
                <br /><br />
                <label for="username" class="l">地　址：</label>
                <div style="position:relative;display:inline;">
                    <input id="address" type="text" name="address" value="${user.address}" placeholder="  输入地址（必填）" style="height:30px;width:300px;padding-right:50px;">
                </div>
                <br /><br />
                <label for="login_password" class="l">密　码：</label>
                <div class="d">
                    <input id="login_password" type="password" value="${user.pass}" name="pass" placeholder="  输入密码（必填）" class="i">
                </div>
                <br /><br />
                <label for="confirm_password" class="l">确认密码：</label>
                <div class="d">
                    <input id="confirm_password" type="password" value="${user.pass}" placeholder="  输入密码（必填）" class="i">
                </div>
                <br /><br />
                <label class="1">是否为二手卖家：</label>
                <div class="d">
                    <input name="businessman" type="radio" value="true" ${user.businessman?"checked='checked'":""}/>是 　
                    <input name="businessman" type="radio" value="false" ${user.businessman?"":"checked='checked'"}/>否
                </div>
                <br /><br />
                <input type="submit" value="修改"
                       style="margin-left:30px;height:30px;width:300px;background-color:#FF6700;display:inline-block; border:none;color:white;font-size: 14px;" />
                <br>
                <p class="zhuce"><a href="userModifyCancel.do">取消修改</a></p>
            </div>
        </form>

    </div>
</div>
<!-- 首部部分 end -->

<script>
    $(function($) {
        checkUsername();
        checkPhone();
        checkEmail();
        checkAddress();
        checkPwd();
        checkRpwd();

        //选择注册按钮,绑定点击事件
        $('button').on("click", function() {
            reg();
        });
    });
    //设置一个标记
    var flag = false;
    //检测用户名
    var checkUsername = function() {
        $('#username').on("blur", function() {
            // var pattern = /^\w{6,18}$/;
            var element = $('#username');
            if (element.val()!="") {
                element.css("border", "2px solid green");
                flag = true;
            } else {
                element.css("border", "2px solid red");
                flag = false;
            }
        });
    }

    //检测手机号
    var checkPhone = function() {
        $('#phonenumber').on("blur", function() {
            var pattern = /^1(3|4|5|7|8|)\d{9}$/;
            var element = $('#phonenumber');
            if (pattern.test(element.val())) {
                element.css("border", "2px solid green");
                flag = true;
            } else {
                element.css("border", "2px solid red");
                flag = false;
            }
        });
    }

    //检测邮箱
    var checkEmail = function() {
        $('#email').on("blur", function() {
            var pattern = /^\w+@(\w+\.)+(([a-z]+)|([a-z]+\.[a-z]+))$/;
            var element = $('#email');
            if (pattern.test(element.val())) {
                element.css("border", "2px solid green");
                flag = true;
            } else {
                element.css("border", "2px solid red");
                flag = false;
            }
        });
    }

    //检测地址
    var checkAddress = function () {
        $('#address').on("blur", function() {
            // var pattern = /.*[\u4e00-\u9fa5]+.*$/;//判断含有汉字
            var element = $('#address');
            if (element.val()!="") {
                element.css("border", "2px solid green");
                flag = true;
            } else {
                element.css("border", "2px solid red");
                flag = false;
            }
        });
    }

    //检测密码
    var checkPwd = function() {
        $('#login_password').on("blur", function() {
            var pattern1 = /^[1-9]{6,18}$/;
            var pattern2 = /^[a-z]{6,18}$/;
            var pattern3 = /^[A-Z]{6,18}$/;
            var pattern4 = /^[0-9a-zA-Z~!@#$%^&*_-{6,18}]$/;
            var element = $('#login_password');
            if (pattern1.test(element.val()) || pattern2.test(element.val()) || pattern3.test(element.val()) || pattern4.test(element.val())) {
                element.css("border", "2px solid green");
                a = 11;
                flag = a;
            } else {
                element.css("border", "2px solid red");
                flag = false;
            }
        });
    }

    //检测再次输入的密码
    var checkRpwd = function() {
        $('#confirm_password').on("blur", function() {
            var element = $('#confirm_password');
            if (element.val() == $('#login_password').val() && element.val() != '' && element.val().length > 5 && element.val().length < 18) {
                element.css("border", "2px solid green");
            } else {
                element.css("border", "2px solid red");
            }
        });
    }

    //注册
    //给提交按钮绑定一个点击事件,在点击事件中提交输入的内容
    var reg = function() {
        if (flag) {
            loading();
            $.post("url提交地址", {
                    "username": $('#username').val(),
                    "phone": $('#phone').val(),
                    "email": $('#email').val(),
                    "sex": getRadios('sex'),
                    "password": $('#password').val()
                },
                function(data) {
                    if (data.status) {
                        msg_box(data.msg);
                    } else {
                        msg_box(data.msg, false);
                    }
                }, 'json');
        }
    }

    function loading() {
        $('#bg').css('display', 'block'); //显示背景
        $('#msg-box').css('display', 'block'); //显示消息框
        $('#msg-box').addClass("loading"); //显示加载中图片
    }

    function msg_box(msg, flag = true) {
        $('#bg').css('display', 'block'); //显示背景
        $('#msg-box').css('display', 'block').removeClass('loading'); //显示消息框,并移除加载中图片
        flag = flag ? 'success' : 'error';
        $('#msg-box').addClass(flag);
        $('#msg-box').html(msg);
        var sec = 3;
        $('#msg-box').html(msg + sec + '秒后跳转...');
        setInterval(function() {
            sec--;
            $('#msg-box').html(msg + sec + '秒后跳转...');
            if (sec == 0) {
                // location.href = 'http://www.baidu.com';	//跳转页面
            }

        }, 1000);
    }
</script>

</body>
</html>
