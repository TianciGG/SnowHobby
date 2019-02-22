function checkOld(){
	if($('#oldPassword').val().trim()!=''||$('#oldPassword').val()!=null){
		$.post("user/checkOld.do",{password:$('#oldPassword').val()},function(data){
			if(data.status=="200"){
				
			}else{
				$('#oldPassword').focus();
				alert(data.msg);
			}
		},"json")
		return;
	}else{
		$('#oldPassword').focus();
		alert("原始密码不能为空！");
	}
}

function updataPwd(){
	var newpassword = $('#newPassword').val();
	if(newpassword.trim()!=''&&newpassword==$('#newPassword').val()){
		$.post('user/updataPwd.do',{password:newpassword},function(data){
			alert(data.msg);
		},"json")
	}else{
		alert("两次密码不一致");
	}
}