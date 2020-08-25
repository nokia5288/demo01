<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="/WEB-INF/views/include/taglib.jsp" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>top</title>
    <link href="${cCtx}/css/all.css" rel="stylesheet" type="text/css"/>

</head>

<body>
<div class="top">
    <div class="top_logo"><img src="${cCtx}/image/logo1.png"/></div>
    <div class="top_right">
        <ul>
            <li><i class=" i_all i_user"></i> <a href="#">${user}</a></li>
            <li><i class="  i_msg"></i><a href="#">消息</a><span class="circle">6</span></li>
            <li><i class="  i_pass"></i><a href="#">修改密码</a>
            </li>
            <li><i class=" i_all  i_cance"></i><a href="#">注销</a></li>
        </ul>
    </div>
</div>
</body>
</html>
