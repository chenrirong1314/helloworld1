<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
<link href="css/mui.min.css" rel="stylesheet" />
<style type="text/css">
	.mui-table-view-cell>a:not(.mui-btn){
		white-space: normal;
	}
	.mui-table-view .mui-media-large .mui-media-object
	{
	    /*line-height: 180px;*/
	    max-width: 120px;
	    /*height: 120px;*/
	}
	/*重写滚动区域样式*/
	.mui-scroll-wrapper:nth-of-type(2){
		/*top:200px;*/
		/*position: absolute;*/
		top:88px;
		bottom: 50px;
	  }
</style>
<body>
	<header class="mui-bar mui-bar-nav">
	    <a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left"></a>
	    <h1 class="mui-title">添加好友</h1>
	</header>

	
	<div  style="top:45px;left: 70px;" class="mui-scroll-wrapper mui-slider-indicator mui-segmented-control mui-segmented-control-inverted">
	    <div class="mui-scroll">
	        <a class="mui-control-item mui-active">
	            找人
	        </a>
	        <a class="mui-control-item">
	          找群
	        </a>
	        <a class="mui-control-item">
	          公众号
	        </a>
	      
	    </div>
	</div>
	<div class="mui-col-xs-8" style="margin-top: 50px;margin-left: 60px;">
				<div class="mui-input-row mui-search" style="left: 1rem;top: 10px;">
				    <input  type="search" class="mui-input-clear" placeholder="请输入你要查询的内容">
	<input type="button" value="查找" style="left: 12rem;" />
				
			</div>
<script src="js/mui.min.js"></script>
<script type="text/javascript">
	mui.init();
	mui(".mui-scroll-wrapper").scroll({
		scrollY: true, //是否竖向滚动
		scrollX: false, //是否横向滚动
		startX: 0, //初始化时滚动至x
		startY: 0, //初始化时滚动至y
		indicators: true, //是否显示滚动条
		deceleration:0.0006, //阻尼系数,系数越小滑动越灵敏
		bounce: true //是否启用回弹
	  });
	  
</script>
</body>
</html>