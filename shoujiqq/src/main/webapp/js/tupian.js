 function tupian() {
		$(function(){
    		$(".caozuo").on("click","div",function(){
    		})
    		$(".czjt").click(function(){
    			if($(this).attr("class")=="glyphicon glyphicon-menu-down czjt dropdown-toggle"){
    				$(this).attr("class","glyphicon glyphicon-menu-up czjt dropdown-toggle");
    			}else{
    				$(this).attr("class","glyphicon glyphicon-menu-down czjt dropdown-toggle");
    			}
    		})
    			$(".addss").on("tap",function(){
				$("#bg").css({"display":"block"});
				$(".caozuo").animate({
					top:0,
					width:"100%"
				},200)
			});
			
			$("#bg").on("tap",function(){
				$(this).animate({
					"background":"rgba(0,0,0,0)"//变白
				},200,function(){
					$(this).css("display","none")//消失
					.css("background","rgba(0,0,0,0.5)");//变回原来的颜色 	
				});
				$(".caozuo",this).animate({
					top:"-240px"
				},200);
			});
			
			$(".caozuo").on("tap",function(){
				//阻止事件冒泡(它的父元素的click事件不会被触发)
				return false;
			});
			tapimg()
			aaa();
			gundo();
			plinput();
    	})
    	
    	function plinput(){//点击评论input弹出真正的评论div
    			$(".plinput").on("tap",function(){
				$(this).parent().siblings(".zhenpldiv").css({"display":"block"});
				$(this).parent().siblings(".zhenpldiv").find(".xzhenpldiv").animate({
					top:0,
					width:"100%"
				},200)
			});
			$(".zhenpldiv").on("tap",function(){
				$(this).animate({
					"background":"rgba(0,0,0,0)"//变白
				},200,function(){
					$(this).css("display","none")//消失
					.css("background","rgba(0,0,0,0)");//变回原来的颜色 	
				});
				$(".xzhenpldiv",this).animate({
					bottom:"-240px"
				},200);
			});
			
			$(".xzhenpldiv").on("tap",function(){
				//阻止事件冒泡(它的父元素的click事件不会被触发)
				return false;
			});
    	}
    	
    	function gundo(){//滚动变色
    		  var h3_height = $(".di").offset().top;
    		  var fg=$(".fg").offset().top;
    		  var hytx=$("#hytx").offset().top;
    		  $(window).scroll(function(){
		        var this_scrollTop = $(this).scrollTop();
		        if(this_scrollTop>h3_height ){
		        		$(".xfuto").css("background-color","rgba(90,116,182, 1)");
		        	$(".ppdiv span").css("color","white")
		        }else if(this_scrollTop>fg){
		        	$(".xfuto").css("background-color","rgba(90,116,182, 0.5)");	
		        	$(".ppdiv span").css("color","black")
		        }else if (this_scrollTop>hytx){
		        	$(".xfuto").css("background-color","rgba(90,116,182, 0.25)");
		        	$(".ppdiv span").css("color","white")
		        }else{
		        	$(".xfuto").css("background-color","rgba(0,0,0,0)");
		        	$(".ppdiv span").css("color","white")
		        }
		        
   		 });
    	}
    	
    	function tapimg(){//图片挪动
    		$(".ssnrtudiv img").each(function(){
    			$(this).on("tap",function(){
				$(this).parent().parent().siblings(".ycimgdiv").css({"display":"block"});
				$(this).parent().parent().siblings(".ycimgdiv").find(".image-container").animate({
					top:150,
					width:"100%"
				},200)
			});	
    		})
    			
			
			$(".ycimgdiv").on("tap",function(){
				$(this).animate({
					"background":"rgba(0,0,0,0)"//变白
				},200,function(){
					$(this).css("display","none")//消失
					.css("background","rgba(0,0,0,1)");//变回原来的颜色 	
				});
				$(".image-container",this).animate({
					top:"-240px"
				},200);
			});
			
			$(".image-container").on("tap",function(){
				//阻止事件冒泡(它的父元素的click事件不会被触发)
				return false;
			});
    	}
    	function aaa(){
    		$(".ssnrtudiv img").each(function(){
    		$(this).on("tap",function(){
    		var current_image_index = 0;//当前显示第几张图片
//			获得图片的个数
			var image_count = $(this).parent().parent().siblings(".ycimgdiv").find(".image-container>img").size();
			var x_start = 0;//每次点击的x初始坐标
			var margin_left = 0;
			//为图片容器添加touch事件
			$(this).parent().parent().siblings(".ycimgdiv").find(".image-container").on("touchstart",function(){
				var touch = event.changedTouches[0];
				x_start = touch.pageX;//
				console.log("===="+x_start);
				margin_left = parseInt($(this).find("img:first-of-type").css("margin-left"));
			});
			$(this).parent().parent().siblings(".ycimgdiv").find(".image-container").on("touchmove",function(){
				event.preventDefault();//阻止屏幕默认滑动事件
				var touch = event.changedTouches[0];
				var x_current = touch.clientX;
				//计算移动距离
				var len = Math.abs(x_current - x_start);
				
//				x_current < x_start：当前的x小于起始的x，表示向左
//				current_image_index < image_count -1:如果当前显示的图片的下标小于图片的总数-1，则可以向左滑动
				if(x_current < x_start && current_image_index < image_count -1 ){//向左
					$(this).find("img:first-of-type").css({
						marginLeft : margin_left - len /*起始的位置-移动的距离*/
					});
				}else if(x_current > x_start && current_image_index > 0){ //向右
					$(this).find("img:first-of-type").css({
						marginLeft : margin_left + len
					});
				}
			});
				
			$(this).parent().parent().siblings(".ycimgdiv").find(".image-container").on("touchend",function(){
				var touch = event.changedTouches[0];
				var x_current = touch.clientX;
				//计算滑动的距离
				var len = x_current - x_start;
				
				//获得屏幕的宽度
				var w = $(window).width();
//				len < 0 :表示向左
//				current_image_index < image_count -1：当前不是显示最后一张图片，可以向左滑
				if(len < 0 &&  current_image_index < image_count -1){//向左
					//如果滑动距离大于窗口距离的1/4，则自动滚动到下一张图片
					if(Math.abs(len) > w/4){
//						current_image_index=0;滑动之后 left1=-100%;
//						current_image_index=1;滑动之后 left1=-200%;
//						根据上面的逻辑,计算left值
						var left = (-current_image_index - 1)*100+"%";
//						改变第一个img的marginLeft,后面的img会自动跟随移动
						$(this).find("img:first-of-type").stop().animate({
							marginLeft : left
						},200);
						current_image_index++;  //改变当前显示的图片
					}else{//不超过1/4，当前图片退回去
						var left = (-current_image_index)*100+"%";
//						改变第一个img的marginLeft,后面的img会自动跟随移动
						$(this).find("img:first-of-type").stop().animate({
							marginLeft : left
						},200);
					}
				}else if(current_image_index > 0 && len > 0 ){//向右
					//如果滑动距离大于1/4,则自动滑动到下一张图片
					if(Math.abs(len) > w/4){
//						current_image_index=1;滑动之后 left1=-0%;
//						current_image_index=2;滑动之后 left1=-100%;
						var left = -(current_image_index - 1)*100+"%";
//						改变第一个img的marginLeft,后面的img会自动跟随移动
						$(this).find("img:first-of-type").stop().animate({
							marginLeft : left
						},200);
						current_image_index--;//改变当前图片的下标
					}else{
						//滑动距离不足1/4，则自动退回去
						var left = -(current_image_index)*100+"%";
//						改变第一个img的marginLeft,后面的img会自动跟随移动
						$(this).find("img:first-of-type").stop().animate({
							marginLeft : left
						},200);
					}
				}
			});
			
			});
			})
    	}
};
