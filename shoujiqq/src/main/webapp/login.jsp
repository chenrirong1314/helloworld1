<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="/shoujiqq/">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<link rel="stylesheet" href="css/animate.css" />
		 <link rel="icon" href="https://www.jd.com/favicon.ico" mce_href="//www.jd.com/favicon.ico" type="image/x-icon" />
</head>
<style>
html {
	font-size: 10px;
}

body {
	margin: 0;
	padding: 0;
	background-image: url(img/login.jpg);
	background-repeat: no-repeat;
	background-size: cover;
}

.login_top {
	height: 5rem;
	width: 100%;
	background-color: #00BFFF;
	background: rgba(0, 191, 255, 0.5);
}

.top {
	margin: 0;
	padding-top: 1rem;
	text-indent: 1rem;
	color: white;
}

.da {
	text-decoration: none;
	color: white;
	font-weight: bolder;
	font-size: 2.5rem;
}

.return {
	padding-left: 0.5rem;
	font-size: 2.2rem;
}

.addLogin {
	padding-left: 6rem;
	font-size: 2.3rem;
}

.tou {
	height: 15rem;
	display: flex;
}

.touk {
	margin: auto;
	border: 2px solid white;
	width: 8rem;
	height: 8rem;
	border-radius: 4rem;
	overflow: hidden;
}

input {
	width: 31.3rem;
	height: 4rem;
	outline: none;
	opacity: 0.7;
}

.doLogin {
	display: flex;
	justify-content: center;
	height: 5rem;
	margin-top: 1.2rem;
}

.doLogin>button {
	padding: 1rem 11.5rem;
	font-size: 2.4rem;
	border-radius: 0.5rem;
	background-color: deepskyblue;
	outline: none;
	border: 0px;
	color: white;
}

.login_down {
	display: flex;
	justify-content: space-between;
	margin-top: 16.5rem;
	font-size: 1.6rem;
	color: #00BFFF;
	font-weight: bold;
}

.login_down>span {
	padding: 1rem;
}

.easy {
	position: fixed;
	top: 25.5rem;
	left: 28rem;
	display: none;
}
</style>
<body>
	<div>
		<div class="tou">
			<div class="touk">
				<img src="img/82-1P1311K914-50.jpg" width="100px" />
			</div>
		</div>
		<form method="post" action="UsertabController/userlogin">
			<div>
				<input type="text" name="username" placeholder="QQ号/手机号/邮箱"
					style="width: 100%;" /> <input type="password" name="password"
					placeholder="   密码" style="width: 100%;" /> <img
					src="img/eye65.png" / width="30px" class="easy">
				<div class="doLogin">
					<button class="animated bounceInDown"
						style="margin-top: 60px; height: 60px;">登录</button>
				</div>
			</div>
		</form>


		<div class="login_down">
			<span>无法登录?</span> <span><a href="zhuce.jsp">新用户</a></span>
		</div>
	</div>
	<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
	<script>
		
	</script>

</body>
</html>