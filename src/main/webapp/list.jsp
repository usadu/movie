<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>一部电影(OneMovie)--个人中心</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/faqstyle.css" type="text/css" media="all" />
<link href="${pageContext.request.contextPath}/css/medile.css" rel='stylesheet' type='text/css' />
<link href="${pageContext.request.contextPath}/css/single.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/contactstyle.css" type="text/css" media="all" />
<!-- news-css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/news-css/news.css" type="text/css" media="all" />
<!-- //news-css -->
<!-- list-css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/list-css/list.css" type="text/css" media="all" />
<!-- //list-css -->
<!-- font-awesome icons -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css" />
<!-- //font-awesome icons -->
<!-- js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-2.1.4.min.js"></script>

<!-- 会员充值 -->
<script src="${pageContext.request.contextPath }/js/jquery-3.3.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/amazeui.min.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/main.css" />


<!-- //js -->
<!---<link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700italic,700,400italic,300italic,300' rel='stylesheet' type='text/css'>--->
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/move-top.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
<!-- tables -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/list-css/table-style.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/list-css/basictable.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/list-js/jquery.basictable.min.js"></script>
 <script type="text/javascript">
    $(document).ready(function() {
      $('#table').basictable();

      $('#table-breakpoint').basictable({
        breakpoint: 768
      });
	   $('#table-breakpoint1').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint2').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint3').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint4').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint5').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint6').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint7').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint8').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint9').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint10').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint11').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint12').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint13').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint14').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint15').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint16').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint17').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint18').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint19').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint20').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint21').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint22').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint23').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint24').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint25').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint26').basictable({
        breakpoint: 768
      });
    });
  </script>
<!-- //tables -->
</head>
	
