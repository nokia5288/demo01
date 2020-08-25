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
    <p class="p_line text_ient"><a class="find_a">名称：</a><input type="text" class="form_input text_ient" placeholder="输入名称"/>
    <a  class="find_a">酒店星级：</a>
    <select class="form_select" style="padding-left: 1%;">
        <option>全部</option>
        <option>1星</option>
        <option>2星</option>
        <option>3星</option>
        <option>4星</option>
        <option>5星</option>
    </select>
    <a  class="find_a">状态：</a>
    <select class="form_select" style="padding-left: 1%;">
        <option>全部</option>
        <option>有剩余房间</option>
        <option>无空余房间</option>
    </select>
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
    $(function() {
        $('#table')
            .bootstrapTable({
                method: "get",
                striped: true,
                singleSelect: false,
                url: "../../../json/hotelBasic.json",
                dataType: "json",
                pagination: true, //分页
                pageSize: 10,
                pageNumber: 1,
                search: false, //显示搜索框
                contentType: "application/x-www-form-urlencoded",
                queryParams: null,
                columns: [
                    {
                        title: "编号",
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
                        title: '剩余房间数（间）',
                        field: 'remaining',
                        align: 'center',
                        formatter: function(value, row) {
                            var c = "<a onclick='showRoomsRem(" + row.id + ")'>" + value + "</a>";
                            return c;
                        }
                    },
                    {
                        title: '总房间数（间）',
                        field: 'all',
                        align: 'center',
                        formatter: function(value, row) {
                            var c = "<a onclick='showRoomsAll(" + row.id + ")'>" + value + "</a>";
                            return c;
                        }
                    },
                    {
                        title: '建立时间',
                        field: 'buildTime',
                        align: 'center'
                    },
                    {
                        title: '联系电话',
                        field: 'phone',
                        align: 'center'
                    },
                    {
                        title: '详细地址',
                        field: 'address',
                        align: 'center'
                    },
                    {
                        title: '操作',
                        field: 'oper',
                        align: 'center',
                        formatter: function(value, row) {
                            var c = '<button button="#" mce_href="#" onclick="showHotelInfo(\'' +
                                row.id +
                                '\')">酒店详情</button> ';
                            return c;
                        }
                    }
                ]
            });
    });

    function handleEvent(id) {
        this.location.href = "alam_handle.html";

    }


</script>
<script src="../../../layer_v2.1/layer/layer.js"></script>
<script type="text/javascript">

    function openlayer(id) {
        layer.open({
            type: 2,
            title: '添加信息',
            shadeClose: true,
            shade: 0.5,
            skin: 'layui-layer-rim',
            //            maxmin: true,
            closeBtn: 1,
            area: ['80%', '75%'],
            shadeClose: true,
            closeBtn: 1,
            content: 'layer_box.html'
            //iframe的url
        });
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

    function showRoomsRem(id) {
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
            content: 'remainingRooms.html'
            //iframe的url
        });
    }

    function showRoomsAll(id) {
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
            content: 'remainingRooms.html'
            //iframe的url
        });
    }
</script>
</body>
</html>
