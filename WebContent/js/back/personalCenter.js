//个人中心页面，页面加载完毕调用的事件
$(document).ready(function() {
	$("#mygender").val($("#elPersonGender").val());
	var imgURL = $("#elPersonAtturl").val() + "/" + $("#elPersonAttname").val();
	if (imgURL != "/") {
		$("#myHeadIconID").attr("src", imgURL);
	}
});

// 个人中心页面，选择图片按钮的事件
function choosePic() {
	$("#fileToUpload").click();
}
// 个人中心页面，上传按钮的事件
function ajaxUpload() {
	$.ajaxFileUpload({
		url : 'logic/myUpload.do',
		secureuri : false,
		fileElementId : 'fileToUpload',// file标签的id
		dataType : 'json',// 返回数据的类型
		data : {
			deviceId : $("#elPersonId").val(),
			mytAttid : $("#elAttUpdateID").val(),
			attType : 'headicon'
		},// 一同上传的数据
		success : function(data, status) {
			$("#mypicID").attr("src", data.atturl + data.attname);
			alert('上传成功!');
		}
	});
}
// 个人中心页面，提交按钮的事件
function updatePerson() {
	$.ajax({
		cache : true,
		type : "POST",
		url : "logic/updatePerson.do",
		data : {
			userId : $("#myuserId").val(),
			presonId : $("#mypersonId").val(),
			cname : $("#mytCname").val(),
			mobile : $("#mobilenum").val(),
			email : $("#myemail").val(),
			gender : $("#mygender").val(),
			dicId : $("#mykeshixiala").val(),
		},
		async : false,
		success : function(data) {
			if (data == true) {
				alert('更新成功!');
				window.location.href = "goToPersonalCenterPage.do";
			} else {
				alert('更新失败!');
			}
		}
	});
}
