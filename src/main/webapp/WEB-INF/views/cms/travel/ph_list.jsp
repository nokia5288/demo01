﻿<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="/WEB-INF/views/include/taglib.jsp" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>无标题文档</title>
    <link href="../../../css/main.css" rel="stylesheet" type="text/css" />


</head>

<body class="home_body">

<div class="div_ph_list">
    <h3 class="home_h3">图片列表</h3>
    <ul id="ph_list" class="ph_ul">
        <li><img src="../../../image/p1.jpg"/><p><a href="#">删除</a> </p> </li>
        <li><img src="../../../image/p2.jpg"/><p><a href="#">删除</a> </p>  </li>
        <li><img src="../../../image/p3.jpg"/><p><a href="#">删除</a> </p>  </li>
        <li><img src="../../../image/p1.jpg"/> <p><a href="#">删除</a> </p> </li>
        <li><img src="../../../image/p1.jpg"/><p><a href="#">删除</a> </p>  </li>
        <li><img src="../../../image/p1.jpg"/> <p><a href="#">删除</a> </p> </li>
        <li><img src="../../../image/p1.jpg"/><p><a href="#">删除</a> </p>  </li>
        <li><img src="../../../image/p1.jpg"/> <p><a href="#">删除</a> </p> </li>


    </ul>
    <div class="div_ph_abut"><a href="#" class="a_add" onclick="openlayer('')">新增</a> <a href="#" class="a_del">删除所有</a></div>
    <div class="clear"></div>
    <div class="div_foot_left"><a>每页显示：<input type="text" class="input_foot"/>条 </a><a class="a_foot_line">共10条数据</a><a class="a_foot_line">当前1/10页</a><a class="a_foot_line">刷新列表</a><div class="clear"></div></div>

    <div class="div_foot_right">
        <a>首页</a>
        <a class="a_foot_line">上一页</a>
        <a  class="a_foot_line">1</a>
        <a  class="a_foot_line">2</a>
        <a  class="a_foot_line">3</a>
        <a  class="a_foot_line">4</a>
        <a  class="a_foot_line">5</a>
        <a  class="a_foot_line">下一页</a>
        <a  class="a_foot_line">末页</a>
        <a  class="a_foot_line">跳转至：<input type="text" class="input_foot"/>页 </a>
    </div>
</div>

<script src="../../../js/jquery.js"></script>
<script src="../../../layer_v2.1/layer/layer.js"></script>
<script type="text/javascript">

    function openlayer(id){
        layer.open({
            type: 2,
            title: '添加图片',
            shadeClose: true,
            shade: 0.5,
            skin: 'layui-layer-rim',
            maxmin: true,
            closeBtn:1,
            area: ['80%', '75%'],
            shadeClose: true,
            closeBtn: 1,
            content: 'layer_ph.html'
            //iframe的url
        });
    }
</script>
</body>
</html>
