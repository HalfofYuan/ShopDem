$(function(){
	//添加一个点击事件
	$(".color_ul li").click(function(){
		//切换颜色
		$(this).addClass("on").siblings().removeClass("on");
	});
	//添加商品数量
	$(".wrap_input .btn-add").click(function(){
		//获得input值
		var y = $("#buy_num").val();
		//转整
		x = parseInt(y)+1;
		if(x>$('#kc').text()) return;
		$("#buy_num").val(x); 

	});
	$('#buy_num').keyup(function(){
		var thisval = parseInt($(this).val());
		var kc = parseInt($('#kc').text());
		if(thisval>kc) $(this).val(kc);
	});
	//添加商品数量
	$(".wrap_input .btn-reduce").click(function(){
		//获得input值
		var y = $("#buy_num").val();
		//转整
		x = parseInt(y)-1;
		if(x>0){
			$("#buy_num").val(x); 
		}
	});

	$('#goshopping').click(function(){
		$.ajax({
			type:"post",
			url:'goshopping',
			data:$('#shpooingform').serialize(),
			success:function(m){
				if(m=='login'){
					location='login.jsp';
					return;
				}
				if(m=='true') layer.tips('加入购物车成功',$('#goshopping').parent());
				if(m=='false') layer.tips('加入购物车失败',$('#goshopping').parent());
			}
		});
	});
});