<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="/WEB-INF/views/include/taglib.jsp" %>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="renderer" content="webkit"/>
    <meta name="force-rendering" content="webkit"/>
    <title></title>
    <link type="text/css" rel="stylesheet" href="css/style.css"/>
    <script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
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
<div class="loginBox">
    <h1>找回密码</h1>
    <div class="item_5">
        <p>-^0^-</p>
        <p>新登录密码重置成功，请重新登录!</p>
    </div>
    <div class="item_3">
        <input name="" type="submit" value="重新登录" class="btn" onclick="location='success.jsp'"/>
    </div>
</div>
</body>
</html>
