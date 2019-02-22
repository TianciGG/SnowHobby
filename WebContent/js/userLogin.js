function login_popup() {
    $("#loginModal").modal("show")
}

$(".scroll").on("click", login_popup),function() {
    var e = [];
    $(".modal").on("show.bs.modal",
    function() {
        for (var s = 0; e.length > s; s++) e[s] && (e[s].modal("hide"), e[s] = null);
        e.push($(this));
        var o = $(this),
        a = o.find(".modal-dialog"),
        t = $('<div style="display:table; width:100%; height:100%;"></div>');
        t.html('<div style="vertical-align:middle; display:table-cell;"></div>'),
        t.children("div").html(a),
        o.html(t)
    })
} ();

function loginUser(){
	var name = $('#name').val();
	var password = $('#password').val();
	var url = "/SnowHobby/user/loginUser.do";
	$.post(url,{name:name,password:password},function(data){
		if(data.status=="200"){
			if(data.obj.status==0){
				window.location.href='user/toInformation.do';
			}else{
				window.location.href='user/toIndex.do';
			}
		}else{
			alert("用户名或密码错误")
		}
	},"json")
}