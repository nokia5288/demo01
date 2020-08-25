﻿<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="/WEB-INF/views/include/taglib.jsp" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>无标题文档</title>
    <link href="../../../css/main.css" rel="stylesheet" type="text/css" />
    <link href="../../../js/auto-play-image/css/datouwang.css" rel="stylesheet" type="text/css" />


</head>

<body class="home_body">

<div class="div_ph_list">
   <h3 class="home_h3">banner图片切换</h3>
    <div id="fsD1" class="focus" >
        <div id="D1pic1" class="fPic">
            <div class="fcon" style="display: none;">
                <a  href=""><img src="../../../image/ban_bg0.png" style="opacity: 1; "></a>
                <span class="shadow"><a  href="#">远航，天道酬情</a></span>
            </div>

            <div class="fcon" style="display: none;">
                <a  href=""><img src="../../../image/ban_bg1.png" style="opacity: 1; "></a>
                <span class="shadow"><a  href="#">远航，天道酬情</a></span>
            </div>

            <div class="fcon" style="display: none;">
                <a  href=""><img src="../../../image/ban_bg2.png" style="opacity: 1; "></a>
                <span class="shadow"><a  href="#">远航，天道酬情</a></span>
            </div>

            <div class="fcon" style="display: none;">
                <a  href=""><img src="../../../image/ban_bg2.png"  style="opacity: 1; "></a>
                <span class="shadow"><a  href="#">远航，天道酬情</a></span>
            </div>
        </div>
        <div class="fbg">
            <div class="D1fBt" id="D1fBt">
                <a href="javascript:void(0)" hidefocus="true" target="_self" class=""><i>1</i></a>
                <a href="javascript:void(0)" hidefocus="true" target="_self" class=""><i>2</i></a>
                <a href="javascript:void(0)" hidefocus="true" target="_self" class="current"><i>3</i></a>
                <a href="javascript:void(0)" hidefocus="true" target="_self" class=""><i>4</i></a>
            </div>
        </div>
        <span class="prev"></span>
        <span class="next"></span>
    </div>


</div>



<script src="../../../js/jquery.js"></script>
<script src="../../../js/auto-play-image/js/koala.min.1.5.js"></script>
<script type="text/javascript">
    var _speed=30;
    var _slide = $("#slide");
    var _slideli1 = $(".slideli1");
    var _slideli2 = $(".slideli2");
    _slideli2.html(_slideli1.html());
    function Marquee(){
        if(_slide.scrollLeft() >= _slideli1.width())
            _slide.scrollLeft(0);
        else{
            _slide.scrollLeft(_slide.scrollLeft()+1);
        }
    }
    $(function(){
        //两秒后调用
        var sliding=setInterval(Marquee,_speed)
        _slide.hover(function() {
            //鼠标移动DIV上停止
            clearInterval(sliding);
        },function(){
            //离开继续调用
            sliding=setInterval(Marquee,_speed);
        });
    });
</script>
<script type="text/javascript">
    Qfast.add('widgets', { path: "../../../js/auto-play-image/js/terminator2.2.min.js", type: "js", requires: ['fx'] });
    Qfast(false,
        'widgets',
        function() {
            K.tabs({
                id: 'fsD1', //焦点图包裹id
                conId: "D1pic1", //** 大图域包裹id
                tabId: "D1fBt",
                tabTn: "a",
                conCn: '.fcon', //** 大图域配置class
                auto: 1, //自动播放 1或0
                effect: 'fade', //效果配置
                eType: 'click', //** 鼠标事件
                pageBt: true, //是否有按钮切换页码
                bns: ['.prev', '.next'], //** 前后按钮配置class
                interval: 3000 //** 停顿时间
            });
        });
</script>

</body>
</html>
