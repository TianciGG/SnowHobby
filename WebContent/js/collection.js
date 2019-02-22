$(function(){
	var html = '';
	$.post('collection/listTeam.do',{},function(data){
		for(var i= 0 ;i<data.list.length;i++){
			html+='<div class="s-item-wrap"><div class="s-item"><div class="s-pic"><a href="collection/toCollection.do" class="s-pic-link">' 
				+'<img height="120" width="180"	src="'+data.list[i].imagepath+'" alt="'+data.list[i].name+'" title="'+data.list[i].name+'" class="s-pic-img s-guess-item-img"></a>'
				+'</div> <div class="s-info"><div class="s-title"><a href="collection/toCollection.do" title="'+data.list[i].name+'">'+data.list[i].name+'</a></div><div class="s-price-box">'
				+'<span class="s-price"><em class="s-value">海拔:'+data.list[i].altitude+'</em></span>'
				+'</div><div class="s-extra-box"><span class="s-comment">天数:'+data.list[i].dayno+'</span> <span class="s-sales">出发城市:'+data.list[i].dpecity+'</span></div></div>'
				+'</div></div>'
		}
		$('#tuandui').html(html);
	},'json');
})