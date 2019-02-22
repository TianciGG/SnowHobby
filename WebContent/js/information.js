$(function(){
	$.post('person/load.do',{},function(data){
		$("#avatarShow").attr("src",data.obj.imagepath);
		$("#avatar").attr("value",data.msg);
		$("#email").attr("value",data.obj.email);
		$("#email").attr("readonly",true);
		$('#name').val(data.obj.name);
		$('#nickname').val(data.obj.nickname);
		$('#brithday').val(data.obj.birthday);
		$('#tel').val(data.obj.tel);
		$("input:radio[value="+data.obj.sex+"]").attr('checked','true');
	},'json');
	 
})
function uploadImg() {
    if($('#file').val() != "") {
        $.ajaxFileUpload({
            type: "POST",
            url:"/SnowHobby/person/uploadFile.do",
            dataType: "json",
            fileElementId:"file",  // 文件的id
            success: function(d){
                if(d.code == 0) {
                    //图片显示
                    $("#avatar").attr("value",d.data.url);
                    $("#avatarShow").attr("src",d.data.url);
                }
            },
            error: function () {
                alert("上传失败");
            },
        });
    } else {
        alert("请先选择文件");
    }
}

function save(){
	var name = $('#name').val();
	var nickname = $('#nickname').val();
	var sex =  $('input[name="radio10"]:checked').val();
	var brithday = $('#brithday').val();
	var tel = $('#tel').val();
	var email = $('#email').val();
	var image = $('#avatar').val();
	if(name.trim()!=''||nickname.trim()!=''||sex.trim()!=''||brithday.trim()!=''||tel.trim()!=''||email.trim()!=''||image.trim()!=''){
		$.post('person/saveInformation.do',
				{name:name,nickname:nickname,sex:sex,birthday:brithday,
			     tel:tel,email:email,imagepath:image},
			function(data){
			    	 alert(data.msg);
		},'json');
	}
}


