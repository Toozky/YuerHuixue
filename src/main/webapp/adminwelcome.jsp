<%@ page import="com.yuerhuixue.pojo.Admin" %><%--
  Created by IntelliJ IDEA.
  User: ZhangYu
  Date: 2021/7/9
  Time: 15:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%
    Admin admin=(Admin)session.getAttribute("admin");
    if (admin==null){
        response.sendRedirect("adminlogin.jsp");
    }else{
%>
<!DOCTYPE html>
<html class="x-admin-sm">
<head>
    <meta charset="UTF-8">
    <title>欢迎页面</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <!--<link rel="stylesheet" href="./css/font.css">-->
    <link rel="stylesheet" href="./css/index.css">
    <link rel="stylesheet" href="./css/iconfont.css">
    <script src="./lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="./js/index.js"></script>
    <script src="./js/jquery.js"></script>
    <script src="./js/jquery.min.js"></script>
    <script src="./js/survey.js"></script>
    <style>
        #FontScroll{
            width: 100%;
            height: 245px;
            overflow: hidden;
        }
        #FontScroll ul li{
            height: 32px;
            width: 100%;
            color: #ffffff;
            line-height: 32px;
            overflow: hidden;
            font-size: 14px;
        }
        #FontScroll ul li i{
            color: red;
        }
        .layui-table td, .layui-table th{
            min-width: auto !important;
        }
    </style>
