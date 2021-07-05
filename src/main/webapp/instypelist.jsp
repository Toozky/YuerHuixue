<%@ page import="com.yuerhuixue.pojo.Instype" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: pocoa
  Date: 2021/6/23
  Time: 16:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>乐器类型管理</title>
</head>
<body>

    <table border="1" cellspacing="0" cellpadding="5">
        <thead>
        <tr>
            <th>乐器类型名</th>
            <th>图片</th>
            <th>描述</th>
            <th>当前类型乐器</th>
            <th>操作1</th>
            <th>操作2</th>
        </tr>
        </thead>
        <tbody>
        <%
            List<Instype> instypes = (List<Instype>) request.getAttribute("instypes");
    
            for (Instype instype : instypes) {
                %>
                <tr>
                    <td><%=instype.getName()%></td>
                    <td>
                        <%
                            if(instype.getPicpath() != null && instype.getPicpath().length() != 0){
                        %>
                        <img src="<%=instype.getPicpath()%>" width="100" height="100"
                             alt="<%=instype.getPicpath().substring(instype.getPicpath().lastIndexOf("/") + 1)%>"
                             title="<%=instype.getPicpath().substring(instype.getPicpath().lastIndexOf("/") + 1)%>">
                        <%
                            }
                        %>
                    </td>
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
