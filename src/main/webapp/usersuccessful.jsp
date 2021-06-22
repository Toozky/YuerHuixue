<%@ page import="com.yuerhuixue.pojo.User" %><%--
  Created by IntelliJ IDEA.
  User: pocoa
  Date: 2021/6/22
  Time: 8:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人中心</title>
</head>
<body>

    <%
        User user = (User) session.getAttribute("user");
        if (user == null){
            response.sendRedirect("userlogin.jsp");
        }else {
            %>

    login successful!<br>
    <a href="usermodify.jsp">修改个人信息</a><br>
    <a href="userDelete.do">删除用户</a><br>
    <a href="logout.do">注销用户</a>

            <%
        }
    %>

</body>
</html>
