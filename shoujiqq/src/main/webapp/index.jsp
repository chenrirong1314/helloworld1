<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,height=device-height,target-densitydpi=device-dpi,user-scalable = yes,initial-scale=1, minimum-scale=1, maximum-scale=1">
<title>Insert title here</title>
</head>
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<script type="text/javascript" src="js/jquery-3.2.1.min.js" ></script>
		<script type="text/javascript" src="js/bootstrap.js" ></script>
		<script type="text/javascript" src="js/remstyle.js" ></script>
<style>
		body{
			background-image: url(img/myImg.jpg);
			background-size: cover;
			color: white;
		}
		:focus{outline: 0;}
		#head-div{
			position: fixed;
			width: 100%;
			top: 0;
			display: flex;
			justify-content: space-between;
			background:-webkit-linear-gradient(left,rgba(73, 100, 254, 0.5), rgba(49, 190, 254, 0.5));
			line-height: 5rem;
			font-size: 2rem;
		}   
		#bottom-div{
			position: fixed;
			width: 100%;
			bottom: 0;
			display: flex;
			justify-content: space-between;
			background-color: rgba(0, 0, 0, 0.5);
			font-size: 2.5rem;
		}
		#bottom-div>button{
			background-color: rgba(0,0,0,0);
			border: none;
			padding: 0 2rem;
			margin-top: 0.5rem;
		}
		#bottom-div>button>p{font-size: 0.5rem;}
		#head-div #dropdownMenu1{background-color: rgba(0,0,0,0);border: none;color: white;outline: none;}
		#head-div #dropdownMenu1>.glyphicon{font-size: 2.5rem;}
		.head-img>img{
			width: 4rem;
			height: 4rem;
			border-radius: 50%;
		}
		.head-img{margin: 0.2rem 0.2rem 0.2rem 0.4rem;}
		/*#seek-div>button{height: 3rem;width:100%;background-color: rgba(0,0,0,0);border: 1px solid #eee;border-radius: 2px;}
		#seek-div{margin-bottom: 0.5rem;}*/
		/*.news-list li{
			height: 6rem;
			display: flex;
			position: initial;
			padding-left: 0;
			background-color: rgba(0,0,0,0.1);
			border-bottom: 1px solid #eee;
			border-top: none;
		}*/
		/*.usernameAndShuoShuo{width: 100%;line-height: 2rem;font-size: 1.3rem;}
		.usernameAndShuoShuo b{font-size:1.5rem ;}*/
		/*.badge-danger{background-color: red;border: none;}*/
		button.selected{color: #29AEE1;}
		#web{height: 55.2rem;}
		
	</style>
<input type="hidden" name="indexType" />

<body>
<div id="head-div">
			<div class="head-img">
				<img src="img/82-1P1311K914-50.jpg"/>
			</div>
			<span id="">
				消息
			</span>
			<div class="dropdown">
			  <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
			    <span class="glyphicon glyphicon-menu-hamburger"></span>
			  </button>
			  <ul class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenu1">
			    <li><a href="javascript:"><span class="glyphicon glyphicon-home"></span>创建群聊</a></li>
			    <li><a href="tianjia.jsp" ><span class="glyphicon glyphicon-plus"></span>加好友</a></li>
			    <li><a href="javascript:"><span class="glyphicon glyphicon-qrcode"></span>扫一扫</a></li>
			    <li><a href="javascript:"><span class="glyphicon glyphicon-paste"></span>面对面快传</a></li>
			    <li><a href="javascript:"><span class="glyphicon glyphicon-usd"></span>收付款</a></li>
			  </ul>
			</div>
		</div>
		<div id="body-div">
			<iframe id="web" frameborder="0" width="100%" src="NewsList.jsp">
			</iframe>
		</div>
		<div id="bottom-div" class="container-fluid">
			<button data-src="NewsList.jsp" class="ction selected"><span class="glyphicon glyphicon-comment"></span><p>消息</p></button>
			<button data-src="FriendsList.jsp" class="ction"><span class="glyphicon glyphicon-user"></span><p>联系人</p></button>
			<button data-src="NewsList.jsp" class="ction"><span class="glyphicon glyphicon-eye-open"></span><p>看点</p></button>
			<button data-src="kojian.jsp"  id="dongtai" class="ction"><span class="glyphicon glyphicon-asterisk"></span><p>动态</p></button>
		</div>

</body>
<script type="text/javascript" src="js/zepto.js" ></script>
	<script>
		$(".ction").on("touchend",function(){
			$("[name=indexType]").val($(this).data("src")).change();
			if($(this).is(".selected"))
				return false;
			$(this).find("span").animate({"font-size":"1.8rem"},1,function(){
				$("button").has($(this)).addClass("selected");
				$(this).animate({"font-size":"2.5rem"},150)
			})
			$(this).siblings().removeClass("selected");
		})
		
		$("[name=indexType]").on("change",function(){
			$("#web").attr("src",$(this).val());
		});
		$("#dongtai").on("click",function(){
			//alert("1");
			$("#head-div").hide();
		});
		
	</script>

</html>