</head>
<body>
<div class="layui-fluid">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-md12">
            <div class="layui-card">
                <div class="layui-card-body ">
                    <blockquote class="layui-elem-quote">欢迎管理员：
                        <span class="x-red" >${admin.name}</span>
                        <span id="time"></span>
                    </blockquote>
                </div>
            </div>
        </div>
        <div class="layui-col-md12">
            <div class="layui-card">
                <div class="layui-card-header">数据统计</div>
                <div class="layui-card-body ">
                    <ul class="layui-row layui-col-space10 layui-this x-admin-carousel x-admin-backlog">
                        <li class="layui-col-md2 layui-col-xs6">
                            <a href="order-list.html" class="x-admin-backlog-body">
                                <h3>成交金额</h3>
                                <p>
                                    <cite>6843.50元</cite></p>
                            </a>
                        </li>
                        <li class="layui-col-md2 layui-col-xs6">
                            <a href="note.html" class="x-admin-backlog-body">
                                <h3>留言</h3>
                                <p>
                                    <cite>368条</cite></p>
                            </a>
                        </li>
                        <li class="layui-col-md2 layui-col-xs6">
                            <a href="order-list.html" class="x-admin-backlog-body">
                                <h3>订单</h3>
                                <p>
                                    <cite>5689笔</cite></p>
                            </a>
                        </li>
                        <li class="layui-col-md2 layui-col-xs6">
                            <a href="notice-list.html" class="x-admin-backlog-body">
                                <h3>通知</h3>
                                <p>
                                    <cite>125条</cite></p>
                            </a>
                        </li>
                        <li class="layui-col-md2 layui-col-xs6">
                            <a href="order-list.html" class="x-admin-backlog-body">
                                <h3>待处理</h3>
                                <p>
                                    <cite>10条</cite></p>
                            </a>
                        </li>
                        <li class="layui-col-md2 layui-col-xs6 ">
                            <a href="return-order.html" class="x-admin-backlog-body">
                                <h3>退款申请</h3>
                                <p>
                                    <cite>0条</cite></p>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="layui-col-sm6 layui-col-md4">
            <div class="layui-card">
                <div class="layui-card-header">信息统计

                </div>
                <div class="layui-card-body  ">

                    <table class="layui-table">
                        <thead>

                        <tr class="text-c">
                            <th>统计</th>
                            <th>待发货订单</th>
                            <th>成交订单</th>
                            <th>产品库</th>
                            <th>用户</th>
                            <th>管理员</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr class="text-c">
                            <td>总数</td>
                            <td>92</td>
                            <td>9</td>
                            <td>0</td>
                            <td>8</td>
                            <td>20</td>
                        </tr>
                        <tr class="text-c">
                            <td>今日</td>
                            <td>0</td>
                            <td>0</td>
                            <td>0</td>
                            <td>0</td>
                            <td>0</td>
                        </tr>
                        <tr class="text-c">
                            <td>昨日</td>
                            <td>0</td>
                            <td>0</td>
                            <td>0</td>
                            <td>0</td>
                            <td>0</td>
                        </tr>
                        <tr class="text-c">
                            <td>本周</td>
                            <td>2</td>
                            <td>0</td>
                            <td>0</td>
                            <td>0</td>
                            <td>0</td>
                        </tr>
                        <tr class="text-c">
                            <td>本月</td>
                            <td>2</td>
                            <td>0</td>
                            <td>0</td>
                            <td>0</td>
                            <td>0</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="layui-col-sm6 layui-col-md3">
            <div class="layui-card">
                <div class="layui-card-header">数据统计

                </div>
                <div class="layui-card-body ">

                    <div id="chart2" style="width: 100%;height: 245px;"></div>
                </div>
            </div>
        </div>
        <div class="layui-col-sm6 layui-col-md3">
            <div class="layui-card">
                <div class="layui-card-header">数据月统计

                </div>
                <div class="layui-card-body ">

                    <div id="chart4" style="width: 100%;height: 245px;"></div>
                </div>
            </div>
        </div>

        <div class="layui-col-sm6 layui-col-md2">
            <div class="layui-card">
                <div class="layui-card-header">商品销售排行

                </div>
                <div class="layui-card-body ">

                    <div class="news_style">

                        <div class="myscroll" id="FontScroll">
                            <ul class="list">
                                <li><i class="iconfont">&#xe622;</i><a href="#">1.悦耳吉他课程（爆）</a></li>
                                <li><i class="iconfont">&#xe622;</i><a href="#">2.民谣34 36寸吉他单板</a></li>
                                <li><i class="iconfont">&#xe622;</i><a href="#">3.CPX-770电钢琴</a></li>
                                <li><i class="iconfont">&#xe622;</i><a href="#">4.KURZWEIL科兹威尔电子合成器</a></li>
                                <li><i class="iconfont">&#xe622;</i><a href="#">5.芬达吉他音箱Fender电吉他音箱</a></li>
                                <li><i class="iconfont">&#xe622;</i><a href="#">6.台产DIXON帝声架子鼓</a></li>
                                <li><i class="iconfont">&#xe622;</i><a href="#">7.非洲鼓 芭拉</a></li>
                                <li><i class="iconfont">&#xe622;</i><a href="#">8.萨克斯LAS-520</a></li>
                                <li><i class="iconfont">&#xe622;</i><a href="#">9.复古欧洲4/4小提琴</a></li>
                                <li><i class="iconfont">&#xe622;</i><a href="#">10.巴扬式电子手风琴FR-8XB型</a></li>
                                <li><i class="iconfont">&#xe622;</i><a href="#">11.雅马哈 YCL-450标准型单簧管</a></li>
                                <li><i class="iconfont">&#xe622;</i><a href="#">12.葫芦丝</a></li>
                                <li><i class="iconfont">&#xe622;</i><a href="#">13.行进乐队大军鼓</a></li>


                            </ul>
                        </div>

                    </div>
                </div>
            </div>
        </div>

        <div class="layui-col-md12">
            <div class="layui-card">
                <div class="layui-card-header">系统信息</div>
                <div class="layui-card-body ">

                    <table class="layui-table">
                        <thead>
                        <tr>
                            <th colspan="4" scope="col">服务器信息</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <th>服务器计算机名</th>
                            <td><span id="lbServerName">http://127.0.0.1/</span></td>

                        </tr>
                        <tr>
                            <td>服务器IP地址</td>
                            <td>192.168.1.1</td>
                        </tr>
                        <tr>
                            <td>服务器域名</td>
                            <td>www.yueer.com</td>

                        </tr>
                        <tr>
                            <td>服务器端口 </td>
                            <td>80</td>
                        </tr>
                        <tr>
                            <td>服务器IIS版本 </td>
                            <td>Microsoft-IIS/6.0</td>

                        </tr>
                        <tr>
                            <td>本文件所在文件夹 </td>
                            <td>D:\WebSite\</td>
                        </tr>
                        <tr>
                            <td>服务器操作系统 </td>
                            <td>Microsoft Windows NT 5.2.3790 Service Pack 2</td>

                        </tr>
                        <tr>
                            <td>系统所在文件夹 </td>
                            <td>C:\WINDOWS\system32</td>
                        </tr>
                        <tr>
                            <td>服务器脚本超时时间 </td>
                            <td>30000秒</td>

                        </tr>
                        <tr>
                            <td>服务器的语言种类 </td>
                            <td>Chinese (People's Republic of China)</td>
                        </tr>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>


        <div class="layui-col-md12">
            <div class="layui-card">
                <div class="layui-card-body ">
                    <p style="text-align: center;"> Copyright ©2021  All Rights Reserved.</p>
                </div>
            </div>
        </div>



    </div>
</div>
</div>
</body>

<script src="./js/echarts.min.js"></script>
<script type="text/javascript">
    $(function () {
        $('.myscroll').myScroll({
            speed: 60, //数值越大，速度越慢
            rowHeight: 38 //li的高度
        });

    });

    layui.use('layer', function(){
        var layer = layui.layer;
        var remember = '';
        $(document).ready(function(){
            layer.prompt({
                formType: 2,
                anim: 3,
                offset: 'rb',
                value: "",
                title: '便签',
                skin: 'demo-class',
                area: ['280px', '150px'],
                id: 'remember' ,//设定一个id，防止重复弹出
                btn: ['确定', '取消'],
                shade: 0,
                moveType: 1, //拖拽模式，0或者1
                btn2: function(index, layero){
                    $.ajax({
                        url:"delremember.html"
                        ,type:"post"
                        ,success:function(res) {
                            layer.msg(res.msg);
                            if(res.code == 1) {
                                $('#remember textarea').val('');
                            }
                        }
                    })
                    return false;
                }
            },function(value, index, elem){
                $.ajax({
                    url:"/admin/main/remember.shtml"
                    ,type:"post"
                    ,data:{message:value}
                    ,success:function(res) {
                        layer.msg(res.msg);
                    }
                })
            })
        });
    });

    function getTime(){
        var myDate = new Date();
        var myYear = myDate.getFullYear(); //获取完整的年份(4位,1970-????)
        var myMonth = myDate.getMonth()+1; //获取当前月份(0-11,0代表1月)
        var myToday = myDate.getDate(); //获取当前日(1-31)
        var myDay = myDate.getDay(); //获取当前星期X(0-6,0代表星期天)
        var myHour = myDate.getHours(); //获取当前小时数(0-23)
        var myMinute = myDate.getMinutes(); //获取当前分钟数(0-59)
        var mySecond = myDate.getSeconds(); //获取当前秒数(0-59)
        var week = ['星期日','星期一','星期二','星期三','星期四','星期五','星期六'];
        var nowTime;

        nowTime = myYear+'-'+fillZero(myMonth)+'-'+fillZero(myToday)+'&nbsp;&nbsp;'+fillZero(myHour)+':'+fillZero(myMinute)+':'+fillZero(mySecond)+'&nbsp;&nbsp;'+week[myDay]+'&nbsp;&nbsp;';
        //console.log(nowTime);
        $('#time').html(nowTime);
    };
    function fillZero(str){
        var realNum;
        if(str<10){
            realNum	= '0'+str;
        }else{
            realNum	= str;
        }
        return realNum;
    }
    setInterval(getTime,1000);
</script>
<script src="js/fontscroll.js"></script>

</html>
<%
    }
%>