<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Horror</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="${pageContext.request.contextPath }/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="${pageContext.request.contextPath }/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="${pageContext.request.contextPath }/css/medile.css" rel='stylesheet' type='text/css' />
<link href="${pageContext.request.contextPath }/css/single.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/contactstyle.css" type="text/css" media="all" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/faqstyle.css" type="text/css" media="all" />
<!-- news-css -->
<link rel="stylesheet" href="news-${pageContext.request.contextPath }/css/news.css" type="text/css" media="all" />
<!-- //news-css -->
<!-- list-css -->
<link rel="stylesheet" href="list-${pageContext.request.contextPath }/css/list.css" type="text/css" media="all" />
<!-- //list-css -->
<!-- font-awesome icons -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/font-awesome.min.css" />
<!-- //font-awesome icons -->
<!-- js -->
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-2.1.4.min.js"></script>

<script src="${pageContext.request.contextPath }/js/jquery-3.3.1.min.js"></script>
<!-- //js -->
<!---<link href='http://${pageContext.request.contextPath }/fonts/.googleapis.com/css?family=Roboto+Condensed:400,700italic,700,400italic,300italic,300' rel='stylesheet' type='text/css'>--->
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="${pageContext.request.contextPath }/js/move-top.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
<link href="${pageContext.request.contextPath }/css/owl.carousel.css" rel="stylesheet" type="text/css" media="all">
<script src="${pageContext.request.contextPath }/js/owl.carousel.js"></script>
<style type="text/css">
	.mod_filter_wrap{background:#fff}
	.mod_filter_box{display:none;margin-top:14px;margin-bottom:6px;border-top:2px solid #ff920b;box-shadow:0 1px 7px rgba(0,0,0,.1)}
	.mod_filter_box.current{display:block;margin:-20px auto 20px;width:1380px;}
	.mod_filter_box .filter_box_inner{padding:14px 0 1px;border:1px solid #ddd;border-top:none}
	.mod_filter_box .filter_line{position:relative;line-height:20px;margin-bottom:10px}
	.mod_filter_box .label{position:absolute;left:0;top:0;display:block;width:73px;height:20px;text-align:center;line-height:20px;text-indent:4px;color:#999}
	.mod_filter_box .filter_content{margin-left:67px;margin-right:10px;font-size:0px;padding:0}
	.mod_filter_box .filter_content .item{display:inline-block;vertical-align:top;padding:0 10px;font-size:14px;color:#666;margin-bottom:5px}
	.mod_filter_box .filter_content .sYear{display:inline-block;vertical-align:top;padding:0 10px;font-size:14px;color:#666;margin-bottom:5px}
	.mod_filter_box .filter_content .sType{display:inline-block;vertical-align:top;padding:0 10px;font-size:14px;color:#666;margin-bottom:5px}
	.mod_filter_box .filter_content .sArea{display:inline-block;vertical-align:top;padding:0 10px;font-size:14px;color:#666;margin-bottom:5px}
	.mod_filter_box .filter_content .sVip{display:inline-block;vertical-align:top;padding:0 10px;font-size:14px;color:#666;margin-bottom:5px}
	.mod_filter_box .filter_content .item:hover{color:#ff920b}
	.mod_filter_box .filter_content .sYear:hover{color:#ff920b}
	.mod_filter_box .filter_content .sType:hover{color:#ff920b}
	.mod_filter_box .filter_content .sArea:hover{color:#ff920b}
	.mod_filter_box .filter_content .sVip:hover{color:#ff920b}
	.mod_filter_box .filter_content .current,.mod_filter_box .filter_content .current:hover{background:#ff920b;border-radius:10px;color:#fff}
	.mod_filter_box .filter_more{position:relative;line-height:20px;margin-bottom:9px}
	.mod_filter_box .filter_more .label{width:87px;text-align:left;text-indent:15px}
	.mod_filter_box .filter_more .filter_content{margin-left:79px}
	.mod_filter_box .label{font-size:14px;margin-top:-3px}
</style>
<script>
	$(document).ready(function() { 
		$("#owl-demo").owlCarousel({
	 
		  autoPlay: 3000, //Set AutoPlay to 3 seconds
	 
		  items : 5,
		  itemsDesktop : [640,5],
		  itemsDesktopSmall : [414,4]
	 
		});
	 
	}); 
</script>
<script type="text/javascript">
	$(function(){
		
		/* 初始显示类型和地区分类 */
		$.ajax({
			url:"Genres/AllType",
			type:"POST",
			dataType:"json",
			success:function(data){
				//显示类别
				showGenres(data);
			}
		});
		
		$.ajax({
			url:"Genres/AllArea",
			type:"POST",
			dataType:"json",
			success:function(data){
				//显示类别
				showArea(data);
			}
		});	
		
		
		function showGenres(data){
			$.each(data,function(i,type){
				$("#showGenres").append('<ul class="multi-column-dropdown"><li style="float:left;margin-top:10px;margin-left:10px;"><a href="javascript:void(0)" class="byType" title="'+type.typeId+'">'+type.typeName+'</a></li></ul>'); 
				
			});
			/* 显示电影 */
			$(".byType").click(function(){
				var typeid= $(this).attr("title");
				//alert(typeid);
				$.ajax({
					url:"Genres/MovieByType",
					type:"POST",
					data:{typeid:typeid},
					dataType:"json",
					success:function(data){
						$("#showMovie").html("");
						showMovie1(data);
					}
				});
			});
		}
	
		function showArea(data){
			$.each(data,function(i,area){
				$("#showArea").append('<ul class="multi-column-dropdown"><li style="float:left;margin-top:10px;margin-left:10px;"><a href="javascript:void(0)" class="byArea" title="'+area.areaId+'">'+area.areaName+'</a></li></ul>'); 
				
			});
			$(".byArea").click(function(){
				var areaid= $(this).attr("title");
				alert(areaid);
				$.ajax({
					url:"Genres/MovieByArea",
					type:"POST",
					data:{areaid:areaid},
					dataType:"json",
					success:function(data){
						$("#showMovie").html("");
						showMovie2(data);
					}
				});
			});
		}
		/* end初始显示类型和地区分类 */
		
		function showMovie1(data){
			$.each(data,function(i,movie){
			$("#showMovie").append('<div class="col-md-2 w3l-movie-gride-agile"><a href="single.html" class="hvr-shutter-out-horizontal">'+
					'<img src="'+movie.movieImg+'" title="电影海报" alt="电影海报" />'+
					'<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div></a>'+
					'<div class="mid-1"><div class="w3l-movie-text"><h6><a href="single.html">'+movie.movieName+'</a></h6></div>'+
					'<div class="mid-2"><p>'+movie.datetime+'</p>'+
					'<div class="block-stars"><ul class="w3l-ratings"><li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>'+
					'<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>'+
					'<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>'+
					'<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>'+
					'<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li></ul></div>'+
					'<div class="clearfix"></div></div></div><div class="ribben"><p>NEW</p></div></div>');
		
			});
		}
		function showMovie2(data){
			$.each(data,function(i,movie){
			$("#showMovie").append('<div class="col-md-2 w3l-movie-gride-agile"><a href="single.html" class="hvr-shutter-out-horizontal">'+
					'<img src="'+movie.movieImg+'" title="电影海报" alt="电影海报" />'+
					'<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div></a>'+
					'<div class="mid-1"><div class="w3l-movie-text"><h6><a href="single.html">'+movie.movieName+'</a></h6></div>'+
					'<div class="mid-2"><p>'+movie.datetime+'</p>'+
					'<div class="block-stars"><ul class="w3l-ratings"><li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>'+
					'<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>'+
					'<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>'+
					'<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>'+
					'<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li></ul></div>'+
					'<div class="clearfix"></div></div></div><div class="ribben"><p>NEW</p></div></div>');
		
			});
		}
		/* end显示电影 */
		
		
		
	});
	
	
	
</script> 
<script type="text/javascript">
	$(function(){
		
		
	/* 多条件查询电影 */
		var stype=-1;
		var sarea=-1;
		var svip=-1;
		var syear=-1;
		$(".sType").click(function(){
			//alert("aa");
			stype=$(this).attr("title");
			$(".sType").prop("class", "sType");
			$(this).prop("class", "sType current");
			alert(stype+sarea+svip+syear);
			searchMovie();
		});
		$(".sArea").click(function(){
			sarea=$(this).attr("title");
			$(".sArea").prop("class", "sArea");
			$(this).prop("class", "sArea current");
			//alert(myear);
			searchMovie();
		});
		$(".sVip").click(function(){
			svip=$(this).attr("title");
			$(".sVip").prop("class", "sVip");
			$(this).prop("class", "sVip current");
			//alert(myear);
			searchMovie();
		});
		$(".sYear").click(function(){
			//alert("Aaa");
			syear=$(this).attr("title");
			$(".sYear").prop("class", "sYear");
			$(this).prop("class", "sYear current");
			//alert(myear);
			searchMovie();
		});
		
		function searchMovie(){
			$.ajax({ 
				url:"Genres/searchMovieByMore",
				type:"POST",
				data:{stype:stype,sarea:sarea,svip:svip,syear:syear},
				dataType:"json",
				success:function(data){
					$("#showMovie").html("");
					showMovie2(data);
				}
			});
		}
		
		function showMovie2(data){
			$.each(data,function(i,movie){
			$("#showMovie").append('<div class="col-md-2 w3l-movie-gride-agile"><a href="single.html" class="hvr-shutter-out-horizontal">'+
					'<img src="'+movie.movieImg+'" title="电影海报" alt="电影海报" />'+
					'<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div></a>'+
					'<div class="mid-1"><div class="w3l-movie-text"><h6><a href="single.html">'+movie.movieName+'</a></h6></div>'+
					'<div class="mid-2"><p>'+movie.datetime+'</p>'+
					'<div class="block-stars"><ul class="w3l-ratings"><li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>'+
					'<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>'+
					'<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>'+
					'<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>'+
					'<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li></ul></div>'+
					'<div class="clearfix"></div></div></div><div class="ribben"><p>NEW</p></div></div>');
		
			});
		}
		/* end多条件查询电影 */
		
		
		
	});
</script>

</head>
	
<body>
<!-- header -->
	<div class="header">
		<div class="container">
			<div class="w3layouts_logo">
				<a href="index.html"><h1>One<span>Movies</span></h1></a>
			</div>
			<div class="w3_search">
				<form action="Genres/searchMovie" method="post">
					<input type="text" id="movieName" name="movieName" placeholder="搜电影">
					<input type="submit" value="Go">
				</form>
			</div>
			<div class="w3l_sign_in_register">
				<ul>
					<li><i class="fa fa-phone" aria-hidden="true"></i> (+000) 123 345 653</li>
					<li><a href="#" data-toggle="modal" data-target="#myModal">Login</a></li>
				</ul>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //header -->
<!-- bootstrap-pop-up -->
	<div class="modal video-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					Sign In & Sign Up
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div>
				<section>
					<div class="modal-body">
						<div class="w3_login_module">
							<div class="module form-module">
							  <div class="toggle"><i class="fa fa-times fa-pencil"></i>
								<div class="tooltip">Click Me</div>
							  </div>
							  <div class="form">
								<h3>Login to your account</h3>
								<form action="#" method="post">
								  <input type="text" name="Username" placeholder="Username" required="">
								  <input type="password" name="Password" placeholder="Password" required="">
								  <input type="submit" value="Login">
								</form>
							  </div>
							  <div class="form">
								<h3>Create an account</h3>
								<form action="#" method="post">
								  <input type="text" name="Username" placeholder="Username" required="">
								  <input type="password" name="Password" placeholder="Password" required="">
								  <input type="email" name="Email" placeholder="Email Address" required="">
								  <input type="text" name="Phone" placeholder="Phone Number" required="">
								  <input type="submit" value="Register">
								</form>
							  </div>
							  <div class="cta"><a href="#">Forgot your password?</a></div>
							</div>
						</div>
					</div>
				</section>
			</div>
		</div>
	</div>
	<script>
		$('.toggle').click(function(){
		  // Switches the Icon
		  $(this).children('i').toggleClass('fa-pencil');
		  // Switches the forms  
		  $('.form').animate({
			height: "toggle",
			'padding-top': 'toggle',
			'padding-bottom': 'toggle',
			opacity: "toggle"
		  }, "slow");
		});
	</script>
<!-- //bootstrap-pop-up -->
<!-- nav -->
	<div class="movies_nav">
		<div class="container">
			<nav class="navbar navbar-default">
				<div class="navbar-header navbar-left">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
					<nav>
						<ul class="nav navbar-nav">
							<li class="w3_home_act"><a href="index.html">Home</a></li>
							<li class="dropdown active">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" id="genres">Genres <b class="caret"></b></a>
								<ul class="dropdown-menu multi-column columns-3">
									<li>
										<div class="col-sm-4" id="showGenres">
											<!-- ajax显示 -->
										</div>
										<div class="clearfix"></div>
									</li>
								</ul>
							</li>
							<li><a href="series.html">tv - series</a></li>
							<li><a href="news.html">news</a></li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">Country <b class="caret"></b></a>
								<ul class="dropdown-menu multi-column columns-3">
									<li>
										<div class="col-sm-4" id="showArea">
											<!-- ajax显示 -->
										</div>
										
										<div class="clearfix"></div>
									</li>
								</ul>
							</li>
							<li><a href="short-codes.html">Short Codes</a></li>
							<li><a href="list.html">A - z list</a></li>
						</ul>
					</nav>
				</div>
			</nav>	
		</div>
	</div>
<!-- //nav -->
<div class="general_social_icons">
	<nav class="social">
		<ul>
			<li class="w3_twitter"><a href="#">Twitter <i class="fa fa-twitter"></i></a></li>
			<li class="w3_facebook"><a href="#">Facebook <i class="fa fa-facebook"></i></a></li>
			<li class="w3_dribbble"><a href="#">Dribbble <i class="fa fa-dribbble"></i></a></li>
			<li class="w3_g_plus"><a href="#">Google+ <i class="fa fa-google-plus"></i></a></li>				  
		</ul>
  </nav>
</div>
<div class="w3l-agile-horror">

		<!-- 搜索栏 -->
		<div class="mod_filter_wrap">
			<div class="mod_filter_box  current" r-class="{current: isOpen}">
				<!-- 默认展开，收起去掉 current -->
				<div class="filter_box_inner">

					<div class="filter_line">
						<span class="label">类&nbsp;&nbsp;&nbsp;型：</span>
						<div class="filter_content">

							<a href="javascript:void(0)" title="-1" class="sType current">全部</a>
							<a href="javascript:void(0)" title="1" class="sType">喜剧</a>
							<a href="javascript:void(0)" title="2" class="sType">动作</a>
							<a href="javascript:void(0)" title="3" class="sType" >恐怖</a>
							<a href="javascript:void(0)" title="4" class="sType">爱情</a>
							<a href="javascript:void(0)" title="5" class="sType">动漫</a>
							<a href="javascript:void(0)" title="6" class="sType" >科技</a>
							<a href="javascript:void(0)" title="7" class="sType" >历史</a>
							<a href="javascript:void(0)" title="8" class="sType">音乐</a>
							<a href="javascript:void(0)" title="9" class="sType">战争</a>
							<a href="javascript:void(0)" title="10" class="sType" >体育</a>
						</div>
					</div>

					<div class="filter_line">
						<span class="label">地&nbsp;&nbsp;&nbsp;区：</span>
						<div class="filter_content">

							<a href="javascript:void(0)" title="-1" class="sArea current">全部</a>
							<a href="javascript:void(0)" title="1" class="sArea">内地</a>
							<a href="javascript:void(0)" title="2" class="sArea">港台</a>
							<a href="javascript:void(0)" title="3" class="sArea" >美国</a>
							<a href="javascript:void(0)" title="4" class="sArea">日本</a>
							<a href="javascript:void(0)" title="5" class="sArea">韩国</a>
							<a href="javascript:void(0)" title="6" class="sArea" >泰国</a>
							<a href="javascript:void(0)" title="7" class="sArea" >西班牙</a>
							<a href="javascript:void(0)" title="8" class="sArea">印度</a>
							<a href="javascript:void(0)" title="9" class="sArea">法国</a>
							<a href="javascript:void(0)" title="10" class="sArea" >英国</a>

						</div>
					</div>


					<div class="filter_line">
						<span class="label">年&nbsp;&nbsp;&nbsp;份：</span>
						<div class="filter_content">

							<a href="javascript:void(0)" title="-1" id="year" class="sYear current">全部</a>
							<a href="javascript:void(0)" title="2019" id="year" class="sYear">2019</a>
							<a href="javascript:void(0)" title="2018" id="year" class="sYear">2018</a>
							<a href="javascript:void(0)" title="2017" id="year" class="sYear" >2017</a>
							<a href="javascript:void(0)" title="2016" id="year" class="sYear">2016</a>
							<a href="javascript:void(0)" title="1" id="year" class="sYear">更早</a>

						</div>
					</div>

					<div class="filter_line">
						<span class="label">资&nbsp;&nbsp;&nbsp;费：</span>
						<div class="filter_content">

							<a href="javascript:void(0)" title="-1" class="sVip current">全部</a>
							<a href="javascript:void(0)" title="0" class="sVip">免费</a>
							<a href="javascript:void(0)" title="1" class="sVip">会员</a>

						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 搜索框 -->
			
       <!-- /w3l-medile-movies-grids -->
			<div class="w3l-medile-movies-grids">
				<!-- /movie-browse-agile -->
				      <div class="movie-browse-agile">
					     <!--/browse-agile-w3ls -->
						<div class="browse-agile-w3ls general-w3ls">
								<div class="tittle-head">
									<h4 class="latest-text">Horror Movies </h4>
									<div class="container">
										<div class="agileits-single-top">
											<ol class="breadcrumb">
											  <li><a href="index.html">Home</a></li>
											  <li class="active">Horror</li>
											</ol>
										</div>
									</div>
								</div>
								<div class="container">
									<!-- /latest-movies1 -->
							    <div class="browse-inner-come-agile-w3" id="showMovie">
							    
							   			<!-- ajax显示 -->
							   	<c:forEach items="${requestScope.movieList}" var="movie">
								<div class="col-md-2 w3l-movie-gride-agile">
									<a href="single.html" class="hvr-shutter-out-horizontal"><img
										src="images/m7.jpg" title="album-name" alt=" " />
										<div class="w3l-action-icon">
											<i class="fa fa-play-circle" aria-hidden="true"></i>
										</div> </a>
									<div class="mid-1">
										<div class="w3l-movie-text">
											<h6>
												<a href="single.html">${movie.movieName}</a>
											</h6>
										</div>
										<div class="mid-2">
	
											<p>${movie.datetime}</p>
											<div class="block-stars">
												<ul class="w3l-ratings">
													<li><a href="#"><i class="fa fa-star"
															aria-hidden="true"></i></a></li>
													<li><a href="#"><i class="fa fa-star"
															aria-hidden="true"></i></a></li>
													<li><a href="#"><i class="fa fa-star"
															aria-hidden="true"></i></a></li>
													<li><a href="#"><i class="fa fa-star-half-o"
															aria-hidden="true"></i></a></li>
													<li><a href="#"><i class="fa fa-star-o"
															aria-hidden="true"></i></a></li>
	
	
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
	
									</div>
									<div class="ribben two">
										<p>NEW</p>
									</div>
								</div>
							</c:forEach>
							<div class="clearfix"> </div>
								</div>
							<!-- //latest-movies1 -->
				<!--//browse-agile-w3ls -->
						<div class="blog-pagenat-wthree">
							<ul>
								<li><a class="frist" href="#">Prev</a></li>
								<li><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a class="last" href="#">Next</a></li>
							</ul>
						</div>
					</div>
				<!-- //movie-browse-agile -->
				<!--body wrapper start-->
						<div class="review-slider">
						 <h4 class="latest-text">Movie Reviews</h4>
						 <div class="container">
						 	<div class="w3_agile_banner_bottom_grid">
								<div id="owl-demo" class="owl-carousel owl-theme">
									<div class="item">
										<div class="w3l-movie-gride-agile w3l-movie-gride-agile1">
											<a href="single.html" class="hvr-shutter-out-horizontal"><img src="${pageContext.request.contextPath }/images/m13.jpg" title="album-name" class="img-responsive" alt=" " />
												<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
											</a>
											<div class="mid-1 agileits_w3layouts_mid_1_home">
												<div class="w3l-movie-text">
													<h6><a href="single.html">Citizen Soldier</a></h6>							
												</div>
												<div class="mid-2 agile_mid_2_home">
													<p>2016</p>
													<div class="block-stars">
														<ul class="w3l-ratings">
															<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
														</ul>
													</div>
													<div class="clearfix"></div>
												</div>
											</div>
											<div class="ribben">
												<p>NEW</p>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="w3l-movie-gride-agile w3l-movie-gride-agile1">
											<a href="single.html" class="hvr-shutter-out-horizontal"><img src="${pageContext.request.contextPath }/images/m11.jpg" title="album-name" class="img-responsive" alt=" " />
												<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
											</a>
											<div class="mid-1 agileits_w3layouts_mid_1_home">
												<div class="w3l-movie-text">
													<h6><a href="single.html">X-Men</a></h6>							
												</div>
												<div class="mid-2 agile_mid_2_home">
													<p>2016</p>
													<div class="block-stars">
														<ul class="w3l-ratings">
															<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														</ul>
													</div>
													<div class="clearfix"></div>
												</div>
											</div>
											<div class="ribben">
												<p>NEW</p>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="w3l-movie-gride-agile w3l-movie-gride-agile1">
											<a href="single.html" class="hvr-shutter-out-horizontal"><img src="${pageContext.request.contextPath }/images/m12.jpg" title="album-name" class="img-responsive" alt=" " />
												<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
											</a>
											<div class="mid-1 agileits_w3layouts_mid_1_home">
												<div class="w3l-movie-text">
													<h6><a href="single.html">Greater</a></h6>							
												</div>
												<div class="mid-2 agile_mid_2_home">
													<p>2016</p>
													<div class="block-stars">
														<ul class="w3l-ratings">
															<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														</ul>
													</div>
													<div class="clearfix"></div>
												</div>
											</div>
											<div class="ribben">
												<p>NEW</p>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="w3l-movie-gride-agile w3l-movie-gride-agile1">
											<a href="single.html" class="hvr-shutter-out-horizontal"><img src="${pageContext.request.contextPath }/images/m7.jpg" title="album-name" class="img-responsive" alt=" " />
												<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
											</a>
											<div class="mid-1 agileits_w3layouts_mid_1_home">
												<div class="w3l-movie-text">
													<h6><a href="single.html">Light B/t Oceans</a></h6>							
												</div>
												<div class="mid-2 agile_mid_2_home">
													<p>2016</p>
													<div class="block-stars">
														<ul class="w3l-ratings">
															<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														</ul>
													</div>
													<div class="clearfix"></div>
												</div>
											</div>
											<div class="ribben">
												<p>NEW</p>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="w3l-movie-gride-agile w3l-movie-gride-agile1">
											<a href="single.html" class="hvr-shutter-out-horizontal"><img src="${pageContext.request.contextPath }/images/m8.jpg" title="album-name" class="img-responsive" alt=" " />
												<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
											</a>
											<div class="mid-1 agileits_w3layouts_mid_1_home">
												<div class="w3l-movie-text">
													<h6><a href="single.html">The BFG</a></h6>							
												</div>
												<div class="mid-2 agile_mid_2_home">
													<p>2016</p>
													<div class="block-stars">
														<ul class="w3l-ratings">
															<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														</ul>
													</div>
													<div class="clearfix"></div>
												</div>
											</div>
											<div class="ribben">
												<p>NEW</p>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="w3l-movie-gride-agile w3l-movie-gride-agile1">
											<a href="single.html" class="hvr-shutter-out-horizontal"><img src="${pageContext.request.contextPath }/images/m9.jpg" title="album-name" class="img-responsive" alt=" " />
												<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
											</a>
											<div class="mid-1 agileits_w3layouts_mid_1_home">
												<div class="w3l-movie-text">
													<h6><a href="single.html">Central Intelligence</a></h6>							
												</div>
												<div class="mid-2 agile_mid_2_home">
													<p>2016</p>
													<div class="block-stars">
														<ul class="w3l-ratings">
															<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
														</ul>
													</div>
													<div class="clearfix"></div>
												</div>
											</div>
											<div class="ribben">
												<p>NEW</p>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="w3l-movie-gride-agile w3l-movie-gride-agile1">
											<a href="single.html" class="hvr-shutter-out-horizontal"><img src="${pageContext.request.contextPath }/images/m10.jpg" title="album-name" class="img-responsive" alt=" " />
												<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
											</a>
											<div class="mid-1 agileits_w3layouts_mid_1_home">
												<div class="w3l-movie-text">
													<h6><a href="single.html">Don't Think Twice</a></h6>							
												</div>
												<div class="mid-2 agile_mid_2_home">
													<p>2016</p>
													<div class="block-stars">
														<ul class="w3l-ratings">
															<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														</ul>
													</div>
													<div class="clearfix"></div>
												</div>
											</div>
											<div class="ribben">
												<p>NEW</p>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="w3l-movie-gride-agile w3l-movie-gride-agile1">
											<a href="single.html" class="hvr-shutter-out-horizontal"><img src="${pageContext.request.contextPath }/images/m17.jpg" title="album-name" class="img-responsive" alt=" " />
												<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
											</a>
											<div class="mid-1 agileits_w3layouts_mid_1_home">
												<div class="w3l-movie-text">
													<h6><a href="single.html">Peter</a></h6>							
												</div>
												<div class="mid-2 agile_mid_2_home">
													<p>2016</p>
													<div class="block-stars">
														<ul class="w3l-ratings">
															<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														</ul>
													</div>
													<div class="clearfix"></div>
												</div>
											</div>
											<div class="ribben">
												<p>NEW</p>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="w3l-movie-gride-agile w3l-movie-gride-agile1">
											<a href="single.html" class="hvr-shutter-out-horizontal"><img src="${pageContext.request.contextPath }/images/m15.jpg" title="album-name" class="img-responsive" alt=" " />
												<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
											</a>
											<div class="mid-1 agileits_w3layouts_mid_1_home">
												<div class="w3l-movie-text">
													<h6><a href="single.html">Godâs Compass</a></h6>							
												</div>
												<div class="mid-2 agile_mid_2_home">
													<p>2016</p>
													<div class="block-stars">
														<ul class="w3l-ratings">
															<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														</ul>
													</div>
													<div class="clearfix"></div>
												</div>
											</div>
											<div class="ribben">
												<p>NEW</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						<!--body wrapper end-->
			   </div>	
		   </div>
		</div>
	      <!-- //w3l-medile-movies-grids -->
	</div>
	</div>	
</div>
<!-- //comedy-w3l-agileits -->
<!-- footer -->
	<div class="footer">
		<div class="container">
			<div class="w3ls_footer_grid">
				<div class="col-md-6 w3ls_footer_grid_left">
					<div class="w3ls_footer_grid_left1">
						<h2>Subscribe to us</h2>
						<div class="w3ls_footer_grid_left1_pos">
							<form action="#" method="post">
								<input type="email" name="email" placeholder="Your email..." required="">
								<input type="submit" value="Send">
							</form>
						</div>
					</div>
				</div>
				<div class="col-md-6 w3ls_footer_grid_right">
					<a href="index.html"><h2>One<span>Movies</span></h2></a>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="col-md-5 w3ls_footer_grid1_left">
				<p>Copyright &copy; 2016.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="æ¨¡æ¿ä¹å®¶">æ¨¡æ¿ä¹å®¶</a> - Collect from <a href="http://www.cssmoban.com/" title="ç½é¡µæ¨¡æ¿" target="_blank">ç½é¡µæ¨¡æ¿</a></p>
			</div>
			<div class="col-md-7 w3ls_footer_grid1_right">
				<ul>
					<li>
						<a href="genres.html">Movies</a>
					</li>
					<li>
						<a href="faq.html">FAQ</a>
					</li>
					<li>
						<a href="horror.html">Action</a>
					</li>
					<li>
						<a href="genres.html">Adventure</a>
					</li>
					<li>
						<a href="comedy.html">Comedy</a>
					</li>
					<li>
						<a href="icons.html">Icons</a>
					</li>
					<li>
						<a href="contact.html">Contact Us</a>
					</li>
				</ul>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //footer -->
<!-- Bootstrap Core JavaScript -->
<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
<script>
$(document).ready(function(){
    $(".dropdown").hover(            
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideDown("fast");
            $(this).toggleClass('open');        
        },
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideUp("fast");
            $(this).toggleClass('open');       
        }
    );
});
</script>
<!-- //Bootstrap Core JavaScript -->
<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->
</body>
</html>