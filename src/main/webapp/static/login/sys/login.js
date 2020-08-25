$(function(){
   console.log($('#check').is(':checked'));
    $("#sub").click(function(){
        var uName=$("#uName").val();
        var uPwd=$("#uPwd").val();
        if(uName==""){
            layer.alert('用户名不允许为空', {icon: 2});
        }else if(uPwd==""){
            layer.alert('密码不允许为空', {icon: 2});
        }else{
            $.ajax({
                url:"/user/login",
                type:"post",
                data:{uName:$("#uName").val(),uPwd:$("#uPwd").val()},
                success:function (data) {
                    if(data.msg==1){
                        //layer.alert('登陆成功', {icon: 3});
                        window.location.href="/user/toIndex";
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
    $("#register").click(function () {
        window.location.href="/user/toRegister";
    })

})