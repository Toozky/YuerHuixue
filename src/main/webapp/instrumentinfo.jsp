<%@ page import="com.yuerhuixue.pojo.User" %>
<%@ page import="com.yuerhuixue.pojo.Instrument" %>
<%@ page import="java.text.DecimalFormat" %><%--
  Created by IntelliJ IDEA.
  User: pocoa
  Date: 2021/7/9
  Time: 8:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>乐器详情</title>
    <meta charset="UTF-8">
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
            <a href="index2.html" title="悦耳官网"></a>
        </h1>
    </div>
    <!-- 列表页的秒杀模块 -->
    <div class="sk">
        <img src="images/sk.png" alt="">
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
        <a href="./shap_car.html">我的购物车</a>
<%--        <i class="count">2</i>--%>
    </div>
</header>
<!-- header头部模块制作 end -->

<!-- nav模块制作 start -->
<%--<nav class="nav">--%>
<%--    <div class="chanpin_nav w">--%>
<%--        <a href="javascript:;">全部产品</a>--%>
<%--        <a href="javascript:;">乐器配件</a>--%>
<%--        <a href="javascript:;">吉他分类</a>--%>
<%--        <a href="javascript:;">经典系列</a>--%>
<%--        <a href="javascript:;">预售系列</a>--%>
<%--        <a href="javascript:;">未来音乐科技</a>--%>
<%--        <a href="javascript:;">智能服务</a>--%>
<%--        <a href="javascript:;">以旧换新</a>--%>
<%--        <a href="javascript:;">中奖名单</a>--%>
<%--    </div>--%>
<%--</nav>--%>
<!-- nav模块制作 end -->

<%
    Instrument instrument = (Instrument) request.getAttribute("instrument");
%>

<!-- 中间部分开始 -->
<div class="content w">
    <div class="content_left">
        <img src="<%=instrument.getPicpath()%>" width="200" height="200"
             alt="<%=instrument.getPicpath().substring(instrument.getPicpath().lastIndexOf("/") + 1)%>"
             title="<%=instrument.getPicpath().substring(instrument.getPicpath().lastIndexOf("/") + 1)%>">
    </div>
    <div class="content_right">

        <p>
            <b><%=instrument.getName()%></b>
        </p>
        <span>
                <%=instrument.getDescription()%> <b> <a href="#">查看></a>
                </b>
            </span>
        <div class="maney">
            <p class="jd">
                价 格
                <span>￥<%=instrument.getPrice()%></span>
                <a href="#">降价通知</a>
            </p>
            <p class="leijia">
                累计评价<br>
                <a href="">1500+</a>
            </p>
            <p class="cx">
                促 销 价
                <span>满额返券</span>
                <b>购买乐器每满100元返1元优惠券</b>
            </p>
        </div>
        <div class="tainxie">
            <table>
                <tr>
                    <td>类 型</td>
                    <td><a style="border: 0"><%=instrument.getInstype().getName()%></a></td>
                </tr>
                <tr>
                    <td>品 牌</td>
                    <td><a style="border: 0"><%=instrument.getBrand()%></a></td>
                </tr>
                <tr>
                    <td>库  存</td>
                    <td><%=instrument.getStock()%></td>
                </tr>
                <tr>
                    <td>配 送 至</td>
                    <td colspan="1"> &nbsp;
                        <select>
                            <option>&nbsp&nbsp&nbsp&nbsp</option>
                            <%
                                if (user != null){
                                    %>
                                    <option><%=user.getAddress()%></option>
                                    <%
                                }
                            %>
                        </select>
                    </td>
                </tr>
            </table>
        </div>

        <div class="xuanze">
            <table>
                <tr>
                    <td>选择颜色</td>
                    <td colspan="2"> <a href="javascript:;">黑&nbsp;&nbsp;&nbsp;&nbsp;色</a>&nbsp;&nbsp;
                        <a href="javascript:;">白&nbsp;&nbsp;&nbsp;&nbsp;色</a>&nbsp;&nbsp;
                        <a href="javascript:;">灰&nbsp;&nbsp;&nbsp;&nbsp;色</a>
                    </td>
                </tr>
                <tr>
                    <td>套　　装</td>
                    <td>
                        <a href="javascript:;">优惠套装1</a> &nbsp;&nbsp;
                        <a href="javascript:;">优惠套装2</a>
                    </td>
                    <td colspan="2">
                        <a href="javascript:;">优惠套装3</a> &nbsp;
                        <a href="javascript:;">优惠套装4</a>
                    </td>
                </tr>
                <tr>
                    <td>增值保障</td>
                    <td>
                        <select>
                            <option>
                                <a href="javascript:;">3年全保修 ￥199.00</a>
                            </option>
                        </select>
                    </td>
                    <td>
                        <select>
                            <option>
                                <a href="javascript:;">3月任何问题退换 ￥299.00</a>
                            </option>
                        </select>
                    </td>
                    <td>
                        <select>
                            <option>
                                <a href="javascript:;">3年享无忧￥399.00</a>
                            </option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>服　　务</td>
                    <td>
                        <select>
                            <option>
                                <a href="javascript:;">上门调音￥99.00</a>
                            </option>
                        </select>
                    </td>
                    <td>
                        <select>
                            <option>
                                <a href="javascript:;">上门维修￥99.00</a>
                            </option>
                        </select>
                    </td>
                </tr>
                <%
                    DecimalFormat decimalFormat = new DecimalFormat(".##");
                %>
                <tr class="foot">
                    <td>白条分期</td>
                    <td colspan="3">
                        <a href="javascript:;">不分期</a>
                        <a href="javascript:;">￥<%=decimalFormat.format(instrument.getPrice()/3)%>×3期</a>
                        <a href="javascript:;">￥<%=decimalFormat.format(instrument.getPrice()/6)%>×6期</a>
                        <a href="javascript:;">￥<%=decimalFormat.format(instrument.getPrice()/12)%>×12期</a>
                        <a href="javascript:;">￥<%=decimalFormat.format(instrument.getPrice()/24)%>×24期</a>
                    </td>
                </tr>
            </table>
        </div>
        <!-- <button>购买</button> -->
        <a href="./dingdan.html">
            <input class="button" type="button" value="购买">
        </a>
    </div>
</div>

<!-- 中间部分结束 -->

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

<style>
    .copyrights{text-indent:-9999px;height:0;line-height:0;font-size:0;overflow:hidden;}
</style>

</body>
</html>
