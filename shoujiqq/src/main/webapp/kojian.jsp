<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width,height=device-height,target-densitydpi=device-dpi,user-scalable = yes,initial-scale=1, minimum-scale=1, maximum-scale=1">

<title></title>
</head>
<link href="css/bootstrap.min.css" rel="stylesheet">

<style>
* {
	margin: 0;
	padding: 0;
}

.xfuto {
	display: flex;
	justify-content: space-between;
	padding-top: 1rem;
	position: fixed;
	left: 0px;
	top: 0px;
	width: 100%;
	height: 6rem;
	z-index: 9999;
}

.xfuto span {
	color: white;
}

.bj {
	background-color: black;
	width: 34.5rem;
	height: 25rem;
	background-image: url(img/kayn-the-shadow-reaper-1920x1200.jpg);
	background-size: 40rem;
}

.huifuls {
	margin-right: 0.5rem;
	font-size: 2rem;
}

.addss {
	font-size: 2rem;
}

.rr {
	padding-top: 11.5rem;
	padding-left: 2.5rem;
}

.tbb {
	color: white;
}

.liull {
	padding-left: 20rem;
}

.fg {
	border-left: 1px solid white;
	padding-left: 1rem;
	font-size: 1.3rem;
	font-family: "楷体";
}

.eys {
	padding-right: 1rem;
	font-size: 3rem;
}

.di {
	margin-top: 2rem;
}

.di a {
	font-family: "楷体";
	color: white;
	margin-left: 3rem;
}

.ssname {
	font-family: "楷体";
	font-size: 1.8rem;
}

.ssnrto {
	display: flex;
	justify-content: space-between;
}

.czjt {
	margin-right: 1rem;
	margin-top: 1rem;
}

.sssj {
	font-size: 1rem;
}

.ssnrzidiv {
	margin-left: 1rem;
	margin-right: 1rem;
	width: 35rem;
	word-wrap: break-word;
}

.ssnrtudiv {
	margin-left: 1rem;
	width: 35rem;
	margin-top: 1rem;
}

.ssnrtudiv img {
	max-width: 11rem;
	　　 height: auto;
	height: 11rem;
	margin: 1px;
}

.ssgl {
	display: flex;
	justify-content: flex-end;
	margin-top: 2rem;
}

.ssgl>span {
	margin-left: 5rem;
}

.dianzdiv {
	margin-left: 1rem;
}

#bg {
	position: fixed;
	z-index: 10000;
	top: 0; /*满屏效果*/
	bottom: 0;
	left: 0;
	right: 0;
	background: rgba(0, 0, 0, 0.5); /*半透明*/
	display: none; /*隐藏*/
}

.caozuo {
	position: relative;
	padding: 50px 0;
	display: flex;
	flex-wrap: wrap;
	background: #FFFFFF;
	height: 200px;
	top: -240px;
	width: 0;
	/*height: 0;*/
	/*justify-content: center;*/
}

.caozuo>div {
	width: 25%;
	height: 50px;
	text-align: center;
}

.plinput {
	height: 2rem;
}

.plinputdiv {
	margin-left: 1rem;
	margin-bottom: 1rem;
	margin-top: 1rem;
}

.fengediv {
	height: 1.5rem;
	width: 98%;
	background-color: gainsboro;
	margin-left: 0.3rem;
}

.ycimgdiv {
	position: fixed;
	z-index: 10001;
	top: 0; /*满屏效果*/
	bottom: 0;
	left: 0;
	right: 0;
	background: rgba(0, 0, 0, 1); /*半透明*/
	display: none; /*隐藏*/
}

.image-container {
	position: relative;
	background: #FFFFFF;
	height: 40rem;
	top: 0;
	bottom: 0;
	left: 0;
	right: 0;
	display: flex;
	align-items: center; /*这个很重要，没有它，图片将拉伸，不会在屏幕垂直居中显示*/
}

.image-container>img {
	min-width: 100%; /*保证img能基于width满屏显示，高度自动*/
	height: 100%;
	border: 1px solid black;
}

.ckpldiv {
	margin-left: 1rem;
}

.zhenpldiv {
	position: fixed;
	z-index: 10005;
	top: 0; /*满屏效果*/
	bottom: 0;
	left: 0;
	right: 0;
	display: none; /*隐藏*/
}

.xzhenpldiv {
	border-top: 1px solid black;
	position: relative;
	padding: 50px 0;
	display: flex;
	flex-wrap: wrap;
	background: #FFFFFF;
	height: 100px;
	margin-top: 57rem;
	width: 0;
}

.zhenplinput {
	width: 25rem;
	margin-left: 1rem;
	margin-right: 0.5rem;
}

