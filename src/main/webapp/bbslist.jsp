<%@ page import="java.util.List" %>
<%@ page import="com.yuerhuixue.pojo.Bbs" %>
<%@ page import="com.yuerhuixue.pojo.Instrument" %>
<%@ page import="com.yuerhuixue.pojo.User" %><%--
  Created by IntelliJ IDEA.
  User: pocoa
  Date: 2021/6/23
  Time: 9:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>社区</title>
</head>
<link rel="stylesheet" href="bbs/css/head.css"/>
<style>

    .table11_7 table {
        width:100%;
        margin:15px 0;
        border:0;
    }
    .table11_7 th {
        background-color:#00A5FF;
        color:#FFFFFF
    }
    .table11_7,.table11_7 th,.table11_7 td {
        font-size:0.95em;
        text-align:left;
        padding:4px;
        border-collapse:collapse;
    }
    .table11_7 th,.table11_7 td {
        border: 1px solid #2087fe;
        border-width:1px 0 1px 0;
        border:2px inset #ffffff;
    }
    .table11_7 tr {
        border: 1px solid #ffffff;
    }
    /*.table11_7 tr:nth-child(odd){*/
        /*background-color:#aae1fe;*/
    /*}*/
    .table11_7 tr:nth-child(even){
        background-color:#ffffff;
    }

</style>


<body>
<%
    User user=(User)session.getAttribute("user");
    String msg="当前未登录";
    if (user!=null){
        msg="当前用户："+user.getName();
    }
%>
<div class="dvhead">
    <div class="dvlogo"><a href="shequ.do">社区</a></div>
    <div class="dvreg"><%=msg%></div>
    <!-- <div class="dvreg">
        用户名：&nbsp;<a>用户</a>
    </div> -->
</div>
<div>
    <br>
    <a href="shequad.do">　添加内容　</a>
    <a href="userindexsend.jsp" style="float: right">　返回首页　</a><br>
    <br>
</div>
<table class="table11_7" >
    <thead>
    <tr>
        <th>用户</th>
        <th>题目</th>
        <th>内容</th>
    </tr>
    </thead>
    <tbody>
    <%
        List<Bbs> shequs = (List<Bbs>) session.getAttribute("shequs");
        for (Bbs shequ : shequs) {
    %>
    <tr>
        <td><%=shequ.getUser()%></td>
        <td><%=shequ.getType()%></td>
        <td><%=shequ.getContent()%></td>
    </tr>
    <%
        }
    %>

    </tbody>
</table>

</body>
</html>
