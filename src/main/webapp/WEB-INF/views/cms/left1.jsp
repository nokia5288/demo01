<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="/WEB-INF/views/include/taglib.jsp" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script language="JavaScript" src="${cCtx}/js/jquery.js"></script>
    <script type="text/javascript" src="${lCtx}/sys/left1.js"></script>
    <script type="text/javascript" src="${cCtx}/layer_v2.1/layer/layer.js"></script>
    <%--<script type="text/javascript">
        $(function () {
            //导航切换
            $(".menuson .header").click(function () {
                var $parent = $(this).parent();
                $(".menuson>li.active").not($parent).removeClass("active open").find('.sub-menus').hide();

                $parent.addClass("active");
                if (!!$(this).next('.sub-menus').size()) {
                    if ($parent.hasClass("open")) {
                        $parent.removeClass("open").find('.sub-menus').hide();
                    } else {
                        $parent.addClass("open").find('.sub-menus').show();
                    }
                }
            });

            // 三级菜单点击
            $('.sub-menus li').click(function (e) {
                $(".sub-menus li.active").removeClass("active")
                $(this).addClass("active");
            });

            $('.title').click(function () {
                var $ul = $(this).next('ul');
                $('dd').find('.menuson').slideUp();
                if ($ul.is(':visible')) {
                    $(this).next('.menuson').slideUp();
                } else {
                    $(this).next('.menuson').slideDown();
                }
            });
        })
    </script>--%>
    <link href="${cCtx}/css/style.css" rel="stylesheet" type="text/css"/>
</head>
<body style="background:#f0f9fd; overflow:hidden">
<dl id="leftmenu" class="leftmenu">
   <%-- <dd>
        <div class="title">酒店管理<i class="down_i"></i>
        </div>
        <ul class="menuson">
            <li><cite></cite><a href="../html/pages/hotel/basic.html" target="right">基本信息</a><i></i></li>
            <li><cite></cite><a href="../html/pages/hotel/rooms.html" target="right">客房情况</a><i></i></li>
            <li><cite></cite><a href="../html/pages/hotel/tradingSearch.html" target="right">交易情况</a><i></i></li>
            <li><cite></cite><a href="../html/pages/hotel/complaintsSearch.html" target="right">投诉情况</a><i></i></li>
        </ul>
    </dd>
    <dd>
        <div class="title">旅行社管理<i class="down_i"></i>
        </div>
        <ul class="menuson">
            <li><cite></cite><a href="../html/pages/travelAgency/basic.html" target="right">基本情况</a><i></i></li>
            <li><cite></cite><a href="../html/pages/travelAgency/routes.html" target="right">线路情况</a><i></i></li>
            <li><cite></cite><a href="../html/pages/travelAgency/tradingSearch.html" target="right">交易情况</a><i></i></li>
            <li><cite></cite><a href="../html/pages/travelAgency/complaintsSearch.html" target="right">投诉情况</a><i></i>
            </li>
        </ul>
    </dd>
    <dd>
        <div class="title">餐饮管理<i class="down_i"></i>
        </div>
        <ul class="menuson">
            <li><cite></cite><a href="../html/pages/food/basic.html" target="right">基本信息</a><i></i></li>
            <li><cite></cite><a href="../html/pages/food/complaintsSearch.html" target="right">投诉情况</a><i></i></li>
        </ul>
    </dd>
    <dd>
        <div class="title">店铺管理<i class="down_i"></i>
        </div>
        <ul class="menuson">
            <li><cite></cite><a href="../html/pages/store/basic.html" target="right">基本信息</a><i></i></li>
            <li><cite></cite><a href="../html/pages/store/goodsManage.html" target="right">商品管理</a><i></i></li>
            <li><cite></cite><a href="../html/pages/store/tradingSearch.html" target="right">交易情况</a><i></i></li>
            <li><cite></cite><a href="../html/pages/store/complaintsSearch.html" target="right">投诉情况</a><i></i></li>
        </ul>
    </dd>--%>
</dl>
</body>

</html>
