﻿<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="/WEB-INF/views/include/taglib.jsp" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>无标题文档</title>
    <link href="../../../css/main.css" rel="stylesheet" type="text/css" />

</head>

<body>
<h1 class="h1_style"><i class="i_h1"></i>酒店信息</h1>
<div class="div_left">

    <form id="form_demo"  class="form_b">
        <p class="form_p"><label class="form_label">编号：</label><input type="text" class="form_input readonly" readonly="readonly"><i class="i_start"></i><a class="a_note">自动生成</a> </p>
        <p class="form_p"><label class="form_label">酒店名称：</label><input type="text" class="form_input " minlength="2"  required ><i class="i_start"></i> </p>
        <p class="form_p"><label class="form_label">星级：</label>
            <select class="form_select" style="padding-left: 1%;">
                <option>1星</option>
                <option>2星</option>
                <option>3星</option>
                <option>4星</option>
                <option>5星</option>
                <option>无</option>
            </select>
        </p>
        <p class="form_p"><label class="form_label">酒店总房间数：</label><input type="text" class="form_input " minlength="2"  required ><i class="i_start"></i></p>
        <p class="form_p"><label class="form_label">类型：</label>
            <input type="checkbox" class="form_check" checked="checked"/><a class="form_a">星级酒店</a>
            <input type="checkbox" class="form_check"/><a class="form_a">快捷酒店</a>
            <input type="checkbox" class="form_check"/><a class="form_a">商务酒店</a>
            <input type="checkbox" class="form_check"/><a class="form_a">其他</a>
        </p>
        <p class="form_p"><label class="form_label">责任人：</label><input type="text" class="form_input " minlength="2"  required ><i class="i_start"></i></p>
        <p class="form_p"><label class="form_label">责任人身份证号码：</label><input type="text" class="form_input " minlength="2"  required ><i class="i_start"></i></p>
        <p class="form_p"><label class="form_label">联系电话：</label><input type="text" class="form_input " minlength="2"  required ><i class="i_start"></i></p>
        <p class="form_p"><label class="form_label">详细地址：</label><input type="text" class="form_input " minlength="2"  required ><i class="i_start"></i></p>
        <p class="form_p"><label class="form_label">建立时间：</label><input  class="form_date" id="demo"/></p>
        <p class="form_p"><label class="form_label">酒店图片：</label><input type="button" value="加载图片" class="but_close"></p>
        <p class="form_p"><label class="form_label a_area">备注：</label><textarea class="text_area1" ></textarea></p>
    </form>
    <div class="clear"></div>

</div>

<div class="div_right">
    <p class="p_padd"><img src="../../../image/ph_list.png"/></p>
    <p class="p_padd"><input type="button" class="but_upload" value="点击上传图片"/></p>
    <p class="p_text1">上传图片格式为：jpg,png,tif,pneg,tiff格式。</p>
</div>
<div class="clear"></div>
<form id="form_demo1"  class="form_b">    <p class="but_p"><input type="submit" value="保存" class="but_save"/><input type="button" value="取消" class="but_close" id="close"> </p></form>

<script src="../../../js/jquery.js"></script>

<script src="../../../js/date/js/laydate.js"></script>
<script src="../../../js/jquery-validation-1.14.0/dist/jquery.validate.min.js" charset="utf-8"></script>
<script src="../../../js/jquery-validation-1.14.0/dist/localization/messages_zh.js" charset="utf-8"></script>
<script>
    !function () {
        laydate.skin('danlan'); //
        laydate({ elem: '#demo' });
        laydate({ elem: '#demo1' }); //
    } ();
</script>
<script >
    $.validator.setDefaults({
        submitHandler: function () {
            alert("修改成功");
        }
    });
    $().ready(function () {
        $(".form_b").validate();
    });
</script>
</body>
</html>
