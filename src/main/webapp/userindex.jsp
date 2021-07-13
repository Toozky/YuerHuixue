<%@ page import="com.yuerhuixue.pojo.Instrument" %>
<%@ page import="java.util.List" %>
<%@ page import="com.yuerhuixue.pojo.Instype" %>
<%@ page import="com.yuerhuixue.pojo.User" %>
<%--
  Created by IntelliJ IDEA.
  User: pocoa
  Date: 2021/7/6
  Time: 9:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head lang="en">
    <title>悦耳慧学</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/xiaomi.css">
    <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
    <script src="js/jquery.animate-colors-min.js"></script>

    <%
        List<Instrument> instruments = (List<Instrument>) request.getAttribute("instruments");
        List<Instype> instypes = (List<Instype>) request.getAttribute("instypes");
    %>
</head>
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

<div id="main_head_box">
    <div id="menu_wrap">
        <div id="menu_logo">
            <img src="images/logon.png">
        </div>
        <div id="menu_nav">
            <ul>
                <li class="menu_li">中国传统乐器</li>
                <li class="menu_li">弦乐</li>
                <li class="menu_li">管乐</li>
                <li class="menu_li">儿童乐器</li>
                <li class="menu_li">打击乐</li>
                <li class="menu_li">其他</li>
                <li class="menu_li">服务</li>
                <li class="menu_li"><a href="shequ.do">社区</a></li>
            </ul>
        </div>
        <div id="find_wrap">
            <div id="find_bar">
                <input type="text" id="find_input">
            </div>
            <div id="find_but">GO</div>
        </div>
    </div>
</div>

<div id="big_banner_wrap">
    <ul id="banner_menu_wrap">
        <li class="active" img="">
            <a>电子键盘</a>
            <a class="banner_menu_i">&gt;</a>
            <div class="banner_menu_content" style="width: 300px; top: -20px;">
                <ul class="banner_menu_content_ul">
                    <li>
                        <a><img src="images/kb.jpg"></a><a>电子琴</a><span><a href="list.html">选购</a></span></li>

                </ul>

            </div>
        </li>
        <li>
            <a>管乐器</a>
            <a class="banner_menu_i">&gt;</a>
            <div class="banner_menu_content" style="width: 300px; top: -62px;">
                <ul class="banner_menu_content_ul">
                    <li>
                        <a><img src="images/xh2.jpg"></a><a>小号</a><span><a href="list1.html">选购</a></span></li>

                </ul>

            </div>
        </li>
        <li>
            <a>电声乐器</a>
            <a class="banner_menu_i">&gt;</a>
            <div class="banner_menu_content" style="width: 300px; top: -104px;">
                <ul class="banner_menu_content_ul">
                    <li>
                        <a><img src="images/djt2.jpg"></a><a>电吉他</a><span><a href="list2.html">选购</a></span></li>

                </ul>

            </div>
        </li>
        <li>
            <a>打击乐</a>
            <a class="banner_menu_i">&gt;</a>
            <div class="banner_menu_content" style="width: 300px; top: -146px;">
                <ul class="banner_menu_content_ul">
                    <li>
                        <a><img src="images/jzg2.jpg"></a><a>架子鼓</a><span><a href="notfound.html">选购</a></span></li>
                </ul>
            </div>
        </li>
        <li>
            <a>合成器</a>
            <a class="banner_menu_i">&gt;</a>
            <div class="banner_menu_content" style="width: 300px; top: -188px;">
                <ul class="banner_menu_content_ul">
                    <li>
                        <a><img src="images/hcq.jpg"></a><a>合成器</a><span><a href="notfound.html">选购</a></span></li>

                </ul>
            </div>
        </li>
        <li>
            <a>音响&nbsp;其他配件</a>
            <a class="banner_menu_i">&gt;</a>
            <div class="banner_menu_content" style="width: 300px; top: -230px;">
                <ul class="banner_menu_content_ul">
                    <li>
                        <a><img src="images/yx2.jpg"></a><a>吉他音响</a><span><a href="notfound.html">选购</a></span></li>

                </ul>
            </div>
        </li>
        <li>
            <a>乐器护理&nbsp;保养</a>
            <a class="banner_menu_i">&gt;</a>
            <div class="banner_menu_content" style="width: 300px; top: -272px;">
                <ul class="banner_menu_content_ul">
                    <li>
                        <a><img src="images/hl.jpg"></a><a>吉他护理套装</a><span><a href="notfound.html">选购</a></span></li>

                </ul>
            </div>
        </li>
        <li>
            <a>乐谱专区</a>
            <a class="banner_menu_i">&gt;</a>
            <div class="banner_menu_content" style="width: 300px; top: -314px;">
                <ul class="banner_menu_content_ul">
                    <li>
                        <a><img src="images/yp.jpg"></a><a>钢琴乐谱</a><span><a href="notfound.html">选购</a></span></li>

                </ul>

            </div>
        </li>
        <li>
            <a>悦耳课程</a>
            <a class="banner_menu_i">&gt;</a>
            <div class="banner_menu_content" style="width: 300px; top: -356px;">
                <ul class="banner_menu_content_ul">
                    <li>
                        <a><img src="images/yekc.jpg"></a><a>吉他课程</a><span><a href="notfound.html">选购</a></span></li>

                </ul>
            </div>
        </li>
        <li>
            <a>其他</a>
            <a class="banner_menu_i">&gt;</a>
            <div class="banner_menu_content" style="width: 300px; top: -398px;">
                <ul class="banner_menu_content_ul">
                    <li>
                        <a><img src="images/jtx.jpg"></a><a>吉他弦</a><span><a href="notfound.html">选购</a></span></li>

                </ul>
            </div>
        </li>
    </ul>
    <div id="big_banner_pic_wrap">
        <ul id="big_banner_pic">
            <li><img src="images/banner/fm4.jpg"></li>
            <li><img src="images/banner/fm1.jpg"></li>
            <li><img src="images/banner/fm3.jpg"></li>
            <li><img src="images/banner/fm2.jpg"></li>
        </ul>
    </div>
    <div id="big_banner_change_wrap">
        <div id="big_banner_change_prev">&lt;</div>
        <div id="big_banner_change_next">&gt;</div>
    </div>
