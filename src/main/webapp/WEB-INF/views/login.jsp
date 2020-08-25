<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="/WEB-INF/views/include/taglib.jsp" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="renderer" content="webkit"/>
    <meta name="force-rendering" content="webkit"/>
    <title></title>
    <link type="text/css" rel="stylesheet" href="${lCtx}/css/style.css"/>
    <script type="text/javascript" src="${lCtx}/js/jquery-1.8.2.min.js"></script>
    <script type="text/javascript" src="${cCtx}/layer_v2.1/layer/layer.js"></script>
    <script type="text/javascript" src="${lCtx}/sys/login.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            var height = $(document).height();
            $('body').css('height', height);
            var mart = height - 500;
            mart = mart / 2;
            $('.loginBox').css('marginTop', mart);
        })
    </script>
</head>

<body>
<div id="loginBox" class="loginBox">
    <h1>欢迎登陆</h1>
    <div class="item">
        <div class="icon"><img src="${lCtx}/images/icon1.png"/></div>
        <div class="txt"><input id="uName" type="text" placeholder="请输入您的用户名"/></div>
    </div>
    <div class="item">
        <div class="icon"><img src="${lCtx}/images/icon2.png"/></div>
        <div class="txt"><input id="uPwd" type="password" placeholder="请输入您的密码"/></div>
    </div>
    <div class="item_2">
        <input id="check" type="checkbox" value="true"/>
        <span>记住我</span>
        <a href="javascript:void(0)">忘记密码？</a>
    </div>
    <div class="item_3">
        <input id="sub" type="submit" value="安全登录" class="btn"/>
    </div>
    <div class="item_4">
        还没有账号？<a id="register" href="javascript:void(0)">立即注册</a>
    </div>
</div>
</body>
</html>
