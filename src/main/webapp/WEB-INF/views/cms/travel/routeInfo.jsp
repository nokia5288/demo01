﻿<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="/WEB-INF/views/include/taglib.jsp" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>无标题文档</title>
    <link href="../../../css/main.css" rel="stylesheet" type="text/css" />

</head>

<body>
<div class="pub_box">
<div class="div_float1">
    <form id="form_demo"  class="form_b">
        <p class="form_p"><label class="form_label">编号：</label><input type="text" class="form_input1 readonly" readonly="readonly"><i class="i_start"></i><a class="a_note">自动生成</a> </p>
        <p class="form_p"><label class="form_label">名称：</label><input type="text" class="form_input1 " minlength="2"  required ><i class="i_start"></i> </p>
        <p class="form_p"><label class="form_label">电子邮件：</label><input type="email" class="form_input1 " > </p>
        <p class="form_p"><label class="form_label">联系电话：</label><input type="number" class="form_input1 " name="digits" ><a class="a_note">必须为数字</a></p>
</form>
</div>
       <div class="div_float2">
           <form class="form_b" ><p class="form_p"><label class="form_label">类型：</label><select class="form_input1">
            <option>国内社</option>
            <option>国外社</option>
        </select></p>
        <p class="form_p"><label class="form_label">建立时间：</label><input  class="form_date" id="Text2"/></p>
        <p class="form_p"><label class="form_label">起点：</label><input  class="form_date" id="Text1"/></p>
        <p class="form_p"><label class="form_label">终点：</label><input  class="form_date" id="demo"/></p></div>
    <div class="clear"></div>
        <p class="form_p"><label class="form_label a_area">线路详细：</label><textarea class="text_area1" ></textarea></p>
        <p class="but_p"><input type="submit" value="保存" class="but_save"/><input type="button" value="取消" class="but_close" id="close"> </p>
    </form>


</div>
<script src="../../../js/jquery.js"></script>
<script src="../../../js/date/js/laydate.js"></script>
<script src="../../../layer_v2.1/layer/layer.js"></script>
<script src="../../../js/jquery-validation-1.14.0/dist/jquery.validate.min.js" charset="utf-8"></script>
<script src="../../../js/jquery-validation-1.14.0/dist/localization/messages_zh.js" charset="utf-8"></script>
<script>
    $(function () {
        var index = parent.layer.getFrameIndex(window.name); //获取当前窗体索引
        $('#close').on('click', function () {
            parent.layer.close(index); //执行关闭

        });

    })
</script>
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
