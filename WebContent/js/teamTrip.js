$(function(){
	$.post('team/findAll.do',{},function(data){
		var html = '';
		if(data.status=="200"&&data.list.length>0){
			for(var i = 0;i<data.list.length;i++){
				html+='<li><div class="txt"><div class="name"><a href="team/toTeamTrip.do">'+data.list[i].name+'</a>'
				      +'</div><div class="fname">'+data.list[i].introduction+'<br>海拔：'+data.list[i].altitude+'<br>行程天数：'+data.list[i].dayno+'<br>出发时间：'+data.list[i].gooff+'<br>出发城市：'+data.list[i].dpecity+'<br></div>'
				      +'<div class="jia"><div class="xianjia"><i>专业领队</i></div></div><div class="view">'
					  +'<a onclick="joinTeam('+data.list[i].tid+')"></a></div></div>'
					  +'<div class="pic"><a href="team/toTeamTrip.do"><img src="'+data.list[i].imagepath+'" /></a></div></li>';
			}
			$('#seeAll').html(html);
		}
	},"json")
})

function joinTeam(tid){
	$.post('team/joinTeam.do',{tid:tid},function(data){
		alert(data.msg)
	},"json");
}
