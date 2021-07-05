<%@ page import="com.yuerhuixue.pojo.Instype" %>
<%@ page import="java.util.List" %>
<%@ page import="com.yuerhuixue.pojo.Instrument" %><%--
  Created by IntelliJ IDEA.
  User: pocoa
  Date: 2021/6/23
  Time: 11:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>修改乐器信息</title>
</head>
<body>

    <%
        Instrument instrument = (Instrument) request.getAttribute("instrument");
    %>
    <form action="instrumentModify.do" method="post" enctype="multipart/form-data">
        <input type="text" name="id" hidden="hidden" value="${instrument.id}">
        乐器名：<input type="text" name="name" value="${instrument.name}" placeholder="输入乐器名（必填）"><br>
        类型名：
        <select name="instype.id">
            <option value="${instrument.instype.id}">${instrument.instype.name}</option>
            <%
                List<Instype> instypes = (List<Instype>) request.getAttribute("instypes");
                for (Instype instype : instypes) {
                    if (instrument.getInstype().getId() != instype.getId()){
                    %>
                    <option value="<%=instype.getId()%>"><%=instype.getName()%></option>
                    <%
                    }
                }
            %>
        </select><br>
        价　格：<input type="text" name="price" value="${instrument.price}" placeholder="输入价格（必填）"><br>
        库　存：<input type="text" name="stock" value="${instrument.stock}" placeholder="输入库存（必填）"><br>
        图　片：<input type="file" name="pic"><br>
        品　牌：<input type="text" name="brand" value="${instrument.brand}" placeholder="输入品牌"><br>
        描　述：<input type="text" name="description" value="${instrument.description}" placeholder="输入描述"><br>
        <input type="submit" value="更新"><br>
    </form>

    <a href="instrumentList.do">取消修改</a><br>

</body>
</html>
