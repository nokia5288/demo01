$(function () {
    $.ajax({
        url: "/base/getMenu",
        type: "post",
        success: function (data) {
            var menu = data.data;
            if(menu!=''){
                var a;
                for (var i = 0; i < menu.length; i++) {
                    a = `
               <dd>
                    <div class="title" ><input class="id"  type="hidden" value="${menu[i].id}">  <img  src="/static/cms/image/Home.png" />${menu[i].name}</div>
               </dd>
               `;
                    $("#leftmenu").append(a);
                }
            }else{
                alert('没有数据');
            }

        }
    })
   $(document).on("click",".title",function () {
       //var id=$(this).find(".id").val();
       //console.log($(this).text())

    })


})