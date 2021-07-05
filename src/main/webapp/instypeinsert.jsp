<%@ page import="com.yuerhuixue.pojo.Instype" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: pocoa
  Date: 2021/6/24
  Time: 9:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加乐器类型</title>
</head>
<body>

    <form action="instypeInsert.do" method="post" enctype="multipart/form-data">
        乐器类型：<input type="text" name="name" placeholder="输入乐器类型名（必填）"><br>
        图　片：<input type="file" name="pic"><br>
        描　　述：<input type="text" name="description" placeholder="输入描述"><br>
        <input type="submit" value="添加"><br>
    </form>

    <a href="instypeList.do">取消添加</a><br>

</body>
</html>