<body>
<!-- header -->
		<div class="header">
		<div class="container">
			<div class="w3layouts_logo">
				<a href="index.html"><h1>One<span>Movies</span></h1></a>
			</div>
			<form action="${pageContext.request.contextPath}/Genres/queryMovieByLike" method="post">
			<div class="w3_search">
				
					<input type="text" name="movieName" placeholder="请输入电影名称" required="">
					<input type="submit" value="搜索">
			
			</div>
			</form>
			<div class="w3l_sign_in_register">
			<c:choose>
			<c:when test="${sessionScope.user == null}">
			<ul>
					<li><i class="fa fa-phone" aria-hidden="true"></i> (+000) 123 345 653</li>
					<li><a href="#" data-toggle="modal" data-target="#myModal">登录</a></li>
					 
			</ul>
			
			</c:when>
			
			<c:when test="${sessionScope.user != null}">
			
				<ul>
					<li><i class="fa fa-phone" aria-hidden="true"></i> (+000) 123 345 653</li>
				    <p style="font-size:15px;font-weight:Bolder">欢迎${sessionScope.user.userName }登录</p>
					<li><a href="${pageContext.request.contextPath}/usersController/exit" data-toggle="modal" data-target="">退出</a></li>
					 
				</ul>
			</c:when>	
			</c:choose>	
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
							<li class="active"><a href="${pageContext.request.contextPath}/index.jsp">首页</a></li>
							
							<li><a href="${pageContext.request.contextPath}/genres.jsp">影库 </a></li>
						<li><a href="${pageContext.request.contextPath}/genres.jsp">类型</a></li>
							
							<li><a href="${pageContext.request.contextPath}/list.jsp">个人中心</a></li>
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
<!-- faq-banner -->
	<div class="faq">
		<h4 class="latest-text w3_faq_latest_text w3_latest_text">个人用户中心</h4>
			<div class="container">
				
				<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
						<div id="myTabContent" class="tab-content">
							<div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">
								<div class="agile-news-table">
									
									<table id="table-breakpoint">
										<thead>
										  <tr>
											<th>用户编号</th>
											<th>头像</th>
											<th>用户名</th>
											<th>用户密码</th>
											<th>昵称</th>
											<th>性别</th>
											<th>用户状态</th>
											<th>VIP时间</th>
											<th>操作</th>
											<th></th>
										  </tr>
										</thead>
										<tbody>
										  <tr>
											<td>${sessionScope.user.userId }</td>
										<c:choose>
										<c:when test="${sessionScope.user.userImg == null }">
														<td>
							<img  src="${pageContext.request.contextPath }/images/20190111102823.png" width="50" height="50" style="vertical-align:middle;">
						</td>
										</c:when>
										<c:when test="${sessionScope.user.userImg != null }">
											<td>
							<img  src=${sessionScope.user.userImg } width="50" height="50" style="vertical-align:middle;">
						</td>
										</c:when>
										</c:choose>
										
											<td>${sessionScope.user.userName }</td>
											<td>${sessionScope.user.userPwd }</td>
											<td>${sessionScope.user.userNickname }</td>
											<td>${sessionScope.user.userSex }</td>
											<c:choose>
											<c:when test="${sessionScope.user.userStatus ==1}">
											<td>VIP用户</td>
											</c:when>
											<c:when test="${sessionScope.user.userStatus ==0}">
											<td>普通用户</td>
											</c:when>
											</c:choose>
											<td>${sessionScope.user.vipTime }</td>
											
											<td><a href="#" data-toggle="modal" data-target="#myModal2"><button class="btn btn-success">修改</button></a>
										    <td><a><button class="btn btn-success"  data-toggle="modal" data-target="#jsModal">充值</button></a>
										  </tr>
										 
										</tbody>
									</table>
								</div>
							</div>
							</div>
						</div>
				</div>
			</div>
 <!--模态窗口用户修改部分  -->
 
 <div class="modal video-modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div>
				<section>
					<div class="modal-body">
						<div class="w3_login_module">
							<div class="module form-module">
							  <div class="toggle"><i class="fa fa-times fa-pencil"></i>
								
							  </div>
							  <div class="form">
								<h3>个人信息修改</h3>
								<form action="${pageContext.request.contextPath}/usersController/update" method="post" enctype="multipart/form-data">
								 用户编号: <input type="text" name="userId" value="${user.userId }" readonly="true"/>	
								 用户名: <input type="text" name="userName" value="${user.userName }"   required=""/>
								 旧密码:<input type="text" name="userPwd2" value="${user.userPwd }" disabled="disabled" required=""/>
								 新密码:<input type="text" name="userPwd" value=""  required=""/>
								  昵称: <input type="text" name="userNickname" value="${user.userNickname }"   required=""/>	
								  性别:<input type="text" name="userSex" value="${user.userSex }"   required=""/>
								  用户状态:<input type="text" name="userStatus" value="${user.userStatus }" readonly="true" /> 
								  会员时间:<input type="text" name="vipTime" value="${user.vipTime }"  disabled="disabled"  required=""/>
								  上传头像:<input type="file" name="myfiles" />
								  <input type="hidden" name="userImg" value="${user.userImg}">
								  <div id="slideBar">
								 
								  <script type="text/javascript">
        var dataList = ["0","1"];
        var options = {
            dataList: dataList,
            success:function(){  
                console.log("show");  
            },
            fail: function(){
                console.log("fail");  
            }
        };
        SliderBar("slideBar", options);
    </script>
								  </div>
								  <input type="submit" value="确认">
								<!--   <input type="reset"  value="重置"> 重置此模态没有加样式--> 
								</form>
							  </div>

							</div>
						</div>
					</div>
				</section>
			</div>
		</div>
	</div>
<!-- //faq-banner -->
<!-- footer -->
	<div class="footer" >
		<div class="container">
			<div class="w3ls_footer_grid">
				<div class="col-md-6 w3ls_footer_grid_left">
					<div class="w3ls_footer_grid_left1">
						
					
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
			
		</div>
	</div>
<!-- //footer -->
<!-- Bootstrap Core JavaScript -->
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
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

