<%@ page import="com.yuerhuixue.pojo.User" %>
<%@ page import="com.yuerhuixue.pojo.Instrument" %>
<%--
  Created by IntelliJ IDEA.
  User: pocoa
  Date: 2021/7/14
  Time: 16:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>购物车</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="js/shap_car.js"></script>
    <link rel="stylesheet" href="css/base2.css">
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/shap_car.css">

    <link rel="stylesheet" href="css/xiaomi.css">
    <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
    <script src="js/jquery.animate-colors-min.js"></script>

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="fonts/iconfont.css">
    <link rel="stylesheet" href="fonts/demo.css">
    <link rel="stylesheet" href="css/base1.css">
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/xiangqing.css">
</head>
<body>

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

<div class="content w">
    <div id="main">
        <div class="container">
            <div id="cart">
                <div class="user">
                    <ul>
                        <li>
                            <a href="userinfo.jsp"><%=user.getName()%></a>
                        </li>
                        <li><a href="">待付款</a></li>
                        <li><a href="">待发货</a></li>
                        <li><a href="">待收货</a></li>
                        <li><a href="">待评价</a></li>
                    </ul>
                </div>
                <form>
                    <table class="form">
                        <thead>
                        <tr>
                            <th width="8%">选择</th>
                            <th width="50%">商品</th>
                            <th width="13%">单价(元)</th>
                            <th width="15%">数量</th>
                            <th width="14%">金额(元)</th>
                        </tr>
                        </thead>
                        <tfoot>
                        <tr>
                            <td colspan="2">
                                <label>
                                    <input type="checkbox" name="all" />
                                    <span>全选</span>
                                </label>
                                <a href="#" id="cart-delete">删除</a>
                            </td>
                            <td colspan="3">
                                <span>合计:</span>
                                <strong id=total-amount>￥<em>0.00</em></strong>
                                <a href="#">
                                    <input type="button" value="立即结算" id="settlement" />
                                </a>
                            </td>
                        </tr>
                        </tfoot>
                        
                        <%
                            Instrument shoppingCart = (Instrument) request.getAttribute("shoppingCart");
                        %>
                        <tbody id="cart-goods-list">
                        <tr>
                            <td>
                                <input type="checkbox" name="id" checked="checked" />
                            </td>
                            <td class="goods">
                                <div class="goods-image">
                                    <img src="<%=shoppingCart.getPicpath()%>"
                                         alt="<%=shoppingCart.getPicpath().substring(shoppingCart.getPicpath().lastIndexOf("/") + 1)%>"
                                         title="<%=shoppingCart.getPicpath().substring(shoppingCart.getPicpath().lastIndexOf("/") + 1)%>">
                                </div>
                                <div class="goods-information">
                                    <h3><%=shoppingCart.getName()%></h3>
                                    <ul>
                                        <li><%=shoppingCart.getBrand()%></li>
                                        <li>支持退换货</li>
                                    </ul>
                                </div>
                            </td>
                            <td>
                                <span class="price">￥<em><%=shoppingCart.getPrice()%></em></span>
                            </td>
                            <td>
                                <div class="combo">
                                    <input type="button" name="minus" value="-" class="combo-minus" />
                                    <input type="text" name="count" value="0" class="combo-value" />
                                    <input type="button" name="plus" value="+" class="combo-plus" />
                                </div>
                            </td>
                            <td>
                                <strong class="amount">￥<em>0.00</em></strong>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </form>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript" src="js/xiaomi.js"></script>

</body>
</html>
