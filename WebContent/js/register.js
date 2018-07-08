// 注册页面脚本
$(function(){
	// 同意协议才可注册
	$('#agree').click(function(){
		var checked = $(this).prop('checked');
		if(checked==false){
			$('#registersubmit').prop('disabled',"true");
		}else{
			$('#registersubmit').removeProp('disabled');
		}
	});
	// 检测用户名/手机号码
	$('#tel').blur(function(){
		var regTel = /^1[0-9]{10}$/;
		$('.tel').text(!regTel.test($(this).val())?'请输入11位手机号码':'').css('color','red');
		if($('.tel').text()==''){
			$.post('istel',{tel:$(this).val()},function(m){
				if(m=='true') $('.tel').text('手机号码已存在').css('color','red');
				else $('.tel').text('手机号码可用').css('color','green');
			});
		}
	});
	var yzm;
	// 发送验证码按钮
	$('#msg').click(function(){
		if($('.tel').text()!='手机号码可用') return;
		// 调用发送验证码
		$.post('telcode',{tel:$('#tel').val()},function(m){
			yzm = m;
		});
		var time = 60;
		var timer = setInterval(function(){
			time--;
			if(time>0){
				$('#msg').val(time+'秒后重新发送');
				$('#msg').prop('disabled','true');
			}else{
				$('#msg').val('获取短信验证码');
				$('#msg').removeProp('disabled');
				clearInterval(timer);
			}
		},1000);
	});
	// 检测手机验证码是否正确
	$('#telyzm').blur(function(){
		if(yzm==$(this).val()) $('.telyzm').text('验证码输入正确').css('color','green');
		else $('.telyzm').text('验证码输入错误').css('color','red');
	});
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
	// 表单提交验证
	$('#register_form').submit(function(){
		var flag = true;
		// 非空验证
		$(':text,:password').each(function(){
			if($(this).val().trim()==''){
				$(this).focus();
				flag = false;
				return false;
			}
		});
		// 验证数据是否正确
		if($('.tel').text()!='手机号码可用'){
			$('#tel').select();
			return false;
		}
		if($('.telyzm').text()!='验证码输入正确'){
			$('#telyzm').select();
			return false;
		}
		if($('#password').val()!=$('#repassword').val()){
			$('#repassword').select();
			$('.repassword').text('两次密码输入不一致');
			return false;
		}else $('.repassword').text('');
		
		$('#code').blur();
		if($('.code').text()=='验证码错误'){
			$('#code').select();
			return false;
		}
		return flag;
	});
});