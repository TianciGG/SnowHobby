function setTab(name, cursel, n) {
	for(i = 1; i <= n; i++) {
		var menu = document.getElementById(name + i);
		var con = document.getElementById("con_" + name + "_" + i);
		menu.className = i == cursel ? "hover" : "";
		con.style.display = i == cursel ? "block" : "none";
	}
}

$(document).ready(function() {
	$(".more a").click(function() {
		$(".line_bottom").fadeIn(1000);
		$(this).css('display', 'none');
	});
});

window.onscroll = function() {
	gaodu = $(".qt_sidebar").offset().top;
	mix = $(document).height() - 2400;
	if($(document).scrollTop() > gaodu) {
		//alert($(document).scrollTop());
		$(".qt_dingzhi").addClass('guding');
	} else {
		$(".qt_dingzhi").removeClass('guding');
	}
	if($(document).scrollTop() > mix) {
		$(".qt_dingzhi").removeClass('guding');
	}
}

$(document).ready(function() {
	function shurukuang(string) {
		var str = $(string).attr("data");
		$(string).val(str);
		$(string).focus(function() {
			var zhi = $(this).val();
			if($(this).val() == str) {
				$(this).val('');
			} else {
				$(this).val(zhi);
			}
		});
		$(string).blur(function() {
			var zhi = $(this).val();
			if($(this).val().length == '0') {
				$(this).val(str);
			} else {
				$(this).val(zhi);
			}
		});
		/*
		$("#button").click(function(){
			if($(string).val()==str){
				alert("err");
				//return false;
			}
		});
		*/

	}

	shurukuang('input[name="name"]');
	shurukuang('input[name="mobile"]');
	shurukuang('input[name="email"]');
});

$(document).ready(function() {
	$(".pop_chufa").css('display', 'none');

	$(".form input[name=city]").click(function(e) {
		e.stopPropagation();
		$(".pop_chufa").css('display', 'block');
	});

	$(document).click(function() {
		var yangshi = $(".pop_chufa").css('display');
		if(yangshi == "block") {
			$(".pop_chufa").css('display', 'none');
		}
	});

	$(".pop_chufa a").click(function() {
		$(".pop_chufa").css('display', 'none');
		var zhi = $(this).html();
		$(".form input[name=city]").val(zhi);
	});

	//	$(".form input[name=city]").focus(function(){
	//			$(".pop_chufa").css('display','block');
	//			$(".pop_chufa a").click(function(){
	//				$(".pop_chufa").css('display','none');
	//				var zhi=$(this).html();
	//				$(".form input[name=city]").val(zhi);
	//			});
	//
	//	});

	$(".form input[name=city]").keydown(function() {
		$(".pop_chufa").css('display', 'none');
	});

	$(".pop_people").css('display', 'none');

	$(".form input[name=people]").click(function(e) {
		e.stopPropagation();
		$(".pop_people").css('display', 'block');
	});

	$(document).click(function() {
		var yangshi = $(".pop_people").css('display');
		if(yangshi == "block") {
			$(".pop_people").css('display', 'none');
		}
	});

	$(".pop_people a").click(function() {
		$(".pop_people").css('display', 'none');
		var zhi = $(this).html();
		$(".form input[name=people]").val(zhi);
	});

	//	$(".form input[name=people]").focus(function(){
	//			$(".pop_people").css('display','block');
	//			$(".pop_people a").click(function(){
	//				$(".pop_people").css('display','none');
	//				var zhi=$(this).html();
	//				$(".form input[name=people]").val(zhi);
	//			});
	//
	//	});

	$(".form input[name=people]").keydown(function() {
		$(".pop_people").css('display', 'none');
	});

	$(".pop_yusuan").css('display', 'none');

	$(".form input[name=yusuan]").click(function(e) {
		e.stopPropagation();
		$(".pop_yusuan").css('display', 'block');
	});

	$(document).click(function() {
		var yangshi = $(".pop_yusuan").css('display');
		if(yangshi == "block") {
			$(".pop_yusuan").css('display', 'none');
		}
	});

	$(".pop_yusuan a").click(function() {
		$(".pop_yusuan").css('display', 'none');
		var zhi = $(this).html();
		$(".form input[name=yusuan]").val(zhi);
	});

	//	$(".form input[name=yusuan]").focus(function(){
	//			$(".pop_yusuan").css('display','block');
	//			$(".pop_yusuan a").click(function(){
	//				$(".pop_yusuan").css('display','none');
	//				var zhi=$(this).html();
	//				$(".form input[name=yusuan]").val(zhi);
	//			});
	//
	//	});

	$(".form input[name=yusuan]").keydown(function() {
		$(".pop_yusuan").css('display', 'none');
	});

	$(".pop_mudidi").css('display', 'none');

	$(".form input[name=mudidi]").click(function(e) {
		e.stopPropagation();
		$(".pop_mudidi").css('display', 'block');
	});

	$(document).click(function() {
		var yangshi = $(".pop_mudidi").css('display');
		if(yangshi == "block") {
			$(".pop_mudidi").css('display', 'none');
		}
	});

	$(".pop_mudidi a").click(function() {
		$(".pop_mudidi").css('display', 'none');
		var zhi = $(this).html();
		$(".form input[name=mudidi]").val(zhi);
	});

	//	$(".form input[name=mudidi]").focus(function(){
	//			$(".pop_mudidi").css('display','block');
	//			$(".pop_mudidi a").click(function(){
	//				$(".pop_mudidi").css('display','none');
	//				var zhi=$(this).html();
	//				$(".form input[name=mudidi]").val(zhi);
	//			});
	//
	//	});

	$(".form input[name=mudidi]").keydown(function() {
		$(".pop_mudidi").css('display', 'none');
	});

});

