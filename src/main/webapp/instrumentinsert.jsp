<%@ page import="com.yuerhuixue.pojo.Instype" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: pocoa
  Date: 2021/6/25
  Time: 14:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>添加乐器</title>
</head>
<body>

    <form action="instrumentInsert.do" method="post" enctype="multipart/form-data">
        乐器名：<input type="text" name="name" placeholder="输入乐器名（必填）"><br>
        类型名：
        <select name="instype.id">
            <%
                List<Instype> instypes = (List<Instype>) request.getAttribute("instypes");
                for (Instype instype : instypes) {
                    System.out.println(instype);
            %>
            <option value="<%=instype.getId()%>"><%=instype.getName()%></option>
            <%
                }
            %>
        </select><br>
        价　格：<input type="text" name="price" placeholder="输入价格（必填）"><br>
        库　存：<input type="text" name="stock" placeholder="输入库存（必填）"><br>
        图　片：<input type="file" name="pic"><br>
        品　牌：<input type="text" name="brand" placeholder="输入品牌"><br>
        描　述：<input type="text" name="description" placeholder="输入描述"><br>
        <input type="submit" value="添加"><br>
    </form>
    
    <a href="instrumentList.do">取消添加</a><br>

</body>
</html>
