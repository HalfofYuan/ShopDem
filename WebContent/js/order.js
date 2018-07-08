// 该脚本用于前台订单详情 展开/缩回
$(function(){
	$('.zk').click(function(){
		$(this).parents('tr').next().siblings(':not(.tr-line)').hide();
		$(this).parents('tr').next().toggle();
	});
});