$(document).ready(function() {
	$(".chufa").click(function(e) {
		e.stopPropagation();
		$(".chufa_box").css('display', 'block');
	});

	$(document).click(function() {
		var yangshi = $(".chufa_box").css('display');
		if(yangshi == "block") {
			$(".chufa_box").css('display', 'none');
		}
	});

	$(".chufa_box a").click(function() {
		$(".chufa_box").css('display', 'none');
		var zhi = $(this).html();
		$(".city").val(zhi);
	});

	$(".city").focus(function() {
		$(this).blur();
	});
	$(".mdd").click(function(e) {
		e.stopPropagation();
		$(".mudidi_box").css('display', 'block');
	});

	$(document).click(function() {
		var yangshi = $(".mudidi_box").css('display');
		if(yangshi == "block") {
			//alert(yangshi);	
			$(".mudidi_box").css('display', 'none');
		}
	});

	$(".mudidi_box a").click(function() {
		$(".mudidi_box").css('display', 'none');
		var zhi = $(this).html();
		$(".mdd").val(zhi);
	});

	$(".mdd").keydown(function() {
		$(".mudidi_box").css('display', 'none');
	});
	/*
	$(".mdd").focus(function(){
		$(this).blur();	
	});
		
		
	
		
	shurukuang('input[name="name"]');
	shurukuang('input[name="mobile"]');
	*/
});


$(function() {
	var i = 2; 
	var width = ($('.qt_tj_box ul li').outerWidth(1)) * i; 
	var box = $('.qt_tj_box ul'); 
	var len = $('.qt_tj_box ul li').length; 
	var sudu = 1000; 
	var pages = len / i;
	var page = 1; 

	$('.prev').click(function() {
		if(page == pages) {
			box.animate({
				'left': '0px'
			}, sudu);
			page = 1;
		} else {
			box.animate({
				'left': '-=' + width + ''
			}, sudu);
			page++;
		}
	});

	$('.next').click(function() {
		if(page == pages) {
			box.animate({
				'left': '0px'
			}, sudu);
			page = 1;
		} else {
			box.animate({
				'left': '-=' + width + ''
			}, sudu);
			page++;
		}
	});
});

$(function() {
	$(window).scroll(function() {
		if($(window).scrollTop() > 100) {
			$(".gotop").fadeIn();
		} else {
			$(".gotop").fadeOut();
		}
	});
});