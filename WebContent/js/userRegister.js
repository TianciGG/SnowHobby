function register(){
	var name = $('#name').val();
	var password = $('#password1').val();
	var password1= $('#password2').val();
	var url = "/SnowHobby/user/registerUser.do"
	if(name.trim()!=''||name!=null){
		if(password==password1&&(password.trim()!=''||password!=null)){
			$.post(url,{name:name,password:password},function(data){
				if(data.status=="200"){
					alert(data.msg);
					window.location.href='user/toLoginUser.do';
				}else{
					alert(data.msg);
				}
			})
		}else{
			alert("内容格式错误");
		}
	}
}