<!-- 模态框1 会员充值模态框 -->
  <div class="modal fade" id="jsModal">
    <div class="modal-dialog">
      <div class="modal-content">
        <!-- 模态框头部 -->
        <div class="modal-header">
          <div class="tr_rechtext">
						<p class="te_retit"><img src="${pageContext.request.contextPath }/images/coin.png" alt="" />会员充值中心</p>
					</div>
        </div>
   
        <!-- 模态框主体 -->
        <div class="modal-body" id="showPay">
          	<form action="" class="am-form" id="doc-vld-msg">
			<div class="tr_rechbox">
				<div class="tr_rechhead">
					<img src="${sessionScope.user.userImg}" />
					<p>充值帐号：
						<a>${sessionScope.user.userName}</a>
					</p>
					<div class="tr_rechheadcion">
						<img src="${pageContext.request.contextPath }/images/coin.png" alt="" />
						<span>VIP到期时间：<span></span></span>
					</div>
				</div>
				<div class="tr_rechli am-form-group">
					<ul class="ui-choose am-form-group" id="uc_01">
						<li>
							<label class="am-radio-inline">
									<input type="radio"  value="" name="docVlGender" class="depositTime" title="1" required data-validation-message="请选择一项充值额度"> 一个月（￥10）
								</label>
						</li>
						<li>
							<label class="am-radio-inline">
									<input type="radio" name="docVlGender" class="depositTime" title="4" data-validation-message="请选择一项充值额度"> 一季度（￥36）
								</label>
						</li>

						<li>
							<label class="am-radio-inline">
									<input type="radio" name="docVlGender" class="depositTime" title="12" data-validation-message="请选择一项充值额度"> 一年（￥88）
								</label>
						</li>
						<!--<li>
							<label class="am-radio-inline">
									<input type="radio" name="docVlGender" data-validation-message="请选择一项充值额度"> 其他金额
								</label>
						</li>-->
					</ul>
					<!--<span>1招兵币=1元 10元起充</span>-->
				</div>
				<div class="tr_rechoth am-form-group">
					<span>其他金额：</span>
					<input type="number" min="10" max="10000" value="10.00元" class="othbox" data-validation-message="充值金额范围：10-10000元" />
					<!--<p>充值金额范围：10-10000元</p>-->
				</div>
				<div class="tr_rechcho am-form-group">
					<span>充值方式：</span>
					<label class="am-radio">
							<input type="radio" name="radio1" value="" data-am-ucheck required data-validation-message="请选择一种充值方式"><img src="${pageContext.request.contextPath }/images/wechatpay.png">
						</label>
					<label class="am-radio" style="margin-right:30px;">
							<input type="radio" name="radio1" value="" data-am-ucheck data-validation-message="请选择一种充值方式"><img src="${pageContext.request.contextPath }/images/zfbpay.png">
						</label>
				</div>
				<div class="tr_rechnum">
					<span>应付金额：</span>
					<p class="rechnum">0.00元</p>
				</div>
				<span id="number"></span>
			</div>
			<div class="tr_paybox">
				<input type="button" value="确认支付" id="payBtn" class="tr_pay am-btn" />
				<input type="button" value="取消" class="tr_pay am-btn"  data-dismiss="modal"/>
			</div>
		</form>
        </div>
        
      </div>
    </div>
  </div>

