<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="/WEB-INF/views/include/taglib.jsp" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html" ; charset="utf-8"/>
    <title>基本信息</title>
    <link href="${cCtx}/css/main.css" rel="stylesheet" type="text/css">
    <link href="${cCtx}/bstable/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="${cCtx}/bstable/css/bootstrap-table.css" rel="stylesheet" type="text/css">
</head>
<body id="bDy">
<div class="tabe_div">
    <p class="p_line text_ient"><a class="find_a">名称：</a><input id="hName" type="text" class="form_input text_ient"
                                                                placeholder="输入名称"/>
        <a class="find_a">酒店星级：</a>
        <select class="form_select" id="form_select" style="padding-left: 1%; ">
        </select>
        <input type="button" id="but_find" value="查询" class="but_find"/>
    <p>
    <p class="p_table">
        <a href="#" class="a_add" id="add_box" onclick="addHotel()">添加</a>
    </p>
    </p>
    <table id="table" class="table_style" style="margin: 0 auto">
    </table>
</div>
<div></div>
<script src="${cCtx}/js/jquery.js"></script>
<script src="${cCtx}/js/date/js/laydate.js"></script>
<script src="${cCtx}/bstable/js/bootstrap.min.js"></script>
<script src="${cCtx}/bstable/js/bootstrap-table.js"></script>
<script src="${cCtx}/bstable/js/bootstrap-table-zh-CN.min.js"></script>
<script>
    !function () {
        laydate.skin('danlan'); //切换皮肤，请查看skins下面皮肤库
        laydate({elem: '#demo'});
        laydate({elem: '#demo1'}); //绑定元素
    }();
</script>
</body>
</html>
