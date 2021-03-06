﻿<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="/WEB-INF/views/include/taglib.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html"; charset="utf-8" />
<title></title>
<link href="../../../css/main.css" rel="stylesheet" type="text/css">
    <link href="../../../bstable/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="../../../bstable/css/bootstrap-table.css" rel="stylesheet" type="text/css">

</head>
<body>
<div class="tabe_div">
    <p class="p_line text_ient"><a class="find_a">名称：</a><input type="text" class="form_input text_ient" placeholder="输入名称"/>
    <a  class="find_a">类型：</a>
    <select class="form_select" style="padding-left: 1%;">
        <option>全部</option>
        <option>服装</option>
        <option>虚拟</option>
        <option>配饰</option>
        <option>美容</option>
        <option>数码</option>
        <option>家居</option>
        <option>母婴</option>
        <option>食品</option>
        <option>文体</option>
        <option>服务</option>
        <option>保险</option>
        <option>其他</option>
    </select>
    <input type="button" value="查询" class="but_find"/><p>
    <p class="p_table">
    <a href="#" class="a_add" id="add_box" onclick="openlayer()">添加</a><a href="#" class="a_add">全部导出</a>
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
                url: "../../../json/storeBasic.json",
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
                        title: '餐馆名称',
                        field: 'name',
                        align: 'center',
                        valign: 'middle'
                    },
                    {
                        title: '类型',
                        field: 'type',
                        align: 'center'
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
                            var e = '<button button="#" mce_href="#" onclick="openlayer(\'' +
                                row.id +
                                '\')">编辑</button> ';
                            var d = '<button button="#" mce_href="#" onclick="deleteHotel(this)">删除</button> ';
                            var c = '<button button="#" mce_href="#" onclick="openlayer(\'' +
                                row.id +
                                '\')">详细信息</button> ';
                            return e + d + c;
                        }
                    }
                ]
            });
    });

    function addHotel() {
        this.location.href = "addStore.html";
    }

    function editHotel(id) {
        this.location.href = "addStore.html";
    }

    function showHotelInfo() {
        this.location.href = "addStore.html";
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
            content: 'addStore.html'
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
</script>
</body>
</html>
