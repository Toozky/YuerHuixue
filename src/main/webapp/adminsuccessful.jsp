<%@ page import="java.util.List" %>
<%@ page import="com.yuerhuixue.pojo.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html class="x-admin-sm">
<head>
    <meta charset="UTF-8">
    <title>管理员列表</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="stylesheet" href="./css/font.css">
    <link rel="stylesheet" href="./css/index.css">
    <script src="./lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="./js/index.js"></script>

</head>
<body>
<%
//    Admin admin=(Admin)session.getAttribute("admin");
//    List<Admin> admins= (List<Admin>)session.getAttribute("admins");
    List<User> users=(List<User>)session.getAttribute("users");
%>
<div class="x-nav">
          <span class="layui-breadcrumb">
            <a href="">首页</a>
            <a>
              <cite>用户管理</cite>
            </a>
            <a>　当前管理员：${admin.name}</a>
          </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" onclick="location.reload()" title="刷新">
        <i class="layui-icon layui-icon-refresh" style="line-height:30px"></i></a>
</div>
<div class="layui-fluid">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-md12">
            <div class="layui-card">
                <div class="layui-card-body ">
                    <form class="layui-form layui-col-space5">
                        <div class="layui-inline layui-show-xs-block">
                            <input class="layui-input"  autocomplete="off" placeholder="开始日" name="start" id="start">
                        </div>
                        <div class="layui-inline layui-show-xs-block">
                            <input class="layui-input"  autocomplete="off" placeholder="截止日" name="end" id="end">
                        </div>
                        <div class="layui-inline layui-show-xs-block">
                            <input type="text" name="username"  placeholder="请输入用户名" autocomplete="off" class="layui-input">
                        </div>
                        <div class="layui-inline layui-show-xs-block">
                            <button class="layui-btn"  lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
                        </div>
                    </form>
                </div>
                <div class="layui-card-header">
                    <button class="layui-btn layui-btn-danger" onclick="delAll()"><i class="layui-icon"></i>批量删除</button>
                    <button class="layui-btn" onclick="xadmin.open('添加管理员','adminRegisterPage.do',600,400)"><i class="layui-icon"></i>添加管理员</button>
                    <button class="layui-btn" onclick="xadmin.open('添加用户','admininsertuser.jsp',600,400)"><i class="layui-icon"></i>添加用户</button>
                </div>
                <div class="layui-card-body ">
                    管理员信息：
                    <table class="layui-table layui-form">
                        <thead>
                        <tr>
                            <th>选择</th>
                            <th>ID</th>
                            <th>登录名</th>
                            <th>密码</th>
                            <th>邮箱</th>
                            <th>角色</th>
                            <th>加入时间</th>
                            <th>状态</th>
                            <th>操作</th>
                        </thead>
                        <tbody>
                        <tr>
                            <td>
                                <input type="checkbox" name=""  lay-skin="primary">
                            </td>
                            <td>${admin.id}</td>
                            <td>${admin.name}</td>
                            <td>${admin.pass}</td>
                            <td>123456789@qq.com</td>
                            <td>超级管理员</td>
                            <td>2017-01-01 11:11:42</td>
                            <td class="td-status">
                                <span class="layui-btn layui-btn-normal layui-btn-mini">已启用</span></td>
                            <td class="td-manage">
                                <a onclick="member_stop(this,'10001')" href="javascript:;"  title="启用">
                                    <i class="layui-icon">&#xe601;</i>
                                </a>
                                <a title="编辑"  onclick="xadmin.open('编辑','adminModifyPage.do')" href="javascript:;">
                                    <i class="layui-icon">&#xe642;</i>
                                </a>
                                <a title="删除" onclick="member_del(this,'adminDelete.do?id=${admin.id}')" href="javascript:;">
                                    <i class="layui-icon">&#xe640;</i>
                                </a>
                            </td>
                        </tr>
                        </tbody>
                    </table>
