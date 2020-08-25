$(function () {
    var countdown = 90;
    var ok = 0;
    $("#uName").blur(function () {
        var uName = $("#uName").val();
        $.ajax({
            url: "/user/selByuName",
            type: "post",
            data: {uName: uName},
            success: function (data) {
                if (data.msg == 0) {
                    layer.alert('可以使用', {icon: 1});
                    ok = 1;
                } else {
                    layer.alert('用户已存在', {icon: 2});
                }
            },
            error:function () {
                layer.alert('服务器异常', {icon: 2});
            }
        })
    })
    $("#sendSms").click(function () {
        var mobile = $("#mobile").val();
        if (checkMobile(mobile)) {
            $.ajax({
                url: "/user/sendSms",
                type: "post",
                data: {mobile: mobile},
                success: function (data) {
                    if (data.msg == 1) {
                        layer.alert('发送成功', {icon: 1});
                        settime();
                    } else {
                        layer.alert('发送失败', {icon: 2});
                    }
                }
            });
        } else {
            layer.msg('手机号码格式不正确', {icon: 2});
        }
    });

    function settime() { //发送验证码倒计时
        var obj = $("#sendSms");
        if (countdown == 0) {
            obj.attr('disabled', false);
            obj.val("免费获取验证码");
            countdown = 60;
            return;
        } else {
            obj.attr('disabled', true);
            obj.val("重新发送(" + countdown + ")");
            countdown--;
        }
        setTimeout(function () {
                settime(obj)
            }
            , 1000)
    }

    $("#sub").click(function () {
        var uName = $("#uName").val();
        var uPwd = $("#uPwd").val();
        var email = $("#email").val();
        var mobile = $("#mobile").val();
        var code = $("#SmsCode").val();
        if (uName == "") {
            layer.alert('用户名不允许为空', {icon: 2});
        } else if (ok == 0) {
            layer.alert('用户已存在', {icon: 2});
        } else if (uPwd == "") {
            layer.alert('密码不允许为空', {icon: 2});
        } else if (!/^\w+@\w+(\.[a-zA-Z]{2,3}){1,2}$/.test(email)) {
            layer.alert('邮箱格式不正确', {icon: 2});
        } else if (!checkMobile(mobile)) {
            layer.alert('手机号码格式不正确', {icon: 2});
        } else if (code == "") {
            layer.alert('验证码不允许为空', {icon: 2});
        }  else {
            $.ajax({
                url: "/user/register",
                type: "post",
                data: {uName: uName, uPwd: uPwd, email: email, mobile: mobile,code:code},
                success: function (data) {
                   if(data.msg=="1"){
                       layer.alert('注册成功,3秒后跳转到登录界面', {icon: 3});
                       setTimeout(function () {
                           top.location.href = "/user/toLogin";
                       }, 2000)
                   }else{
                       layer.alert(data.msg, {icon: 2});
                   }

                },
                error:function () {
                    layer.alert('服务异常，请联系管理员', {icon: 2});
                }
            })
        }
    })
    function checkMobile(mobile) {
        var pattern = /^1[34578]\d{9}$/;
        return pattern.test(mobile);
    }
})