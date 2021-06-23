<%@ page import="com.yuerhuixue.pojo.Admin" %>
<%@ page import="java.util.List" %><%--
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
%>
login successful!<br>
欢迎管理员：[<%=admin.getName()%>]访问用户管理系统！<br>
<hr>
<br>
管理员信息表<br>
<table>
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
            <a href="adminDelete.do">删除</a>
        </td>
    </tr>
</table>

<hr>
用户管理系统
<%--<table>
    <tr>
        <td>ID</td>
        <td>姓名</td>
        <td>密码</td>

        <td>
            操作　
            <a href="adminRegisterPage.do">新建</a>
        </td>
    </tr>
    <%
        for (Admin su : admins) {
    %>
    <tr>
        <td><%=su.getId()%></td>
        <td><%=su.getName()%></td>
        <td><%=su.getPass()%></td>

        <td>
            <a href="adminModifyPage.do?id=<%=su.getId()%>">修改</a>　
            <a href="adminDelete.do?id=<%=su.getId()%>">删除</a>
        </td>
    </tr>
    <%
        }
    %>
</table>--%>
<form>

</form>
</body>
</html>
