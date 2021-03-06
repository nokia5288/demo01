﻿<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="/WEB-INF/views/include/taglib.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html"; charset="utf-8" />
<title>客房情况</title>
<link href="../../../css/main.css" rel="stylesheet" type="text/css">
    <link href="../../../bstable/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="../../../bstable/css/bootstrap-table.css" rel="stylesheet" type="text/css">

</head>
<body>
<div class="tabe_div">
    <p class="p_line text_ient"><a class="find_a">酒店名称：</a><input type="text" class="form_input text_ient" placeholder="输入关键字或全称"/>
    <a  class="find_a">投诉类型：</a>
    <select class="form_select" style="padding-left: 1%;">
        <option>全部</option>
        <option>卫生</option>
        <option>服务</option>
        <option>价格</option>
        <option>其他</option>
    </select>
    <a class="find_a">时间：</a><input type="text" class="form_input text_ient" style="width: 80px;"/>—&nbsp;<input type="text" class="form_input text_ient" style="width: 80px;"/>
    <input type="button" value="查询" class="but_find"/><p>
    <p class="p_table">
    <a href="#" class="a_add">全部导出</a>
</p>


    <table data-url="json/data_alae_list.json" id="table" class="table_style" style="margin: 0 auto" >
    </table>





</div>
<div></div>
<script src="../../../js/jquery.js"></script>
<script src="../../../js/date/js/laydate.js"></script>
<script src="../../../bstable/js/bootstrap.min.js"></script>
<script src="../../../bstable/js/bootstrap-table.js"></script>
<script src="../../../bstable/js/bootstrap-table-zh-CN.min.js"></script>
<script>
    !function () {
        laydate.skin('danlan'); //切换皮肤，请查看skins下面皮肤库
        laydate({ elem: '#demo' });
        laydate({ elem: '#demo1' }); //绑定元素
    } ();
</script>

<script type="text/javascript">
    $(function () {
        $('#table')
            .bootstrapTable({
                method: "get",
                striped: true,
                singleSelect: false,
                url: "../../../json/complaintsSearch.json",
                dataType: "json",
                pagination: true, //分页
                pageSize: 10,
                pageNumber: 1,
                search: false, //显示搜索框
                contentType: "application/x-www-form-urlencoded",
                queryParams: null,
                columns: [
                    {
                        title: "序号",
                        field: 'id',
                        align: 'center',
                        valign: 'middle'
                    },
                    {
                        title: '酒店名称',
                        field: 'name',
                        align: 'center',
                        valign: 'middle'
                    },
                    {
                        title: '星级',
                        field: 'star',
                        align: 'center'
                    },
                    {
                        title: '投诉时间',
                        field: 'complaintsTime',
                        align: 'center'
                    },
                    {
                        title: '投诉类型',
                        field: 'type',
                        align: 'center'
                    },
                    {
                        title: '投诉方式',
                        field: 'way',
                        align: 'center'
                    },
                    {
                        title: '联系电话（酒店）',
                        field: 'phone',
                        align: 'center'
                    },
                    {
                        title: '投诉备注',
                        field: 'note',
                        align: 'center'
                    }
                ]
            });
    });

    function editHotel(id) {
        this.location.href = "editHotel.html";
    }

</script>
<script src="../../../layer_v2.1/layer/layer.js"></script>
<script type="text/javascript">
    function openlayer(id) {
        layer.open({
            type: 2,
            title: '添加酒店信息',
            shadeClose: true,
            shade: 0.5,
            skin: 'layui-layer-rim',
            //            maxmin: true,
            closeBtn: 1,
            area: ['80%', '75%'],
            shadeClose: true,
            closeBtn: 1,
            content: 'addHotel.html'
            //iframe的url
        });
    }

    //    function editHotel(id) {
    //        layer.open({
    //            type: 2,
    //            title: '酒店信息',
    //            shadeClose: true,
    //            shade: 0.5,
    //            skin: 'layui-layer-rim',
    //            //            maxmin: true,
    //            closeBtn: 1,
    //            area: ['80%', '75%'],
    //            shadeClose: true,
    //            closeBtn: 1,
    //            content: 'editHotel.html'
    //            //iframe的url
    //        });
    //    }

    function deleteHotel(dom) {
        alert("删除成功");
        $(dom).parent().parent().remove();
    }

    function showHotelInfo(id) {
        layer.open({
            type: 2,
            title: '酒店信息',
            shadeClose: true,
            shade: 0.5,
            skin: 'layui-layer-rim',
            //            maxmin: true,
            closeBtn: 1,
            area: ['80%', '75%'],
            shadeClose: true,
            closeBtn: 1,
            content: 'hotelInfo.html'
            //iframe的url
        });
    }
</script>
</body>
</html>
