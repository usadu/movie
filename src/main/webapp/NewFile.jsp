<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/css/bootstrap.min.css">
  <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://cdn.staticfile.org/popper.js/1.12.5/umd/popper.min.js"></script>
  <script src="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath }/js/jquery-3.3.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/amazeui.min.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/main.css" />

</head>
<body>
<<<<<<< .mine
	<a class="aaa" href="#">dddd</a>
	<textarea rows="100px" cols=""></textarea>
=======
<button class="btn btn-primary" data-toggle="modal" data-target="#jsModal">充值</button>
<div id="show"></div>
	<!-- 模态框1 结算页面 -->
  <!-- 模态框1 结算页面 -->
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
        <div class="modal-body">
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
>>>>>>> .r109
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
		
		/* $('#uc_01 li:eq(3)').click(function() {
			$('.tr_rechoth').show();
			$('.tr_rechoth').find("input").attr('required', 'true')
			$('.rechnum').text('10.00元');
		}) */
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
		
		$(".depositTime").change(function(){
			var paynum=$(this).attr("title");
			//alert(getNowFormatDate());
			var VIPdate;
			if(paynum==1){
				VIPdate=getNowFormatDate1();
			}else if(paynum==4){
				VIPdate=getNowFormatDate2();
			}else if(paynum==12){
				VIPdate=getNowFormatDate3();
			}
			//alert(VIPdate);
			//alert(paynum);
			$("#payBtn").on("click",function(){
				alert(VIPdate);
				var userId=${sessionScope.user.userId};
				alert(userId);
				$.ajax({
					url:"${pageContext.request.contextPath}/usersController/payVIP",
					type:"POST",
					data:{userId:userId,VIPdate:VIPdate},
					dataType:"String",
					success:function(data){
						alert(data);
					},
					error:function(data){
						alert("失败");
					}
				});
			});
		});
		function getNowFormatDate1() {
		    var date = new Date();
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
		
	})
	
	

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