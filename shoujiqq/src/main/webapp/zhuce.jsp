<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="/shoujiqq/">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
		<script type="text/javascript" src="js/jquery-3.2.1.min.js" ></script>
	</head>
	<style type="text/css">
		body{
			background-image: url(img/login.jpg);
			background-repeat: no-repeat;
			background-size: cover;
		}

		.qbody{
			font-size: 80px;
			color: white;
			margin-left: 80px;
		}
		
		.wbody{
			font-size: 4rem;
			margin-top: 200px;
			margin-left: 70px;
			color:white;
		}
		
		input{
			font-size: 3rem;
		}
	</style>
	<body>
		<div class="qbody">
			<p>QQ</p>
		</div>
		
		<div class="wbody">
			
			<form action="UsertabController/insertusertab" method="post">
				昵称<input id="nickName" name="nickname" type="text" style="margin-top: 100px;border: 0px;background: none;outline: none;color: white;margin-left: 40px;" /><br />
				<hr style="width: 30rem;margin-left: 10rem;background: white;"/>
					
				密码<input id="password" name="password" type="password" style="margin-top: 100px;border: 0px;background: none;outline: none;color: white;margin-left: 40px;"/><br />
				<hr style="width: 30rem;margin-left: 10rem;background: white;"/>
				<input type="button" id="tjiao" style="border-radius: 0.6rem;margin-top: 60px; font-size: 3rem; color: white; background-color: dodgerblue; margin-left: 100px;height: 110px; width: 600px;" value="注册" />
			
			</form>
				<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
		<script type="text/javascript">
			$(function(){
				
				$("#tjiao").click(function(){

					var nickName=$("#nickName").val();
					var password=$("#password").val();
				
					$.post("UsertabController/addUser",{"nickName":nickName,"password":password},function(data){
						alert("你的账号是："+data+"；请牢记！");
						window.location.href="login.jsp";
					})
				})
				
			})
		</script>
		</div>
		
	</body>
</html>