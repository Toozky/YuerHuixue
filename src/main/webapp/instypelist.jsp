<%@ page import="com.yuerhuixue.pojo.Instype" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: pocoa
  Date: 2021/6/23
  Time: 16:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>乐器类型管理</title>
</head>
<body>

    <table>
        <thead>
        <tr>
            <th>乐器类型名</th>
            <th>图片地址</th>
            <th>描述</th>
            <th>当前类型乐器</th>
            <th>操作1</th>
            <th>操作2</th>
        </tr>
        </thead>
        <tbody>
        <%
            List<Instype> instypes = (List<Instype>) session.getAttribute("instypes");
    
            for (Instype instype : instypes) {
                %>
                <tr>
                    <td><%=instype.getName()%></td>
                    <td><%=instype.getPicpath()%></td>
                    <td><%=instype.getDescription()%></td>
                    <td><a href="instypeToInstrument.do?id=<%=instype.getId()%>">查看</a></td>
                    <td><a href="instypeModifyPage.do?id=<%=instype.getId()%>">修改</a></td>
                    <td><a href="instypeDelete.do?id=<%=instype.getId()%>">删除</a></td>
                </tr>
                <%
            }
        %>
        </tbody>
    </table>

    <a href="instypeinsert.jsp">添加乐器类型</a><br>
    <a href="index.jsp">返回首页</a><br>


</body>
</html>
