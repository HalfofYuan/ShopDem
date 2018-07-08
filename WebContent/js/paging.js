$(function(){
	var start = $('#start').val();
	var pages = $('#pages').val();
	if(pages==0) return;
	var url = $('#url').val();
	var str = '<span>当前第  <span class="red">'+start+'</span> 页 共  <span class="red">'+pages+'</span> 页</span>';
	str += '<ul>';
	if(start!=1){
		str += '<li onclick="location=\''+url+'?start=1\'"><a href="javascript:">首页</a></li>';
		str += '<li onclick="location=\''+url+'?start='+(start-1)+'\'"><a href="javascript:">上一页</a></li>';
	}
	var i = 1;
	if(start>2) i = start-2;
	var j = 5;
	for(;i<=pages;i++){
		if(j--==0) break;
		if(i==start)
			str += '<li class="num this"><a href="javascript:">'+i+'</a></li>';
		else
			str += '<li class="num" onclick="location=\''+url+'?start='+i+'\'"><a href="javascript:">'+i+'</a></li>';
	}
		
	if(start!=pages){
		str += '<li onclick="location=\''+url+'?start='+(parseInt(start)+1)+'\'"><a href="javascript:">下一页</a></li>';
		str += '<li onclick="location=\''+url+'?start='+pages+'\'"><a href="javascript:">尾页</a></li>';
	}
	str += '</ul>';
	$('#paging').append(str);
});