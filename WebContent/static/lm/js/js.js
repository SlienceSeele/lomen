
function changeCss(obj){
var alist = document.getElementById("ulli").getElementsByTagName("li");
for(var i =0;i < alist.length;i++){ 
alist[i].className=""; //给所有a标签赋原色
}
obj.className="Selected";//令当前标签高亮
}

$(document).ready(function(){
	//初始化：是否开启DIV弹出窗口功能
	//0 表示开启; 1 表示不开启;
	var popupStatus = 0;
	//使用Jquery加载弹窗 
	function loadPopup(){   
	//仅在开启标志popupStatus为0的情况下加载  
	if(popupStatus==0){   
		$("#backgroundPopup").css({   
			"opacity": "0.8"  
		});   
		$("#backgroundPopup").fadeIn("slow");   
		$("#popupContact").fadeIn("slow");   
		popupStatus = 1;   
		}   
	}  
	//使用Jquery去除弹窗效果 
	function disablePopup(){   
	//仅在开启标志popupStatus为1的情况下去除
		if(popupStatus==1){   
				$("#backgroundPopup").fadeOut("slow");   
				$("#popupContact").fadeOut("slow");   
				popupStatus = 0;   
			}   
	} 
	//将弹出窗口定位在屏幕的中央
	function centerPopup(){   
	//获取系统变量
		var windowWidth = document.documentElement.clientWidth;   
		var windowHeight = document.documentElement.clientHeight;   
		var popupHeight = $("#popupContact").height();   
		var popupWidth = $("#popupContact").width();   
		//居中设置   
		$("#popupContact").css({   
			"position": "fixed",   
			"top": 150,   
			"left": windowWidth/2-popupWidth/2   
		});   
		//以下代码仅在IE6下有效
		  
		$("#backgroundPopup").css({   
			"height": windowHeight   
		});   
	}
	
	//打开弹出窗口   
	//按钮点击事件!
	$("#button").click(function(){   
		//调用函数居中窗口
		centerPopup();   
		//调用函数加载窗口
		loadPopup();   
	});
	//关闭弹出窗口   
	//点击"X"所触发的事件
	$("#popupContactClose").click(function(){   
			disablePopup();   
	});   
	//点击窗口以外背景所触发的关闭窗口事件!
	$("#backgroundPopup").click(function(){   
		disablePopup();   
	});   
	//键盘按下ESC时关闭窗口!
	$(document).keypress(function(e){   
		if(e.keyCode==27 && popupStatus==1){   
			disablePopup();   
		}   
	});  
});



$(document).ready(function(){
	//初始化：是否开启DIV弹出窗口功能
	//0 表示开启; 1 表示不开启;
	var popupStatus = 0;
	//使用Jquery加载弹窗 
	function loadPopup(){   
	//仅在开启标志popupStatus为0的情况下加载  
	if(popupStatus==0){   
		$("#backgroundPopup1").css({   
			"opacity": "0.8"  
		});   
		$("#backgroundPopup1").fadeIn("slow");   
		$("#popupContact1").fadeIn("slow");   
		popupStatus = 1;   
		}   
	}  
	//使用Jquery去除弹窗效果 
	function disablePopup(){   
	//仅在开启标志popupStatus为1的情况下去除
		if(popupStatus==1){   
				$("#backgroundPopup1").fadeOut("slow");   
				$("#popupContact1").fadeOut("slow");   
				popupStatus = 0;   
			}   
	} 
	//将弹出窗口定位在屏幕的中央
	function centerPopup(){   
	//获取系统变量
		var windowWidth = document.documentElement.clientWidth;   
		var windowHeight = document.documentElement.clientHeight;   
		var popupHeight = $("#popupContact1").height();   
		var popupWidth = $("#popupContact1").width();   
		//居中设置   
		$("#popupContact1").css({   
			"position": "fixed",   
			"top": 150,   
			"left": windowWidth/2-popupWidth/2   
		});   
		//以下代码仅在IE6下有效
		  
		$("#backgroundPopup1").css({   
			"height": windowHeight   
		});   
	}
	
	//打开弹出窗口   
	//按钮点击事件!
	$("#button1").click(function(){   
		//调用函数居中窗口
		centerPopup();   
		//调用函数加载窗口
		loadPopup();   
	});
	//关闭弹出窗口   
	//点击"X"所触发的事件
	$("#popupContactClose").click(function(){   
			disablePopup();   
	});   
	//点击窗口以外背景所触发的关闭窗口事件!
	$("#backgroundPopup1").click(function(){   
		disablePopup();   
	});   
	//键盘按下ESC时关闭窗口!
	$(document).keypress(function(e){   
		if(e.keyCode==27 && popupStatus==1){   
			disablePopup();   
		}   
	});  
});



$(function(){    
    /*public*/
    (function(){
        var windowHeight=$(window).height();
        var containerHeight=$("#container").height();
        if(windowHeight-containerHeight>380){
            $("#container").css("min-height",windowHeight-380);
        }
    })();    
	$("li>h5",".foldList").bind("click",function(){
	    var li=$(this).parent();
		if(li.hasClass("fold")){
			li.removeClass("fold");
			$(this).find("b").removeClass("UI-bubble").addClass("UI-ask");
			li.find(".foldContent").slideDown();
		}else{
			li.addClass("fold");
			$(this).find("b").removeClass("UI-ask").addClass("UI-bubble");
			li.find(".foldContent").slideUp();
		}
	})   
})


$(function() {
	var $t, leftX, newWidth;


	$('.menu ul').append('<div class="block"></div>');
	
	var $block = $('.block');

	$block.width($(".current").width()).css('left', $('.current a').position().left).data('rightLeft', $block.position().left).data('rightWidth', $block.width());
	
	$('.menu ul li').find('a').hover(function() {
		$t = $(this);
		leftX = $t.position().left;
		newWidth = $t.parent().width();

		$block.stop().animate({
			left: leftX,
			width: newWidth
		},300);
	}, function() {
		$block.stop().animate({
			left: $block.data('rightLeft'),
			width: $block.data('rightWidth')
		},300)
	})
	
	// $($('.menu ul li.current'))[0].setAttribute('id','firstLi');
	// var getClass = $($('.menu ul li.current'))[0].getAttribute('class','current');
	// console.log(getClass)
})


$(function(){
	$w = $('.pic').width();
	$h = $('.pic').height();
	$w2 = $w + 20;
	$h2 = $h + 20;

	$('.pic').hover(function(){
	
		 $(this).stop().animate({height:$h2,width:$w2,left:"-10px",top:"-10px"},500);
		
	},function(){
	
		 $(this).stop().animate({height:$h,width:$w,left:"0px",top:"0px"},500);
		
	});
});



$(document).ready(function(){
  
  $('li.mainlevel').mousemove(function(){
  $(this).find('ul').slideDown("1000");//you can give it a speed
  });
  $('li.mainlevel').mouseleave(function(){
  $(this).find('ul').slideUp("fast");
  });
  
});
