﻿<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="/WEB-INF/views/include/taglib.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html"; charset="utf-8" />
<title>交易情况</title>

<link href="../../../css/main.css" rel="stylesheet" type="text/css">

</head>
<body >
<div class="tab_labe"><a  class="a_tab" href="#">交易查询</a> <a href="#">交易图表</a></div>
<div class="div_box">
<div class="set_div">
    <iframe src="tradingSearch.html" style="width: 100%; height: 100%;" frameborder="no" border="0" marginwidth="0" marginheight="0" ></iframe>
</div>
<div class="set_div" style="display: none">
    <iframe src="tradingChart.html" style="width: 100%; height: 100%;" frameborder="no" border="0" marginwidth="0" marginheight="0" ></iframe>
</div>
</div>
<script src="../../../js/jquery.js"></script>

<script>
    $(function () {
        $(".tab_labe a").each(function (index) {
            $(this).on("click", function () {
                $(".div_box>div").eq(index).fadeIn().siblings("div").stop().hide();
                $(this).addClass("a_tab").siblings().removeClass("a_tab");
            });
        });
    })
</script>

</body>
</html>
