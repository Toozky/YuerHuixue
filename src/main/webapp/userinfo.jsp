<%@ page import="com.yuerhuixue.pojo.User" %><%--
  Created by IntelliJ IDEA.
  User: pocoa
  Date: 2021/6/28
  Time: 9:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>个人信息</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/zhuce.css">
    <link rel="stylesheet" href="css/register1.css">
</head>
<body>

<%--    <table border="1" cellspacing="0" cellpadding="5">--%>
<%--        <tr>--%>
<%--            <td>用户名</td>--%>
<%--            <td>${user.name}</td>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--            <td>手机号</td>--%>
<%--            <td>${user.tel}</td>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--            <td>邮箱</td>--%>
<%--            <td>${user.email}</td>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--            <td>地址</td>--%>
<%--            <td>${user.address}</td>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--            <td>密码</td>--%>
<%--            <td>${user.pass}</td>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--            <td>是否为二手卖家</td>--%>
<%--            <td><%--%>
<%--                User user = (User) session.getAttribute("user");--%>
<%--                if (user.getBusinessman()){--%>
<%--                    %>--%>
<%--                    是--%>
<%--                    <%--%>
<%--                }else {--%>
<%--                    %>--%>
<%--                    否--%>
<%--                    <%--%>
<%--                }--%>
<%--                %>--%>
<%--            </td>--%>
<%--        </tr>--%>
<%--    </table>--%>

<%--    <a href="usersuccessful.jsp">返回个人中心</a>--%>

<!-- 首部部分 start-->
<div class="top">
    <img class="title" src="images/mi-logo.png"/>
    <h4>个人信息</h4>
    <div class="middle">
        <div style="width:500px;float:left;margin:0 20px;">
            <br />
            <label class="l">用户名：${user.name}</label>
            <br /><br />
            <label class="l">手机号：${user.tel}</label>
            <br /><br />
            <label class="l">邮　箱：${user.email}</label>
            <br /><br />
            <label class="l">地　址：${user.address}</label>
            <br /><br />
            <label class="l">密　码：${user.pass}</label>
            <br /><br />
            <label class="1">是否为商家：<%
                User user = (User) session.getAttribute("user");
                if (user.getBusinessman()){
            %>
                是
                <%
                }else {
                %>
                否
                <%
                    }
                %></label>
            <br /><br />
            <p class="zhuce"><a href="usermodify.jsp">修改信息</a>|<a href="userIndex.do">返回首页</a></p>
        </div>
    </div>
</div>
<!-- 首部部分 end -->


</body>
</html>
