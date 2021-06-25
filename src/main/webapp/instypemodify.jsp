<%--
  Created by IntelliJ IDEA.
  User: pocoa
  Date: 2021/6/23
  Time: 16:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改乐器类型信息</title>
</head>
<body>

    <form action="instypeModify.do" method="post">
        <input type="text" name="id" hidden="hidden" value="${instype.id}">
        乐器类型：<input type="text" name="name" value="${instype.name}" placeholder="输入乐器类型名（必填）"><br>
        图片地址：<input type="text" name="picpath" value="${instype.picpath}" placeholder="输入图片地址"><br>
        描　　述：<input type="text" name="description" value="${instype.description}" placeholder="输入描述"><br>
        <input type="submit" value="更新"><br>
    </form>

    <a href="instypelist.jsp">取消修改</a><br>

</body>
</html>
