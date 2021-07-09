<%@ page import="java.util.List" %>
<%@ page import="com.yuerhuixue.pojo.Instrument" %>
<%@ page import="com.yuerhuixue.pojo.User" %>
<%@ page import="com.yuerhuixue.pojo.Instype" %><%--
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
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/xiaomi.css">
    <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
    <script src="js/jquery.animate-colors-min.js"></script>

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="fonts/iconfont.css">
    <link rel="stylesheet" href="fonts/demo.css">
    <link rel="stylesheet" href="css/base1.css">
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/list.css">
</head>
<body>

<%--    <table border="1" cellspacing="0" cellpadding="5">--%>
<%--        <thead>--%>
<%--        <tr>--%>
<%--            <th>类型</th>--%>
<%--            <th>乐器名</th>--%>
<%--            <th>价格</th>--%>
<%--            <th>库存</th>--%>
<%--            <th>图片地址</th>--%>
<%--            <th>品牌</th>--%>
<%--            <th>描述</th>--%>
<%--        </tr>--%>
<%--        </thead>--%>
<%--        <tbody>--%>
<%--        <%--%>
<%--            List<Instrument> findInstruments = (List<Instrument>) request.getAttribute("findInstruments");--%>
<%--            for (Instrument findInstrument : findInstruments) {--%>
<%--                %>--%>
<%--                <tr>--%>
<%--                    <td><%=findInstrument.getInstype().getName()%></td>--%>
<%--                    <td><%=findInstrument.getName()%></td>--%>
<%--                    <td><%=findInstrument.getPrice()%></td>--%>
<%--                    <td><%=findInstrument.getStock()%></td>--%>
<%--                    <td>--%>
<%--                        <%--%>
<%--                            if(findInstrument.getPicpath() != null && findInstrument.getPicpath().length() != 0){--%>
<%--                        %>--%>
<%--                        <img src="<%=findInstrument.getPicpath()%>" width="100" height="100"--%>
<%--                             alt="<%=findInstrument.getPicpath().substring(findInstrument.getPicpath().lastIndexOf("/") + 1)%>"--%>
<%--                             title="<%=findInstrument.getPicpath().substring(findInstrument.getPicpath().lastIndexOf("/") + 1)%>">--%>
<%--                        <%--%>
<%--                            }--%>
<%--                        %>--%>
<%--                    </td>--%>
<%--                    <td><%=findInstrument.getBrand()%></td>--%>
<%--                    <td><%=findInstrument.getDescription()%></td>--%>
<%--                </tr>--%>
<%--                <%--%>
<%--            }--%>
<%--        %>--%>
<%--        </tbody>--%>
<%--    </table>--%>

<%--    <a href="instypeList.do">返回乐器类型</a><br>--%>

<style>
    .dropbtn {
        margin-top: 10px;
        margin-bottom: 10px;
        padding: #px;
        font-size: #px;
        border: none;
        background-color: #424242;
        color: #fff;
    }
    .dropdown {
        position: relative;
        display: inline-block;
    }
    .dropdown-content {
        display: none;
        position: absolute;
        background-color: lightgrey;
        min-width: #px;
        z-index: 1;
    }
    .dropdown-content a {
        color: black;
        padding: #px #px;
        text-decoration: none;
        display: block;
    }
    .dropdown-content a:hover {background-color: white;}
    .dropdown:hover .dropdown-content {display: block;}
    .dropdown:hover .dropbtn {background-color: grey;}
</style>
<body>
<div class="head_box">
    <div id="head_wrap">
        <div id="head_nav">
            <a class="head_nav_a">悦耳官网</a>
            <span>|</span>
            <a class="head_nav_a">悦聊</a>
            <span>|</span>
            <a class="head_nav_a">悦游戏</a>
            <span>|</span>
            <a class="head_nav_a">悦读</a>
            <span>|</span>
            <a class="head_nav_a">悦服务</a>
            <span>|</span>
            <a class="head_nav_a">问题反馈</a>
        </div>

        <%
            User user = (User) session.getAttribute("user");
            if (user!=null){
        %>
        <div id="head_right">
            <div class="dropdown" id="head_car">
                <button class="dropbtn"><%=user.getName()%></button>
                <div class="dropdown-content" id="car_content" style="height: 0px;width:0px ;background-color: #edffc6;z-index: 999">
                    <a href="userinfo.jsp">个人信息</a>
                    <a href="userLogout.do">注销登录</a>
                </div>
            </div>
        </div>
        <%
        }else {
        %>
        <div id="head_right">
            <div id="head_landing">
                <a href="userlogin.jsp" class="head_nav_a">登录</a>
                <span>|</span>
                <a href="userregister.jsp" class="head_nav_a">注册</a>
            </div>
        </div>
        <%
            }
        %>
    </div>
</div>

<!-- header头部模块制作 start -->
<header class="header w">
    <!-- logo模块 -->
    <div class="logo">
        <h1>
            <a href="userIndex.do" title="悦耳官网"></a>
        </h1>
    </div>
    <!-- search搜索模块 -->
    <div class="search">
        <input type="search" name="" id="" placeholder="乐器名称">
        <button>搜索</button>
    </div>
    <!-- hotwords模块制作 -->
    <div class="hotwords">
        <a href="javascript:;" class="style_red">优惠购首发</a>
        <a href="javascript:;">亿元优惠</a>
        <a href="javascript:;">999元团购</a>
        <a href="javascript:;">满9999减300</a>
    </div>
    <!-- 购物车模块 -->
    <div class="shopcar">
        <a href="#">我的购物车</a>
        <%--        <i class="count">2</i>--%>
    </div>
