<%@ page import="com.yuerhuixue.pojo.Admin" %>
<%@ page import="java.util.List" %>
<%@ page import="com.yuerhuixue.pojo.User" %><%--
  Created by IntelliJ IDEA.
  User: pocoa
  Date: 2021/6/22
  Time: 8:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人中心</title>
</head>
<body>
<%
    Admin admin=(Admin)session.getAttribute("admin");
//    List<Admin> admins= (List<Admin>)session.getAttribute("admins");
    List<User> users=(List<User>)session.getAttribute("users");
%>
login successful!<br>
欢迎管理员：[<%=admin.getName()%>]访问用户管理系统！<br>
<hr>
<br>
管理员信息<br>
<table border="1px" cellspacing="0" cellpadding="5px">
    <tr>
        <td>ID</td>
        <td>姓名</td>
        <td>密码</td>

        <td>
            操作　
            <a href="adminRegisterPage.do">新建</a>
        </td>
    </tr>
    <tr>
        <td><%=admin.getId()%></td>
        <td><%=admin.getName()%></td>
        <td><%=admin.getPass()%></td>

        <td>
            <a href="adminModifyPage.do">修改</a>　
            <a href="adminDelete.do?id=<%=admin.getId()%>">删除</a>
        </td>
    </tr>
</table>

<hr>
用户信息表
<table border="1px" cellspacing="0" cellpadding="5px">
    <tr>
        <td>ID</td>
        <td>姓名</td>
        <td>电话</td>
        <td>电子邮箱</td>
        <td>地址</td>
        <td>密码</td>
        <td>是否二手卖家</td>
        <td>
            操作　
            <a href="admininsertuser.jsp">新建</a>
        </td>
    </tr>
    <%
        for (User user : users) {
    %>
    <tr>
        <td><%=user.getId()%></td>
        <td><%=user.getName()%></td>
        <td><%=user.getTel()%></td>
        <td><%=user.getEmail()%></td>
        <td><%=user.getAddress()%></td>
        <td><%=user.getPass()%></td>
        <td><%=user.getBusinessman()?"是":"否"%></td>
        <td>
            <a href="adminUpdateUserPage.do?id=<%=user.getId()%>">修改</a> 　
            <a href="adminDeleteUser.do?id=<%=user.getId()%>">删除</a>
        </td>
    </tr>
    <%
        }
    %>
</table>
<hr>

</body>
</html>