用户信息：
                    <table class="layui-table layui-form">
                        <thead>
                        <tr>
                            <th>选择</th>
                            <th>ID</th>
                            <th>姓名</th>
                            <th>电话</th>
                            <th>电子邮箱</th>
                            <th>地址</th>
                            <th>密码</th>
                            <th>是否二手卖家</th>
                            <th>状态</th>
                            <th>操作　新建</th>
                        </thead>
                        <tbody>
                        <%
                            for (User user : users) {
                        %>
                        <tr>
                            <td>
                                <input type="checkbox" name=""  lay-skin="primary">
                            </td>
                            <td><%=user.getId()%></td>
                            <td><%=user.getName()%></td>
                            <td><%=user.getTel()%></td>
                            <td><%=user.getEmail()%></td>
                            <td><%=user.getAddress()%></td>
                            <td><%=user.getPass()%></td>
                            <td><%=user.getBusinessman()?"是":"否"%></td>
                            <td class="td-status">
                                <span class="layui-btn layui-btn-normal layui-btn-mini">已启用</span>
                            </td>
                            <td class="td-manage">
                                <a onclick="member_stop(this,'10001')" href="javascript:;"  title="启用">
                                    <i class="layui-icon">&#xe601;</i>
                                </a>
                                <a title="编辑"  onclick="xadmin.open('编辑','adminUpdateUserPage.do?id=<%=user.getId()%>')" href="javascript:;">
                                    <i class="layui-icon">&#xe642;</i>
                                </a>
                                <a title="删除" onclick="member_del(this,'要删除的id')" href="adminDeleteUser.do?id=<%=user.getId()%>">
                                    <i class="layui-icon">&#xe640;</i>
                                </a>
                            </td>
                        </tr>
                        <%
                            }
                        %>
                        </tbody>
                    </table>
                </div>
                <div class="layui-card-body ">
                    <div class="page">
                        <div>
                            <a class="prev" href="">&lt;&lt;</a>
                            <span class="current">1</span>
                            <a class="num" href="">2</a>
                            <a class="next" href="">&gt;&gt;</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<script>
    layui.use(['laydate','form'], function(){
        var laydate = layui.laydate;
        var form = layui.form;

        //执行一个laydate实例
        laydate.render({
            elem: '#start' //指定元素
        });

        //执行一个laydate实例
        laydate.render({
            elem: '#end' //指定元素
        });
    });

    /*用户-停用*/
    function member_stop(obj,id){
        layer.confirm('确认要停用吗？',function(index){

            if($(obj).attr('title')=='启用'){

                //发异步把用户状态进行更改
                $(obj).attr('title','停用')
                $(obj).find('i').html('&#xe62f;');

                $(obj).parents("tr").find(".td-status").find('span').addClass('layui-btn-disabled').html('已停用');
                layer.msg('已停用!',{icon: 5,time:1000});

            }else{
                $(obj).attr('title','启用')
                $(obj).find('i').html('&#xe601;');

                $(obj).parents("tr").find(".td-status").find('span').removeClass('layui-btn-disabled').html('已启用');
                layer.msg('已启用!',{icon: 5,time:1000});
            }

        });
    }

    /*用户-删除*/
    function member_del(obj,id){
        layer.confirm('确认要删除吗？',function(index){
            //发异步删除数据
            $(obj).parents("tr").remove();
            layer.msg('已删除!',{icon:1,time:1000});
        });
    }



    function delAll (argument) {

        var data = tableCheck.getData();

        layer.confirm('确认要删除吗？'+data,function(index){
            //捉到所有被选中的，发异步进行删除
            layer.msg('删除成功', {icon: 1});
            $(".layui-form-checked").not('.header').parents('tr').remove();
        });
    }
</script>
<script>var _hmt = _hmt || []; (function() {
    var hm = document.createElement("script");
    hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";
    var s = document.getElementsByTagName("script")[0];
    s.parentNode.insertBefore(hm, s);
})();</script>
</html>