</header>

<%
    List<Instype> instypes = (List<Instype>) request.getAttribute("instypes");
    Instype instype = (Instype) request.getAttribute("instype");
    List<Instrument> findInstruments = (List<Instrument>) request.getAttribute("findInstruments");
%>

<!-- nav模块制作 start -->
<nav class="nav">
    <div class="w">
        <div class="sk_list">
            <ul>
                <li><a href="javascript:;">当前类型：<%=instype.getName()%></a></li>
            </ul>
        </div>
        <div class="sk_con">
            <ul>
            <%
                for (Instype instype1 : instypes) {
                    if (!instype.getName().equals(instype1.getName())){
                        %>
                            <li><a href="instypeToInstrument.do?id=<%=instype1.getId()%>"><%=instype1.getName()%></a></li>
                        <%
                    }
                }
            %>
            </ul>
        </div>
    </div>
</nav>

<!-- nav模块制作 end -->
<!-- 列表页主体部分 -->
<div class="w sk_container">
    <div class="sk_hd">
        <img src="images/bg_03.jpg" alt="">
    </div>
    <div class="sk_bd">
        <ul>
            <%
                for (Instrument findInstrument : findInstruments) {

                    %>
                    <li>
                        <dl>
                            <dt><a href="instrumentInfo.do?id=<%=findInstrument.getId()%>"><img src="<%=findInstrument.getPicpath()%>" width="290px" height="290px"
                                                alt="<%=findInstrument.getPicpath().substring(findInstrument.getPicpath().lastIndexOf("/") + 1)%>"
                                                title="<%=findInstrument.getPicpath().substring(findInstrument.getPicpath().lastIndexOf("/") + 1)%>"></a></dt>
                            <dd class="title"><a href="instrumentInfo.do?id=<%=findInstrument.getId()%>"><strong style="color: #4E5465">乐器：<%=findInstrument.getName()%></strong></a></dd>
                            <dd class="title"><a>描述：<%=findInstrument.getDescription()%></a></dd>
                            <dd class="content">
                                <span class="goods_jiage"><strong style="color: red">价格：￥<%=findInstrument.getPrice()%></strong></span>
                            </dd>
                        </dl>
                    </li>
                    <%
                }

            %>

        </ul>
    </div>
<%--    <div class="fenye">--%>
<%--        <a href="#" class="ss">&lt;&lt;上一页</a>--%>
<%--        <a href="#" style="border: 0;">1</a>--%>
<%--        <a href="list1.html">2</a>--%>
<%--        <a href="list2.html">3</a>--%>
<%--        <a href="list3.html">4</a>--%>
<%--        <a href="list4.html">5</a>--%>
<%--        <a href="#" style="border: 0;">...</a>--%>
<%--        <a href="list1.html" class="ss">下一页&gt;&gt;</a>--%>
<%--        <span>跳转至第</span>--%>
<%--        <input type="text" value="2">--%>
<%--        <b>页</b>--%>
<%--        <button>确认</button>--%>
<%--    </div>--%>
</div>

<br>

<div id="foot_box">
    <div id="foot_wrap">
        <div class="foot_top">
            <ul>
                <li>1小时快修服务</li>
                <li class="font_top_i">|</li>
                <li>7天无理由退货</li>
                <li class="font_top_i">|</li>
                <li>15天免费换货</li>
                <li class="font_top_i">|</li>
                <li>满199元包邮</li>
                <li class="font_top_i">|</li>
                <li>独家售后网点</li>
            </ul>
        </div>
        <div class="foot_bottom">
            <div class="foot_bottom_l">
                <dl>
                    <dt>帮助中心</dt>
                    <dd>购物指南</dd>
                    <dd>支付方式</dd>
                    <dd>配送方式</dd>
                </dl>
                <dl>
                    <dt>服务支持</dt>
                    <dd>售后政策</dd>
                    <dd>自助服务</dd>
                    <dd>相关下载</dd>
                </dl>
                <dl>
                    <dt>悦耳之家</dt>
                    <dd>悦耳之家</dd>
                    <dd>服务网点</dd>
                    <dd>预约亲临到店服务</dd>
                </dl>
                <dl>
                    <dt>关注我们</dt>
                    <dd>新浪微博</dd>
                    <dd>悦耳部落</dd>
                    <dd>官方微信</dd>
                </dl>
            </div>
            <div class="foot_bottom_r">
                <a>400-100-5678</a>
                <a>周一至周日 8:00-18:00</a>
                <a>（仅收市话费）</a>
                <span> 24小时在线客服</span>
            </div>
        </div>
    </div>
    <div class="foot_note_box">
        <div class="foot_note_wrap">
            <div class="foot_note_con">
                <span class="foot_logo"><img src="images/mi-logo.png" width="38px" height="38px"></span>
                <span class="foot_note_txt">
                    <a>悦耳官网</a><h>|</h><a>悦聊</a><h>|</h><a>悦游戏</a><h>|</h><a>悦读</a><h>|</h>
                    <a>悦服务</a><h>|</h><a>问题反馈</a>
                </span>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript" src="js/xiaomi.js"></script>

</body>
</html>
