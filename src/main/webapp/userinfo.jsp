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
    <title>Title</title>
</head>
<body>

    <table>
        <tr>
            <td>用户名</td>
            <td>${user.name}</td>
        </tr>
        <tr>
            <td>手机号</td>
            <td>${user.tel}</td>
        </tr>
        <tr>
            <td>邮箱</td>
            <td>${user.email}</td>
        </tr>
        <tr>
            <td>地址</td>
            <td>${user.address}</td>
        </tr>
        <tr>
            <td>密码</td>
            <td>${user.pass}</td>
        </tr>
        <tr>
            <td>是否为二手卖家</td>
            <td><%
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
                %>
            </td>
        </tr>
    </table>

    <a href="usersuccessful.jsp">返回个人中心</a>

</body>
</html>
