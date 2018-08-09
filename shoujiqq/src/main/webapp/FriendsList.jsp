<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="/shoujiqq/">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<title></title>
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<script type="text/javascript" src="js/jquery-3.2.1.min.js" ></script>
		<script type="text/javascript" src="js/bootstrap.js" ></script>
		<script type="text/javascript" src="js/remstyle.js" ></script>
	
<title>Insert title here</title>
</head>
<style type="text/css">
		body{background: transparent;padding: 6rem 0 3.7rem 0;}
		:focus{outline: 0;}
		#seek-div>button{
			height: 3rem;
			width:100%;
			background-color: rgba(0,0,0,0);
			border: 1px solid rgba(255,255,255,0.3);
			border-radius: 2px;
			color: rgba(255,255,255,0.8);
		}
		#seek-div{margin-bottom: 0.5rem;}
		
		.nav-tabs{
			border: 1px solid rgba(255,255,255,0.3);
		}
		
		.nav-tabs li{
			width: 7rem;
		}
		
		.nav-tabs li a{
			border: none !important;
			color: rgba(255,255,255,0.5);
		}
		
		.head-img>img{
			width: 4rem;
			height: 4rem;
			border-radius: 50%;
		}
		.head-img{margin: 0.2rem 0.6rem 0.2rem 0.4rem;}
		
		.list-div{
			display: flex;
			min-width: 100%;
			padding-top: 0.6rem;
		}
		
		.friend-list{
			margin: 0;
		}
		.friend-list li,.grouping-list .grouping-friend{
			padding: 0;
		}
		.nav-tabs .active{
			border-bottom: 4px solid white;
		}
		.nav-tabs .active a{
			color:white !important;
		}
		
		.group-div,.newfriend{
			color: rgba(255,255,255,0.8);
		}
		.newfriend li{
			background-color: rgba(0,0,0,0.4);
			border: 1px solid rgba(255,255,255,0.3);
			padding: 1rem;
		}
		.group-div{
			background-color: rgba(0,0,0,0.4);
		}
		.group-div *{
			background-color: rgba(0,0,0,0) !important;
		}
		.tab-content li{
			border: none;
			border-bottom: 1px solid rgba(255,255,255,0.3);
		}
		.grouping-list .grouping-friend{
			border: none !important;
		}
	</style>

<body>
	<div id="body-div">
			<div id="seek-div" class="container">
				<button><span class="glyphicon glyphicon-search" style="position: initial;"></span>搜索</button>
			</div>
			<div class="newfriend">
				<ul class="list-group">
				  <li class="list-group-item">新朋友<span class="glyphicon glyphicon-chevron-right pull-right"></span></li>
				  <li class="list-group-item">创建群聊<span class="glyphicon glyphicon-chevron-right pull-right"></span></li>
				</ul>
			</div>
			<div class="group-div">
				  <ul class="nav nav-tabs text-center" role="tablist">
				    <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">好友</a></li>
				    <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">群聊</a></li>
				    <li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">设备</a></li>
				    <li role="presentation"><a href="#settings" aria-controls="settings" role="tab" data-toggle="tab">通讯录</a></li>
				  </ul>
				
				  <!-- Tab panes -->
				  <div class="tab-content">
				    <div role="tabpanel" class="tab-pane active" id="home">
				    	<ul class="list-group grouping-list">
						  <li class="list-group-item grouping-list-li">
						  	<span><span class="glyphicon glyphicon-triangle-bottom"></span>特别关心</span><span class="pull-right">2/2</span>
						  </li>
						  <li class="list-group-item grouping-friend">
						  		<ul class="list-group friend-list">
									<li class="list-group-item">
										<div class="list-div">
									  		<div class="head-img"><img src="img/82-1P1311K914-50.jpg"/></div>
										  	<div class="usernameAndShuoShuo">
										  		<p><b>帅哥斌</b></p>
										  		<p>[在线]</p>
										  	</div>
										</div>
									</li>
									<li class="list-group-item">
										<div class="list-div">
									  		<div class="head-img"><img src="img/82-1P1311K914-50.jpg"/></div>
										  	<div class="usernameAndShuoShuo">
										  		<p><b>帅哥斌</b></p>
										  		<p>[在线]</p>
										  	</div>
										</div>
									</li>
								</ul>
						  </li>
						  <li class="list-group-item grouping-list-li">
						  	<span><span class="glyphicon glyphicon-triangle-right"></span>我的好友</span><span class="pull-right">0/0</span>
						  </li>
						</ul>
				    </div>
				    <div role="tabpanel" class="tab-pane" id="profile">2</div>
				    <div role="tabpanel" class="tab-pane" id="messages">3</div>
				    <div role="tabpanel" class="tab-pane" id="settings">4</div>
				  </div>
			</div>
		</div>

</body>
<script type="text/javascript" src="js/zepto.js" ></script>
	<script>
		$(".grouping-list-li").on("touchend",function(){
			if($(this).find(".glyphicon").is(".glyphicon-triangle-bottom"))
				$(this).find(".glyphicon").removeClass("glyphicon-triangle-bottom").addClass("glyphicon-triangle-right");
			else
				$(this).find(".glyphicon").removeClass("glyphicon-triangle-right").addClass("glyphicon-triangle-bottom");
			$(this).next(".grouping-friend").stop().slideToggle();
		});
	</script>

</html>