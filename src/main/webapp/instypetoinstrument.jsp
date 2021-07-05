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

    <table border="1" cellspacing="0" cellpadding="5">
        <thead>
        <tr>
            <th>类型</th>
            <th>乐器名</th>
            <th>价格</th>
            <th>库存</th>
            <th>图片地址</th>
            <th>品牌</th>
            <th>描述</th>
        </tr>
        </thead>
        <tbody>
        <%
            List<Instrument> findInstruments = (List<Instrument>) request.getAttribute("findInstruments");
            for (Instrument findInstrument : findInstruments) {
                %>
                <tr>
                    <td><%=findInstrument.getInstype().getName()%></td>
                    <td><%=findInstrument.getName()%></td>
                    <td><%=findInstrument.getPrice()%></td>
                    <td><%=findInstrument.getStock()%></td>
                    <td>
                        <%
                            if(findInstrument.getPicpath() != null && findInstrument.getPicpath().length() != 0){
                        %>
                        <img src="<%=findInstrument.getPicpath()%>" width="100" height="100"
                             alt="<%=findInstrument.getPicpath().substring(findInstrument.getPicpath().lastIndexOf("/") + 1)%>"
                             title="<%=findInstrument.getPicpath().substring(findInstrument.getPicpath().lastIndexOf("/") + 1)%>">
                        <%
                            }
                        %>
                    </td>
                    <td><%=findInstrument.getBrand()%></td>
                    <td><%=findInstrument.getDescription()%></td>
                </tr>
                <%
            }
        %>
        </tbody>
    </table>

    <a href="instypeList.do">返回乐器类型</a><br>

</body>
</html>
