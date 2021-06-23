<%--
  Created by IntelliJ IDEA.
  User: pocoa
  Date: 2021/6/23
  Time: 11:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <form action="instrumentModify.do" method="post">
        乐器名：<input type="text" name="name" value="${instrument.name}" placeholder="输入乐器名（必填）"><br>
        类型名：<input type="text" name="instype" value="${instrument.instype}" placeholder="输入类型名"><br>
        价　格：<input type="text" name="price" value="${instrument.price}" placeholder="输入价格（必填）"><br>
        库　存：<input type="text" name="stock" value="${instrument.stock}" placeholder="输入库存（必填）"><br>
        图片地址：<input type="text" name="picpath" value="${instrument.picpath}" placeholder="输入图片地址"><br>
        品　牌：<input type="text" name="brand" value="${instrument.brand}" placeholder="输入品牌"><br>
        描　述：<input type="text" name="description" value="${instrument.description}" placeholder="输入描述"><br>
        <input type="submit" value="更新"><br>
    </form>

</body>
</html>
