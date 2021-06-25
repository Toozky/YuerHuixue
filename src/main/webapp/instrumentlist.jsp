<%@ page import="java.util.List" %>
<%@ page import="com.yuerhuixue.pojo.Instrument" %><%--
  Created by IntelliJ IDEA.
  User: pocoa
  Date: 2021/6/23
  Time: 9:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>乐器管理</title>
</head>
<body>

    <table>
        <thead>
            <tr>
                <th>乐器名</th>
                <th>类型</th>
                <th>价格</th>
                <th>库存</th>
                <th>图片地址</th>
                <th>品牌</th>
                <th>描述</th>
                <th>操作1</th>
                <th>操作2</th>
            </tr>
        </thead>
        <tbody>
        <%
            List<Instrument> instruments = (List<Instrument>) session.getAttribute("instruments");

            for (Instrument instrument : instruments) {
                %>
                <tr>
                    <td><%=instrument.getName()%></td>
                    <td><%=instrument.getInstype().getName()%></td>
                    <td><%=instrument.getPrice()%></td>
                    <td><%=instrument.getStock()%></td>
                    <td><%=instrument.getPicpath()%></td>
                    <td><%=instrument.getBrand()%></td>
                    <td><%=instrument.getDescription()%></td>
                    <td><a href="instrumentModifyPage.do?id=<%=instrument.getId()%>">修改</a></td>
                    <td><a href="instrumentDelete.do?id=<%=instrument.getId()%>">删除</a></td>
                </tr>
                <%
            }
        %>

        </tbody>
    </table>

    <a href="index.jsp">返回首页</a><br>

</body>
</html>