</div>

<div id="head_hot_goods_wrap_1">
    <div id="head_hot_goods_title_1">
        <span class="title_span_1">悦耳明星单品</span>
        <div id="head_hot_goods_change_1">
            <span id="head_hot_goods_prave_1"><</span>
            <span id="head_hot_goods_next_1">></span>
        </div>
    </div>
    <div id="head_hot_goods_content_1">
        <ul>
            <%
                for (Instrument instrument : instruments) {
                    %>
                        <li>
                            <%
                                if(instrument.getPicpath() != null && instrument.getPicpath().length() != 0){
                            %>
                            <a  href="instrumentInfo.do?id=<%=instrument.getId()%>"><img src="<%=instrument.getPicpath()%>" width="200" height="200"
                                    alt="<%=instrument.getPicpath().substring(instrument.getPicpath().lastIndexOf("/") + 1)%>"
                                    title="<%=instrument.getPicpath().substring(instrument.getPicpath().lastIndexOf("/") + 1)%>"></a>
                            <%
                                }
                            %>
                            <a href="instrumentInfo.do?id=<%=instrument.getId()%>"><%=instrument.getName()%></a>
                            <a><%=instrument.getDescription()%></a>
                        </li>
                    <%
                }
            %>
        </ul>
    </div>
</div>

<div id="head_hot_goods_wrap_2">
    <div id="head_hot_goods_title_2">
        <span class="title_span_1">乐器类型</span>
        <div id="head_hot_goods_change_2">
            <span id="head_hot_goods_prave_2"><</span>
            <span id="head_hot_goods_next_2">></span>
        </div>
    </div>
    <div id="head_hot_goods_content_2">
        <ul>
            <%
                for (Instype instype : instypes) {

            %>
            <li>
                <%
                    if(instype.getPicpath() != null && instype.getPicpath().length() != 0){
                %>
                <a  href="instypeToInstrument.do?id=<%=instype.getId()%>"><img src="<%=instype.getPicpath()%>" width="200" height="200"
                                                                             alt="<%=instype.getPicpath().substring(instype.getPicpath().lastIndexOf("/") + 1)%>"
                                                                             title="<%=instype.getPicpath().substring(instype.getPicpath().lastIndexOf("/") + 1)%>"></a>
                <%
                    }
                %>
                <a href="instypeToInstrument.do?id=<%=instype.getId()%>"><%=instype.getName()%></a>
                <a><%=instype.getDescription()%></a>
            </li>
            <%
                }
            %>
        </ul>
    </div>
</div>

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
                <span class="foot_logo"><img src="images/mi-logo.png"></span>
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
