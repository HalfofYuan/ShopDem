$(function(){
	// 检测图片验证码
	$('#code').blur(function(){
		$.ajax({
			url:'checkcode',// 请求地址
			type:'post',// 请求类型
			async:false,// 同步请求
			data:{code:$('#code').val()},
			success:function(m){
				if(m=='false') $('.code').text('验证码错误');
				else $('.code').text('');
			}
		});
	});
	// 刷新图片验证码
	$('#imgcode').click(function(){
		var r = Math.random();
		$(this).prop('src','getyzm?i='+r);
	});
	$('#loginform').submit(function(){
		var flag = true;
		// 非空验证
		$(':text,:password').each(function(){
			if($(this).val().trim()==''){
				$(this).focus();
				flag = false;
				return false;
			}
		});
		$('#code').blur();
		if($('.code').text()=='验证码错误'){
			$('#code').select();
			return false;
		}
		return flag;
	});
});