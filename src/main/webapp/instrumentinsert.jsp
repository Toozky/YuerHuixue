<%--
  Created by IntelliJ IDEA.
  User: pocoa
  Date: 2021/6/25
  Time: 14:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加乐器</title>
</head>
<body>

    <form action="instrumentInsert.do" method="post">
        乐器名：<input type="text" name="name" placeholder="输入乐器名（必填）"><br>
        类型名：<input type="text" name="instype.name" placeholder="输入类型名"><br>
        价　格：<input type="text" name="price" placeholder="输入价格（必填）"><br>
        库　存：<input type="text" name="stock" placeholder="输入库存（必填）"><br>
        图片地址：<input type="text" name="picpath" placeholder="输入图片地址"><br>
        品　牌：<input type="text" name="brand" placeholder="输入品牌"><br>
        描　述：<input type="text" name="description" placeholder="输入描述"><br>
        <input type="submit" value="添加"><br>
    </form>
    
    <a href="instrumentlist.jsp">取消添加</a><br>

</body>
</html>