.fbplbut {
	width: 10rem;
	height: 3.5rem;
}
</style>
<script type="text/javascript" src="js/tupian.js"></script>
<body>
	<header class="xfuto">
		<div style="margin-left: 0.5rem;">
			<span class="glyphicon glyphicon-menu-left" id="fanhui"></span> <span
				style="font-family: 楷体">动态</span>
		</div>
		<div class="">
			<span style="font-family: 楷体; font-size: 1.6rem;">好友动态</span>
		</div>
		<div style="margin-right: 0.5rem;" class="ppdiv">
			<span class="glyphicon glyphicon-list-alt huifuls"></span> <span
				class="glyphicon glyphicon-plus-sign addss"></span>
		</div>
	</header>
	<div id="bg">
		<!--添加说说的隐藏div-->
		<div class="caozuo">

			<div class="glyphicon glyphicon-envelope">
				<a href="addState.jsp">发表说说</a>

			</div>

		</div>

	</div>
	<div class="bj">
		<div class="rr">
			<img id="hytx" width="50rem" height="50rem" src="img/68641874_p0.png"
				class="img-circle">
		</div>
		<div class="liull">
			<table class="tbb">
				<tr>
					<td rowspan="2"><span class="glyphicon glyphicon-eye-open eys"></span></td>
					<td class="fg">今日访客:<span style="color: orange">800</span></td>

				</tr>
				<tr>
					<td class="fg">总浏览量:<span style="color: orange">1000</span></td>

				</tr>
			</table>
		</div>

		<div class="di">
			<p>
				<a>相册</a> <a>说说</a> <a>个性化</a> <a>小游戏</a> <a>小视频</a>
			</p>
		</div>
	</div>

	<div class="fengediv"></div>
	<!--用来间隔每条说说的div-->

	<div class="ssnr" id="shuoshuo111"></div>
	<div class="fengediv"></div>
	<!--用来间隔每条说说的div-->

	<div class="fengediv"></div>
	<!--用来间隔每条说说的div-->
</body>
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/remstyle.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="js/zepto.js"></script>

<script type="text/javascript">
   $(function(){
  	 load();
   });
  
function load() {
$.getJSON("DynamicstateController/cxdt",{},function(data){
	$.each(data,function(){
		$("#shuoshuo111").append("<div class='ssnrto'">+"<table class='ssnrtable'">+
				"<tr>"+"<td rowspan='2' style='padding: 1rem;'">+"<img id='sstox' width='40rem' height='40rem' src='img/5054867_191937095316_2.jpg' class='img-circle'">+"</td>"
					+"<td class='ssname'>"+this.username+"</td>"
				+"</tr>"
				+"<tr>"+
					"<td class='sssj'>"+this.statetext+"</td>"
				+"</tr>"+
			"</table>"
			+"<div class='dropdown'>"+
				"<span class='glyphicon glyphicon-menu-down czjt dropdown-toggle' id='dropdownMenu1' data-toggle='dropdown' aria-haspopup='true' aria-expanded='true'>"+"</span>"
				+  "<ul class='dropdown-menu pull-right' style='margin-top: -2rem;'  aria-labelledby='dropdownMenu1'>"+
				   " <li>"+"<a href='#'>Action</a>"+"</li>"+
				   " <li>"+"<a href='#'>Action</a>"+"</li>"+
				   " <li>"+"<a href='#'>Action</a>"+"</li>"+
				   " <li>"+"<a href='#'>Action</a>"+"</li>"+
				   " <li>"+"<a href='#'>Action</a>"+"</li>"+
				 "</ul>"+
				"</div>"+
		"</div>"+
		"<div class='ssnrzj'>"+
		"<div class='ssnrzidiv'>"+
				 "<span>"+this.statetext+"</span>"+
			"</div>"+
	         "<div class='ssnrtudiv'>"+
	         	"<img src='img/V@3V(IIAC210}VRT$W)B}JF.jpg'/>"+
	         	"<img src='img/kayn-the-shadow-reaper-1920x1200.jpg'/>"+
	         	"<img src='img/V@3V(IIAC210}VRT$W)B}JF.jpg'/>"+
	         	"<img src='img/5054867_191937095316_2.jpg'/>"+
	         	
	       " </div>"+            
		"</div>"+
		"<div class='ssgl'>"+
		"<span class='glyphicon glyphicon-heart'>"+"</span>"+
			"<span class='glyphicon glyphicon-comment'>"+"</span>"+
			"<span class='glyphicon glyphicon-share' style='margin-right: 2.5rem;''>"+"</span>"+
		"</div>"+
		"<hr width='350rem'/>"+
		"<div class='dianzdiv'>"+
			"<span class='glyphicon glyphicon-thumbs-up'>"+"</span>"+
		this.username+
		"</div>"+
		
		"<div class='ckpldiv'>"
		+"<span>我</span>"+":"+"<span>"+"2"+"</span>"+					
		"</div>"+
		
		"<div class='input-group plinputdiv'>"
		  +"<input type='text' size='40' class='form-control plinput' placeholder='评论' aria-describedby='basic-addon2'>"+
		"</div>")
		
		
	})
	
	})
}
	
   </script>
<script type="text/javascript">
   
   </script>

</html>
