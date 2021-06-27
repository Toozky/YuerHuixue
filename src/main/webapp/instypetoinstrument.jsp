<%@ page import="java.util.List" %>
<%@ page import="com.yuerhuixue.pojo.Instrument" %><%--
  Created by IntelliJ IDEA.
  User: pocoa
  Date: 2021/6/25
  Time: 16:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>当前类型乐器</title>
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
        </tr>
        </thead>
        <tbody>
        <%
            List<Instrument> findInstruments = (List<Instrument>) session.getAttribute("findInstruments");
            for (Instrument findInstrument : findInstruments) {
                %>
                <tr>
                    <td><%=findInstrument.getName()%></td>
                    <td><%=findInstrument.getInstype().getName()%></td>
                    <td><%=findInstrument.getPrice()%></td>
                    <td><%=findInstrument.getStock()%></td>
                    <td><%=findInstrument.getPicpath()%></td>
                    <td><%=findInstrument.getBrand()%></td>
                    <td><%=findInstrument.getDescription()%></td>
                </tr>
                <%
            }
        %>
        </tbody>
    </table>

    <a href="instypelist.jsp">返回乐器类型</a><br>

</body>
</html>
