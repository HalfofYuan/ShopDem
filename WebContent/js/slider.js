// 主页图片轮播
$(function(){
	//轮播图效果
	var c = 0;
	//加一个时间事件
	function timer(){
		//获得序号
		c++;
		if(c==6){
			c=0;
		}
//		alert(c);
		//让自己显示，兄弟元素隐藏
		$("#inBaner .big_eye_pic li").eq(c).stop().fadeIn(1800).siblings().fadeOut(800);
		//改变颜色
		$("#inBaner .btn ul li").eq(c).stop().addClass("cur").siblings().removeClass("cur");
	}
	time = setInterval(timer,2000);
	//给图片添加一个移入移出效果
	$("#inBaner").hover(function(){
		//停止时间
		clearInterval(time);
	},function(){
		//时间继续
		time = setInterval(timer,2000);
	});
	//给色块添加一个移入移出事件
	$("#inBaner .btn ul li").mouseenter(function(){
		var n = $(this).index();
		//让第一个人图片显示 其余的隐藏
		$("#inBaner .big_eye_pic li").eq(n).stop().show().siblings().hide();
		//改变颜色
		$("#inBaner .btn ul li").eq(n).stop().addClass("cur").siblings().removeClass("cur");
	});
});