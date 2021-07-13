<%@ page import="java.util.List" %>
<%@ page import="com.yuerhuixue.pojo.Instrument" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html class="x-admin-sm">
<head>
    <meta charset="UTF-8">
    <title>乐器列表</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="stylesheet" href="./css/font.css">
    <link rel="stylesheet" href="./css/index.css">
    <script src="./lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="./js/index.js"></script>

</head>
<body>
<div class="x-nav">
          <span class="layui-breadcrumb">
            <a href="adminwelcome.jsp">首页</a>
            <a>
              <cite>乐器列表</cite></a>
          </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" onclick="location.reload()" title="刷新">
        <i class="layui-icon layui-icon-refresh" style="line-height:30px"></i></a>
</div>
<div class="layui-fluid">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-md12">
            <div class="layui-card">
                <div class="layui-card-header">
                    <button class="layui-btn layui-btn-danger" onclick="delAll()"><i class="layui-icon"></i>批量删除</button>
                    <button class="layui-btn" onclick="xadmin.open('添加商品','instrumentInsertPage.do')"><i class="layui-icon"></i>添加</button>
                </div>
                <div class="layui-card-body layui-table-body layui-table-main">
                    <table class="layui-table layui-form">
                        <thead>
                        <tr>
                            <th>
                                <input type="checkbox" lay-filter="checkall" name="" lay-skin="primary">
                            </th>
                            <th>
                                乐器ID
                            </th>
                            <th>
                                乐器名称
                            </th>
                            <th>
                                类型
                            </th>
                            <th>
                                价格
                            </th>
                            <th>
                                库存
                            </th>
                            <th>
                                图片
                            </th>
                            <th>
                                品牌
                            </th>
                            <th>
                                描述
                            </th>
                            <th>
                                操作
                            </th>
                        </tr>
                        </thead>
                        <tbody>
                        <%
                            List<Instrument> instruments = (List<Instrument>) request.getAttribute("instruments");

                            for (Instrument instrument : instruments) {
                        %>
                        <tr>
                            <td>
                                <input type="checkbox" name="id" value="1"   lay-skin="primary">
                            </td>

                            <td><%=instrument.getId()%></td>

                            <td><%=instrument.getName()%></td>

                            <td><%=instrument.getInstype().getName()%></td>

                            <td><%=instrument.getPrice()%></td>

                            <td><%=instrument.getStock()%></td>

                            <td >
                                <%
                                    if(instrument.getPicpath() != null && instrument.getPicpath().length() != 0){
                                %>
                                <img src="<%=instrument.getPicpath()%>" width="100" height="100"
                                     alt="<%=instrument.getPicpath().substring(instrument.getPicpath().lastIndexOf("/") + 1)%>"
                                     title="<%=instrument.getPicpath().substring(instrument.getPicpath().lastIndexOf("/") + 1)%>">
                                <%
                                    }
                                %>
                            </td>
                            <td><%=instrument.getBrand()%></td>
                            <td><%=instrument.getDescription()%></td>

                            <td class="td-manage">
                                <a title="编辑" href="javascript:;" onclick="xadmin.open('编辑','instrumentModifyPage.do?id=<%=instrument.getId()%>','800','510','1')"
                                   class="ml-5" style="text-decoration:none">
                                    <i class="layui-icon">&#xe642;</i>
                                </a>

                                <a title="删除" href="instrumentDelete.do?id=<%=instrument.getId()%>" onclick="member_del(this,'1')"
                                   style="text-decoration:none">
                                    <i class="layui-icon">&#xe640;</i>
                                </a>
                            </td>
                        </tr>
                        <%
                            }
                        %>
                        </tbody>
                    </table>
                </div>

                <div class="layui-card-body ">
                    <div class="page">
                        <div>
                            <a  href="">&lt;&lt;</a>

                            <span class="current">1</span>
                            <a class="num" href="">2</a>
                            <a class="next" href="g2.html">&gt;&gt;</a></div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
</body>
<script>
    layui.use(['laydate','form'], function(){
        var laydate = layui.laydate;
        var  form = layui.form;


        // 监听全选
        form.on('checkbox(checkall)', function(data){

            if(data.elem.checked){
                $('tbody input').prop('checked',true);
            }else{
                $('tbody input').prop('checked',false);
            }
            form.render('checkbox');
        });

        //执行一个laydate实例
        laydate.render({
            elem: '#start' //指定元素
        });

        //执行一个laydate实例
        laydate.render({
            elem: '#end' //指定元素
        });


    });

    /*用户-添加*/
    function member_add(title,url,id,w,h){

        xadmin.open(title,url,id,w,h);
    }


    /*用户-删除*/
    function member_del(obj,id){
        layer.confirm('确认要删除吗？',{icon:3,title:'提示信息'},function(index){
            //发异步删除数据
            $(obj).parents("tr").remove();
            layer.msg('已删除!',{icon:1,time:1000});
        });
    }



    function delAll (argument) {
        var ids = [];

        // 获取选中的id
        $('tbody input').each(function(index, el) {
            if($(this).prop('checked')){
                ids.push($(this).val())
            }
        });

        layer.confirm('确认要删除吗？'+ids.toString(),{icon:3,title:'提示信息'},function(index){
            //捉到所有被选中的，发异步进行删除
            layer.msg('删除成功', {icon: 1});
            $(".layui-form-checked").not('.header').parents('tr').remove();
        });
    }
</script>
</html>
