<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="/WEB-INF/views/include/taglib.jsp" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
    <title>谁知道这是弄啥的</title>
    <style>
        * {
            margin: 0 auto;
            padding: 0;
            border: 0;
        }
    </style>
</head>
<frameset rows="82,*,31" cols="*" frameborder="no" border="0" framespacing="0">
    <frame src="/user/toPage?page=top1" name="topFrame" scrolling="No" noresize="noresize" id="topFrame"
           title="topFrame"/>
    <frameset cols="187,*" frameborder="no" border="0" framespacing="0">
        <frame src="/user/toPage?page=left1"/>
        <frameset rows="32,*" frameborder="no" border="0" framespacing="0">
            <frame src="/user/toPage?page=tab" scrolling="no"/>
            <frame src="/user/toPage?page=basic" name="right" scrolling=" auto"/>
        </frameset>
    </frameset>
    <frame src="/user/toPage?page=footer" frameborder="no" border="0" framespacing="0"/>
</frameset>
<noframes></noframes>
</frameset>
</html>