</body>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/amazeui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/ui-choose.js"></script>
<script type="text/javascript">
	// 将所有.ui-choose实例化
	$('.ui-choose').ui_choose();
	// uc_01 ul 单选
	var uc_01 = $('#uc_01').data('ui-choose'); // 取回已实例化的对象
	uc_01.click = function(index, item) {
		console.log('click', index, item.text())
	}
	uc_01.change = function(index, item) {
		console.log('change', index, item.text())
	}
	$(function() {
		
		$('#uc_01 li:eq(3)').click(function() {
			$('.tr_rechoth').show();
			$('.tr_rechoth').find("input").attr('required', 'true')
			$('.rechnum').text('10.00元');
		});
		$('#uc_01 li:eq(0)').click(function() {
			$('.tr_rechoth').hide();
			$('.rechnum').text('10.00元');
			$('.othbox').val('');
		});
		$('#uc_01 li:eq(1)').click(function() {
			$('.tr_rechoth').hide();
			$('.rechnum').text('36.00元');
			$('.othbox').val('');
		});
		$('#uc_01 li:eq(2)').click(function() {
			$('.tr_rechoth').hide();
			$('.rechnum').text('108.00元');
			$('.othbox').val('');
		});
		$(document).ready(function() {
			$('.othbox').on('input propertychange', function() {
				var num = $(this).val();
				$('.rechnum').html(num + ".00元");
			});
		});
		var date = new Date();
		$(".depositTime").change(function(){
			var paynum=$(this).attr("title");
			
			//alert(getNowFormatDate());
			var VIPdate;
			if(paynum==1){
				VIPdate=getNowFormatDate1(date);
				date=VIPdate;
			}else if(paynum==4){
				VIPdate=getNowFormatDate2(date);
				date=VIPdate;
			}else if(paynum==12){
				VIPdate=getNowFormatDate3(date);
				date=VIPdate;
			}
			//alert(VIPdate);
			//alert(paynum);
			$("#payBtn").on("click",function(){
				var userId=${sessionScope.user.userId};
				//alert(userId);
				//alert(VIPdate);
				//confirm(是否确定充值?){
					$.ajax({
						url:"${pageContext.request.contextPath }/usersController/payVIP",
						type:"GET",
						data:{userId:userId,VIPdate:VIPdate},
						dataType:"String",
						success:function(data){
							$("#showPay").html('<div><img src="${pageContext.request.contextPath }/images/timg (4).jpg"  style="float:left;width:150px;heigth:150px;margin-left:100px"/>'+
									'<div style="float:left;margin:50px 50px 50px"><h1>已成功充值vip</h1>'+
									'<p5>将在下次登录刷新vip信息</p5></div></div><div class="tr_paybox">'+
									'<input type="button" value="确定" class="tr_pay am-btn"   data-dismiss="modal"/></div>');
						},
						error:function(){
							$("#showPay").html('<div><img src="${pageContext.request.contextPath }/images/timg (4).jpg"  style="float:left;width:150px;heigth:150px;margin-left:100px"/>'+
									'<div style="float:left;margin:50px 50px 50px"><h1>已成功充值vip</h1>'+
									'<p5>将在下次登录刷新vip信息</p5></div></div><div class="tr_paybox">'+
									'<input type="button" value="确定" class="tr_pay am-btn"  data-dismiss="modal"/></div>');
						
						}
					});
				//}
				
			});
		});
		function getNowFormatDate1(date) {
		    
		    var seperator1 = "-";
		    var seperator2 = ":";
		    var month = date.getMonth() + 2;
		    var strDate = date.getDate();
		    if (month >= 1 && month <= 9) {
		        month = "0" + month;
		    }
		    if (strDate >= 0 && strDate <= 9) {
		        strDate = "0" + strDate;
		    }
		    var currentdate = date.getFullYear() + seperator1 + month + seperator1 + strDate
		            + " " + date.getHours() + seperator2 + "0"+date.getMinutes()
		            + seperator2 + date.getSeconds(); 
		    return(currentdate); 
		} 
		function getNowFormatDate2() {
		    var date = new Date();
		    var seperator1 = "-";
		    var seperator2 = ":";
		    var month = date.getMonth() + 5;
		    var strDate = date.getDate();
		    if (month >= 1 && month <= 9) {
		        month = "0" + month;
		    }
		    if (strDate >= 0 && strDate <= 9) {
		        strDate = "0" + strDate;
		    }
		    var currentdate = date.getFullYear() + seperator1 + month + seperator1 + strDate
		            + " " + date.getHours() + seperator2 + "0"+date.getMinutes()
		            + seperator2 + date.getSeconds(); 
		    return(currentdate); 
		} 
		function getNowFormatDate3() {
		    var date = new Date();
		    var seperator1 = "-";
		    var seperator2 = ":";
		    var month = date.getMonth() + 1;
		    var strDate = date.getDate();
		    if (month >= 1 && month <= 9) {
		        month = "0" + month;
		    }
		    if (strDate >= 0 && strDate <= 9) {
		        strDate = "0" + strDate;
		    }
		    var currentdate = date.getFullYear()+1 + seperator1 + month + seperator1 + strDate
		            + " " + date.getHours() + seperator2 + "0"+date.getMinutes()
		            + seperator2 + date.getSeconds(); 
		    return(currentdate); 
		} 
		
	});
	
	

	$(function() {
		$('#doc-vld-msg').validator({
			onValid: function(validity) {
				$(validity.field).closest('.am-form-group').find('.am-alert').hide();
			},
			onInValid: function(validity) {
				var $field = $(validity.field);
				var $group = $field.closest('.am-form-group');
				var $alert = $group.find('.am-alert');
				// 使用自定义的提示信息 或 插件内置的提示信息
				var msg = $field.data('validationMessage') || this.getValidationMessage(validity);

				if(!$alert.length) {
					$alert = $('<div class="am-alert am-alert-danger"></div>').hide().
					appendTo($group);
				}
				$alert.html(msg).show();
			}
		});
	});
</script>
</html>